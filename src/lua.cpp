#include "lua.hpp"
#include "mod.hpp"
#include "logger.hpp"
#include "constants.hpp"
#include "runtime_lua.hpp"

#include <regex>
#include <fstream>
#include <sstream>

#include <map>
#include <ranges>
#include <filesystem>
#include <string_view>

namespace chalchiu
{
    namespace fs = std::filesystem;

    struct lua::impl
    {
        fs::path mod_dir;
        sol::state_view state;

      public:
        std::vector<std::unique_ptr<mod>> mods;
        std::map<std::string, fs::path> mod_paths; //? mod id (folder name) -> mod folder
    };

    namespace
    {
        //? Resolves mods/<mod>/<file> for the settings API, refusing anything outside the mod folder
        std::optional<fs::path> mod_file_path(const std::map<std::string, fs::path> &mod_paths, const std::string &id,
                                              const std::string &file)
        {
            static const std::regex valid_file{R"(^[A-Za-z0-9_\-][A-Za-z0-9_.\-]*$)"};

            auto it = mod_paths.find(id);
            if (it == mod_paths.end() || !std::regex_match(file, valid_file) || file.find("..") != std::string::npos)
            {
                return std::nullopt;
            }

            return it->second / file;
        }
    } // namespace

    lua *lua::m_instance = nullptr;

    lua::lua(lua_State *state)
    {
        logger::get()->info("[lua] Setting up state with 0x{:X}", reinterpret_cast<std::uintptr_t>(state));
        m_impl = std::make_unique<impl>(impl{.state = state});

        logger::get()->info("[lua] Memory used: {}", m_impl->state.memory_used());

        m_impl->mod_dir = fs::current_path() / "mods";

        if (!fs::exists(m_impl->mod_dir))
        {
            fs::create_directories(m_impl->mod_dir);
        }

        m_impl->mod_dir = fs::absolute(m_impl->mod_dir);

        logger::get()->info("[lua] Starting initialization, mod directory is '{}'", m_impl->mod_dir.string());

        setup_handlers();
        setup_state();

        logger::get()->info("[lua] Handlers and Hooks setup!");

        setup_mods();

        std::string old_title = m_impl->state["native"]["getProperty"]("windowTitleText");
        auto new_title = fmt::format("{} | chalchiu v{} | {} mod(s) loaded", old_title, version, m_impl->mods.size());

        m_impl->state["native"]["setProperty"]("windowTitleText", new_title);

        logger::get()->info("[lua] Finished initialization");
    }

    lua::~lua() = default;

    namespace
    {
        lua_CFunction previous_panic = nullptr;

        int panic(lua_State *state)
        {
            const auto *message = lua_tostring(state, -1);
            logger::get()->error("[panic] Panic: '{}'", message ? message : "<unknown>");

            //? Hand over to the game's own panic handler so behaviour stays the same
            return previous_panic ? previous_panic(state) : 0;
        }
    } // namespace

    void lua::setup_handlers()
    {
        using exception_t = sol::optional<const std::exception &>;

        m_impl->state.set_exception_handler([](auto *state, exception_t exception, sol::string_view description) {
            const auto error = exception ? exception->what() : description;
            logger::get()->error("[exception] An exception occurred: '{}'", error);
            return sol::stack::push(state, description);
        });

        previous_panic = lua_atpanic(m_impl->state.lua_state(), panic);
    }

    void lua::setup_state()
    {
        m_impl->state["chalchiu"] = m_impl->state.create_table();

        //? Logging from Lua. Only takes strings, so it is safe to call from any coroutine.
        m_impl->state["chalchiu"]["log"] = [](const std::string &level, const std::string &message) {
            if (level == "error")
                logger::get()->error("{}", message);
            else if (level == "warn")
                logger::get()->warn("{}", message);
            else if (level == "debug")
                logger::get()->debug("{}", message);
            else
                logger::get()->info("{}", message);
        };

        //? Setup "mods" function
        m_impl->state.new_usertype<mod>("name", sol::no_constructor,     //
                                        "name", &mod::name,              //
                                        "version", &mod::version,        //
                                        "author", &mod::author,          //
                                        "description", &mod::description, //
                                        "id", &mod::id                   //
        );

        m_impl->state["chalchiu"]["mods"] = [this]() {
            using std::views::transform;
            auto rtn = m_impl->mods | transform([](const auto &x) { return x.get(); });

            return std::vector<mod *>{rtn.begin(), rtn.end()};
        };

        //? Files inside a mod's own folder (used by the settings API). Strings only, safe from any coroutine.
        m_impl->state["chalchiu"]["read_mod_file"] = [this](const std::string &id,
                                                             const std::string &file) -> sol::optional<std::string> {
            auto path = mod_file_path(m_impl->mod_paths, id, file);
            if (!path || !fs::is_regular_file(*path))
            {
                return sol::nullopt;
            }

            std::ifstream stream{*path, std::ios::binary};
            std::stringstream content;
            content << stream.rdbuf();

            return content.str();
        };

        m_impl->state["chalchiu"]["write_mod_file"] = [this](const std::string &id, const std::string &file,
                                                              const std::string &content) {
            auto path = mod_file_path(m_impl->mod_paths, id, file);
            if (!path)
            {
                logger::get()->error("[mods] Refusing to write '{}' for mod '{}'", file, id);
                return false;
            }

            //? Write to a temporary file first so a crash can't leave a half-written settings file
            auto temp = *path;
            temp += ".tmp";

            {
                std::ofstream stream{temp, std::ios::binary | std::ios::trunc};
                stream << content;
                if (!stream)
                {
                    return false;
                }
            }

            std::error_code ec;
            fs::rename(temp, *path, ec);

            if (ec)
            {
                logger::get()->error("[mods] Could not save '{}': {}", path->string(), ec.message());
                return false;
            }

            return true;
        };

        //? The rest of the runtime (detour, hooks, require/print wrappers, settings, hotkeys) is Lua,
        //? see src/runtime.lua for why.
        auto result = m_impl->state.safe_script(runtime_lua, sol::script_pass_on_error, "@chalchiu/runtime.lua");

        if (!result.valid())
        {
            sol::error error = result;
            logger::get()->error("[lua] Failed to set up chalchiu runtime: {}", error.what());
        }
    }

    void lua::setup_mods()
    {
        auto dir = fs::recursive_directory_iterator(m_impl->mod_dir);

        for (const auto &file : dir)
        {
            if (!file.is_regular_file())
                continue;

            const auto &path = file.path();

            if (path.filename() != "init.lua")
                continue;

            logger::get()->info("[mods] Loading '{}'", path.string());
            m_impl->mod_paths[path.parent_path().filename().string()] = path.parent_path();

            std::unique_ptr<chalchiu::mod> mod;

            try
            {
                mod = mod::load(path, m_impl->state);
            }
            catch (const std::exception &e)
            {
                logger::get()->error("[mods] Error while loading '{}': {}", path.string(), e.what());
            }

            if (!mod)
            {
                logger::get()->info("[mods] Failed to load '{}'", path.string());
                continue;
            }

            m_impl->mods.emplace_back(std::move(mod));
        }

        logger::get()->info("[mods] Loaded {} mod(s)", m_impl->mods.size());
    }

    void lua::init(lua_State *state)
    {
        if (m_instance)
        {
            return;
        }

        //? Leaked on purpose: the game closes its Lua state before this DLL is unloaded, so releasing
        //? our Lua references (sol objects) in a destructor at exit would write into freed memory
        //? and crash the game on quit.
        m_instance = new lua{state};
    }
} // namespace chalchiu
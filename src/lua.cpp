#include "lua.hpp"
#include "mod.hpp"
#include "logger.hpp"
#include "constants.hpp"

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
    };

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
                                        "description", &mod::description //
        );

        m_impl->state["chalchiu"]["mods"] = [this]() {
            using std::views::transform;
            auto rtn = m_impl->mods | transform([](const auto &x) { return x.get(); });

            return std::vector<mod *>{rtn.begin(), rtn.end()};
        };

        //? detour, hooks and the print/require wrappers are written in Lua on purpose:
        //? the game calls require/print from coroutines, and Lua closures always run on the calling
        //? coroutine. Calling back into Lua from C++ through references bound to the main thread
        //? (what this used to do) can corrupt the Lua stack and crash the game.
        auto result = m_impl->state.safe_script(R"lua(
            local chalchiu = chalchiu
            local log = chalchiu.log
            local tostring, select, pcall, xpcall, type = tostring, select, pcall, xpcall, type
            local concat = table.concat
            local traceback = debug and debug.traceback

            chalchiu.detour = function(table, func, detour)
                local original = table[func]

                table[func] = function(...)
                    return detour(original, ...)
                end

                return function()
                    table[func] = original
                end
            end

            -- hooks: callbacks run once per module, the first time it is required after registration
            local hooks = {}
            local applied = setmetatable({}, { __mode = "k" })

            chalchiu.hooks = {
                add = function(module, callback, callee)
                    log("info", "[hooks] '" .. tostring(callee or "<unknown>") .. "' registered hook for '" .. tostring(module) .. "'")
                    hooks[module] = hooks[module] or {}
                    hooks[module][#hooks[module] + 1] = { callback = callback, callee = callee }
                end,
            }

            local function run_hooks(module, value)
                local list = hooks[module]
                if not list then
                    return
                end

                local key = (type(value) == "table" or type(value) == "userdata") and value or module
                local done = applied[key]
                if not done then
                    done = {}
                    applied[key] = done
                end

                for i = 1, #list do
                    local hook = list[i]
                    if not done[hook] then
                        done[hook] = true
                        log("debug", "[require] Invoking hook from '" .. tostring(hook.callee) .. "' for '" .. module .. "'")

                        local ok, err
                        if traceback then
                            ok, err = xpcall(function() return hook.callback(value) end, traceback)
                        else
                            ok, err = pcall(hook.callback, value)
                        end

                        if not ok then
                            log("error", "[require] Hook from '" .. tostring(hook.callee) .. "' for '" .. module .. "' failed: " .. tostring(err))
                        end
                    end
                end
            end

            local original_require = require
            require = function(module, ...)
                if not hooks[module] then
                    return original_require(module, ...)
                end
                local value = original_require(module, ...)
                run_hooks(module, value)
                return value
            end

            local function redact(text)
                if text:find("authentication.prod", 1, true) or text:find("user-blob-storage", 1, true) then
                    return "<redacted>"
                end
                return text
            end

            local original_print = print
            print = function(...)
                local parts = {}
                for i = 1, select("#", ...) do
                    parts[i] = redact(tostring((select(i, ...))))
                end
                log("info", "[print] " .. concat(parts, ", "))
                return original_print(...)
            end
        )lua",
                                                   sol::script_pass_on_error);

        if (!result.valid())
        {
            sol::error error = result;
            logger::get()->error("[lua] Failed to set up chalchiu functions: {}", error.what());
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
#include <atomic>
#include <exception>
#include <filesystem>
#include <windows.h>
#include <lime/module.hpp>
#include <lime/hooks/detour.hpp>

#include "lua.hpp"
#include "logger.hpp"
#include "constants.hpp"

using chalchiu::logger;

lua_State *lua_state;
std::unique_ptr<lime::detour> detour_corona_init;
std::unique_ptr<lime::detour> detour_module_loader;

void hk_module_loader(lua_State *state, void *param_2, int param_3, unsigned int param_4)
{
    logger::get()->debug("[module_loader] 0x{:X} (thread {})", reinterpret_cast<std::uintptr_t>(state),
                         GetCurrentThreadId());

    if (!lua_state)
    {
        lua_state = state;
    }

    return detour_module_loader->get_original<decltype(hk_module_loader) *>()(state, param_2, param_3, param_4);
}

bool hk_corona_init(int param, HWND *hwnd)
{
    auto original = detour_corona_init->get_original<decltype(hk_corona_init) *>()(param, hwnd);

    logger::get()->debug("[corona_init] Runtime started (thread {})", GetCurrentThreadId());

    detour_corona_init.reset();
    detour_module_loader.reset();

    try
    {
        chalchiu::lua::init(lua_state);
    }
    catch (const std::exception &e)
    {
        logger::get()->error("[init] Failed to initialize: {}", e.what());
    }

    return original;
}

//? Logs fatal CPU exceptions (access violations etc.) with the module and offset they happened in,
//? so a crash leaves a trace in chalchiu.log instead of the game silently closing.
LONG CALLBACK crash_logger(PEXCEPTION_POINTERS info)
{
    static std::atomic<int> logged{0};

    const auto code = info->ExceptionRecord->ExceptionCode;

    switch (code)
    {
    case EXCEPTION_ACCESS_VIOLATION:
    case EXCEPTION_ILLEGAL_INSTRUCTION:
    case EXCEPTION_INT_DIVIDE_BY_ZERO:
    case EXCEPTION_PRIV_INSTRUCTION:
    case EXCEPTION_STACK_OVERFLOW:
    case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:
        break;
    default:
        return EXCEPTION_CONTINUE_SEARCH;
    }

    if (logged++ >= 5)
    {
        return EXCEPTION_CONTINUE_SEARCH;
    }

    auto *address = info->ExceptionRecord->ExceptionAddress;

    HMODULE module{};
    char module_path[MAX_PATH] = "<unknown>";

    if (GetModuleHandleExA(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
                           reinterpret_cast<LPCSTR>(address), &module))
    {
        GetModuleFileNameA(module, module_path, MAX_PATH);
    }

    const auto offset = reinterpret_cast<std::uintptr_t>(address) - reinterpret_cast<std::uintptr_t>(module);
    const auto name = std::filesystem::path{module_path}.filename().string();

    logger::get()->error("[crash] Exception 0x{:08X} at {}+0x{:X} (thread {})", static_cast<unsigned>(code), name,
                         offset, GetCurrentThreadId());

    if (code == EXCEPTION_ACCESS_VIOLATION && info->ExceptionRecord->NumberParameters >= 2)
    {
        const auto *kind = info->ExceptionRecord->ExceptionInformation[0] == 0   ? "reading"
                           : info->ExceptionRecord->ExceptionInformation[0] == 1 ? "writing"
                                                                                 : "executing";

        logger::get()->error("[crash] Access violation {} address 0x{:08X}", kind,
                             static_cast<unsigned>(info->ExceptionRecord->ExceptionInformation[1]));
    }

    return EXCEPTION_CONTINUE_SEARCH;
}

extern "C" BOOL APIENTRY DllMain(HANDLE, DWORD reason, LPVOID)
{
    if (reason != DLL_PROCESS_ATTACH)
    {
        return TRUE;
    }

    CHAR file[MAX_PATH];
    GetModuleFileNameA(nullptr, file, MAX_PATH);

    auto corona = lime::module::get("CoronaLabs.Corona.Native.dll");

    if (!corona)
    {
        logger::get()->warn("No CoronaSDK [{}] found ({})", corona.has_value(), file);
        return TRUE;
    }

    logger::get()->info("Loading Chalchiu (v{}) [{}]", chalchiu::version, file);
    logger::get()->info("Found CoronaSDK at 0x{:X}", corona->get_start());

    auto module_loader = corona->get_symbol("CoronaLuaRegisterModuleLoader");
    auto corona_init = corona->get_symbol("CoronaWin32RuntimeRun");

    if (!module_loader || !corona_init)
    {
        logger::get()->error("No 'CoronaWin32RuntimeRun' [{}] or 'CoronaLuaRegisterModuleLoader' [{}] found",
                             corona_init, module_loader);

        return TRUE;
    }

    logger::get()->info("Found 'CoronaLuaRegisterModuleLoader' at 0x{:X}", module_loader);

    std::set_terminate([] {
        logger::get()->error("[crash] Unhandled exception!");

        try
        {
            std::rethrow_exception(std::current_exception());
        }
        catch (const std::exception &e)
        {
            logger::get()->error("[crash] [{}] {}", typeid(e).name(), e.what());
        }
        catch (...)
        {
            logger::get()->error("[crash] Unknown exception '{}'", typeid(std::current_exception()).name());
        }

        std::abort();
    });

    AddVectoredExceptionHandler(0, crash_logger);

    detour_module_loader = lime::detour::create(module_loader, hk_module_loader);
    detour_corona_init = lime::detour::create(corona_init, hk_corona_init);

    return TRUE;
}
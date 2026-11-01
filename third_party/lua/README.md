# Lua headers and import library

Coromon runs on Solar2D, which ships a **modified Lua 5.1** as `lua.dll`.
Since Solar2D's late-2023 profiler changes (coronalabs/corona#645), its `lua_State`
and `global_State` structs have extra fields, so a stock Lua linked into chalchiu
cannot safely touch the game's Lua state.

chalchiu therefore calls the game's own `lua.dll` for everything:

- `lua.def` lists the exports of `lua.dll` from Coromon 1.5.4 (Solar2D 2026.3729).
  CMake turns it into an import library with `dlltool`.
- `include/lua.h`, `lauxlib.h`, `lualib.h` come from Solar2D's
  `external/lua-5.1.3/src` (MIT, Lua.org / Solar2D).
- `include/luaconf.h` is stock Lua 5.1.1, because Solar2D's version redefines
  `fopen`/`remove`/`rename` on Windows. ABI-relevant settings match Solar2D.

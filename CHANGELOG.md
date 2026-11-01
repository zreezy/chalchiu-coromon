# Changelog

Releases are published automatically when the version in `CMakeLists.txt` changes.
The section for that version below becomes the release notes.

## [3.0.0] - 2026-11-01

First release of this fork, updated for **Coromon v1.5.4** (Solar2D 2026.3729).
Based on [Curve/chalchiu](https://github.com/Curve/chalchiu) v2.3 (2023).

### Loader
- Works with Coromon v1.5.4: chalchiu now uses the game's own `lua.dll`. Solar2D changed its
  internal Lua structures in late 2023, which made the old loader crash on startup.
- A mod that fails to load no longer crashes the game; the error goes to `chalchiu.log` and the
  mod is skipped.
- Fixed a crash when quitting the game.
- Hooks, `require`/`print` wrappers and `detour` now run in Lua, so they are safe when the game
  calls them from coroutines. Hooks run once per module instead of on every `require`.
- Crashes are logged with the module and offset they happened in.

### Mods
- **Mod Info** (v1.2): the "Loaded Mods" popup works on v1.5.4, and the pause menu has an info
  button next to the gold counter again.
- **Coromon Trainer** (v1.2): updated for the new debug settings layout; messages use the game's
  non-blocking toast (the old dialog could lock up the game); game speed uses the game's debug
  time scale; "Max Out Coromon" is now "Max Out Squad" and maxes the whole squad at once.
- **Randomize Evolution**: removed. Randomized evolutions are a built-in Custom Difficulty option
  in the game now. If you have `mods/random_evolution`, delete it.

### For modders
- `docs/game/1.5.4`: generated reference of the game's modules, functions, settings and globals.
- `tools/gamedocs`: generate docs for new game versions, diff versions, and check mods for things
  that no longer exist.

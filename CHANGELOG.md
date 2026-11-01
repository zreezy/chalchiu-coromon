# Changelog

Releases are published automatically when the version in `CMakeLists.txt` changes.
The section for that version below becomes the release notes.

## [3.2.1] - 2026-11-01

### Mod Info (v1.5)
- Clearer settings pages. The blue button now says what it does for the selected row
  (**Settings**, **Turn on** / **Turn off**, **Next**, **Set key**) instead of showing a checkmark.
- New red button to close the mod list, or to go back from a settings page to the list (`Esc` still
  works). Going back keeps the mod you came from selected.
- Settings pages say that changes are saved automatically, and choice settings list every option
  with the current one in brackets.
- The **Mods** button text on the title screen is centred properly.

## [3.2.0] - 2026-11-01

### Mod Info (v1.4)
- New **Mods** button in the top-right corner of the title screen that opens the Loaded Mods popup.
- New settings: turn the title screen button off, and an optional hotkey to open the mod list.
- Fixed the Loaded Mods popup layout: long mod descriptions pushed the mod list out of view and the
  text overflowed above the popup.

### Coromon Trainer (v1.4)
- Shorter description (the hotkeys are listed on its settings page).

### Docs
- README/wiki: how to find your game version (Settings → General → App version), and how to update
  without losing your mod settings.
- The wiki is generated from the README and the game reference (`gamedocs.py wiki`).

## [3.1.0] - 2026-11-01

### New mods
- **Potent Alert**: notification and sound when a potent or perfect Coromon appears.
- **XP & Gold Boost**: multiplies battle XP (2x by default) and trainer gold. No effect in online battles.
- **Text Speed+**: dialogue text faster than the game's 3x maximum (6x by default).
- **Area Encounter Info**: press `numPad0` in the overworld to see the Coromon in your current area.

### Mod settings
- Every mod's settings can now be changed in-game: open **Loaded Mods**, select a mod and press the
  check button. Settings are saved to `mods/<mod>/settings.lua`.
- All trainer hotkeys can be rebound in-game (press the check button, then the new key).

### Coromon Trainer (v1.3)
- New toggles: skip trainer battles (`numPad5`), no energy cost (`numPad6`), fast battle intros
  (`numPad7`), hide world interface (`numPad8`), no move damage (unbound by default).
- Give items with `numPad9`; the item and amount are settings. Gold per press is a setting too.
- Battle cheats are switched off automatically when an online battle starts, and can't be turned on
  during one.

### Mod Info (v1.3)
- Settings page for every mod, and its own settings: show the mod list on startup, show the pause
  menu button.

### For modders
- New `settings.define(...)` and `hotkeys.add(...)` APIs (see README).
- Hooks registered for a module the game has already loaded now apply immediately, instead of
  waiting for the next `require`.
- The Lua part of the loader now lives in `src/runtime.lua`.
- Offline tests (`lua5.1 tests/run.lua`) for the runtime and all mods, run in CI.

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

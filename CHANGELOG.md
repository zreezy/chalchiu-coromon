# Changelog

Releases are published automatically when the version in `CMakeLists.txt` changes.
The section for that version below becomes the release notes.

## [3.4.1] - 2026-11-01

New here? chalchiu adds mods to Coromon v1.5.4: an in-game mod menu with settings for every mod (**Mods** button on
the title screen), a trainer (game speed, noclip, catch all, gold, items and more), Potent Alert, XP & Gold Boost,
Text Speed+ and Area Encounter Info. From this version on, the mod menu tells you when there's an update.

### Fixes
- Hotkeys no longer fire while you're typing a name (your character, a Coromon, your online profile), so numpad
  digits there don't add gold and so on.
- `chalchiu.log` starts fresh every time the game starts, instead of growing forever. The previous session is kept
  as `chalchiu.previous.log`.
- The update check only ever opens GitHub links.

### Docs
- Release notes now include the Steam Deck launch option and a link to the wiki.

## [3.4.0] - 2026-11-01

### Update notifications (Mod Info v1.7)
- When the game starts, Mod Info checks GitHub for a newer chalchiu release. If there is one, you get a message on
  the title screen and an **Update available!** row at the top of the mod list, whose **Download** button opens the
  release page.
- One request to GitHub per game start, nothing else is sent. Turn it off with the new **Check for updates**
  setting. If the check fails (offline, rate limited) it's only noted in `chalchiu.log`.
- Releases before this one can't tell you about updates, so this is the last one you need to find by hand.

### For modders
- `chalchiu.version` holds the loader version (e.g. `"3.4.0"`).

## [3.3.0] - 2026-11-01

### Area Encounter Info (v1.1)
- `numPad0` now opens a list of the Coromon in your area: dex number and name, whether you've caught or seen
  them, and roughly how common they are. Select one to read its dex description.
- The **Pictures** button opens the game's map popup, like before. The new **View** setting makes the key open
  the game's popup directly.
- New **Show undiscovered Coromon** setting (off by default, spoilers): reveals names in the list and pictures
  instead of silhouettes in the game's popup.

### Coromon Trainer (v1.5)
- The gold amount, item and item amount settings are now right below the keys they belong to, and are named
  **Add gold: amount**, **Give item: item** and **Give item: amount**. Saved settings are kept.

### Docs
- Title screen screenshot showing the **Mods** button in the README and on the Mods page.

## [3.2.2] - 2026-11-01

### Mod Info (v1.6)
- Clicking outside the popup no longer closes it or goes back. Use the red button, `Esc` or `Backspace`.
- `Backspace`, `X` and `Left Shift` (the game's Back keys) now go back too. `Enter` still goes back like in the
  game's own popups, because the game treats it as a Start key, like `Esc`.

### More detailed log
- `chalchiu.log` now records Mod Info activity (which popup opened and from where, selected rows, button presses,
  and whether you went back with the red button, a Start key or a Back key), every setting change and save,
  hotkey presses, key rebinding, and the messages mods show on screen.
- The game version is logged at startup.

### For modders
- New `log.debug/info/warn/error(...)` for mods, tagged with the mod's folder name.

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

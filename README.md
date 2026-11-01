<hr>

<div align="center"> 
    <img src="assets/logo.png" height=312/>
</div>

<div align="center"> 

### chalchiu

Modding support for Solar2D Games  

*Designed for [Coromon](https://store.steampowered.com/app/1218210/Coromon/)*

</div>

---

> **Warning**  
> Please do not report any issues that may've been caused through this project to the official game developers as they will not assist you with broken games / saves when you are using mods.  
> Please [open an issue here](https://github.com/zreezy/chalchiu-coromon/issues/new) instead!

> **Note**  
> This is a fork of [Curve/chalchiu](https://github.com/Curve/chalchiu) by Curve, updated to work with Coromon v1.5.4 (2026) and maintained by Zreezy.  
> Licensed under the [MIT License](LICENSE).

# Introduction

chalchiu adds mod support to [Coromon](https://store.steampowered.com/app/1218210/Coromon/), and should also work for
other Solar2D games. This fork supports **Coromon v1.5.4**.

📖 **[Wiki](https://github.com/zreezy/chalchiu-coromon/wiki)**: full install guide, every mod and its settings, writing your own mods, and a reference
of the game's code. The same pages are in [docs](docs) in this repository.

# Usage

1. Check your game version in **Settings → General → App version** (bottom of the list). It should be **v1.5.4**.
2. Download the zip from the [latest release](https://github.com/zreezy/chalchiu-coromon/releases/latest).
3. Unzip everything into your game folder, next to `coromon.exe`
   (Steam: right-click Coromon → **Manage** → **Browse local files**).
4. Start the game. The window title shows the chalchiu version, and the **Loaded Mods** list opens.

To **update**, unzip a new release over the old files. Your mod settings are kept. To **remove** chalchiu, delete
`iphlpapi.dll` and the `mods` folder. More detail and troubleshooting: [Installation](https://github.com/zreezy/chalchiu-coromon/wiki/Installation).

# Mods

| Mod | What it does |
|---|---|
| **Mod Info** | Lists the installed mods and lets you change their settings in-game (title screen **Mods** button) |
| **Coromon Trainer** | Hotkeys for game speed, noclip, catch all, skipping battles, maxing your squad, gold, items and more |
| **Potent Alert** | Notification and sound when a potent or perfect Coromon appears |
| **XP & Gold Boost** | Multiplies battle XP (2x by default) and trainer gold. No effect online |
| **Text Speed+** | Dialogue text faster than the game's 3x maximum (6x by default) |
| **Area Encounter Info** | Press `numPad0` to see which Coromon live in your current area |

Every setting and hotkey can be changed in-game: **Mods** → select a mod → **Settings**. Changes save automatically.
Default keys, settings and screenshots: [Mods](https://github.com/zreezy/chalchiu-coromon/wiki/Mods).

# For Modders

A mod is a folder in `mods` with an `init.lua`. chalchiu gives mods `hooks`, `detour`, `settings` and `hotkeys`, and
the wiki has a generated reference of every game module, function and setting per game version.
See [Writing Mods](https://github.com/zreezy/chalchiu-coromon/wiki/Writing-Mods) and the [Game Reference](https://github.com/zreezy/chalchiu-coromon/wiki/Game-Reference).

# Releasing

Bump the version in [CMakeLists.txt](CMakeLists.txt), add a matching section to [CHANGELOG.md](CHANGELOG.md) and push
to `main`. GitHub Actions builds, tests and publishes the release. Details, including updating the wiki:
[Releasing](https://github.com/zreezy/chalchiu-coromon/wiki/Releasing).

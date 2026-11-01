# Writing Mods

chalchiu loads Lua mods into Coromon (and should work for other Solar2D games). The mods in
[scripts/coromon](../scripts/coromon) are good examples to start from.

## Getting started

1. Create a folder in the game's `mods` folder, e.g. `mods/my_mod`.
2. Add an `init.lua`. It's the only file chalchiu loads; use `require` to load other files from your mod's folder.
3. Return a table describing your mod:

```lua
require("hooks") -- loads hooks.lua from the same folder

return {
  name        = 'My Mod',
  author      = 'You',
  version     = 'v1.0',
  description = 'One or two sentences.', -- keep it short, it's shown in Mod Info
}
```

To find out which game modules exist, use the [game reference](game/README.md) or copy the `debug` mod from the
release's `optional` folder into `mods`: it writes every module the game loads to `chalchiu.log`.

## Hooks

`hooks.add` lets you change a game module when it's loaded (`require`d). The function gets the module's table, which
you can change freely. If the game has already loaded the module, the hook runs immediately. Each hook runs once.

```lua
hooks.add("module.to.hook", function(table)
  table["max"] = table["min"] -- e.g. replace a function
end)
```

## Detours

`detour` wraps a function, so your code runs instead of it and can call the original. Usually used inside a hook.

```lua
hooks.add("classes.localPlayer", function(table)
  detour(table, "getMoney", function(original, self, ...)
    return original(self, ...) * 1000
  end)
end)
```

## Settings

`settings.define` declares your mod's settings. Values are loaded from `mods/<your mod>/settings.lua` if it exists,
saved whenever they change, and shown on your mod's settings page in Mod Info.

Types: `boolean`, `number` (`min`, `max`, `step`), `choice` (`options`), `key` (a key name, for hotkeys) and `string`
(settings file only). `label` and `description` are shown in-game.

```lua
local config = settings.define({
  { key = "multiplier", label = "XP multiplier", type = "choice", default = 2,
    options = { { value = 1, label = "Off" }, { value = 2, label = "2x" }, { value = 3, label = "3x" } } },
  { key = "sound", label = "Play a sound", type = "boolean", default = true },
  { key = "hotkey", label = "Key: Do the thing", type = "key", default = "numPad5" },
})

print(config.multiplier)    -- current value
config:set("sound", false)  -- validated and saved
config:onChange(function(key, value) end)
```

## Hotkeys

`hotkeys.add` runs a function when a key is pressed. Pass a function instead of a key name to read the key from your
settings on every press, so rebinding it in Mod Info works immediately.

```lua
hotkeys.add(function() return config.hotkey end, function()
  print("pressed!")
end, "Do the thing")
```

## Logging

`log.debug`, `log.info`, `log.warn` and `log.error` write to `chalchiu.log`, tagged with your mod's folder name.
`print` is also written to the log (as `[print]`), but without the tag.

```lua
log.info("Gave", amount, "gold") -- [my_mod] Gave 5000 gold
```

chalchiu itself logs setting changes and saves, hotkey presses and key captures. The log starts fresh every game
start; the previous one is kept as `chalchiu.previous.log`.

`chalchiu.version` is the loader version as a string, e.g. `"3.4.0"`.

## Globals

Each mod runs in its own Lua environment and can't write to the game's globals directly. `globals` is the game's
global table, for when you need it, e.g. to `require` one of the game's files:

```lua
local not_math = require("math")         -- fails: looks for math.lua in your mod's folder
local math     = globals.require("math") -- the game's math
```

## Game reference and checks

[docs/game](game/README.md) lists every game module, its functions (with parameter names) and settings, plus all
globals, for each supported game version.

- `python tools/gamedocs/gamedocs.py check scripts/coromon --version <version>` finds references to modules or
  settings that no longer exist in that version.
- `lua5.1 tests/run.lua .` runs the offline tests for the loader runtime and the included mods.

## Building

chalchiu is a 32-bit Windows DLL (`iphlpapi.dll`) built with CMake and [llvm-mingw](https://github.com/mstorsjo/llvm-mingw)
(or MinGW-w64):

```sh
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain.cmake
cmake --build build -j
```

[.github/workflows/build.yml](../.github/workflows/build.yml) shows the full CI build. See [Releasing](releasing.md)
for publishing a release.

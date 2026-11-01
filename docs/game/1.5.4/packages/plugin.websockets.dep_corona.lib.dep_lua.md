# plugin.websockets.dep_corona.lib.dep_lua

Coromon 1.5.4. 14 module(s). [Back to index](../README.md)

[bit](#bit), [json](#json), [lua_bytearray](#lua_bytearray), [lua_class](#lua_class), [lua_e4x](#lua_e4x), [lua_error](#lua_error), [lua_events_mix](#lua_events_mix), [lua_files](#lua_files), [lua_megaphone](#lua_megaphone), [lua_objects](#lua_objects), [lua_patch](#lua_patch), [lua_promise](#lua_promise), [lua_states_mix](#lua_states_mix), [lua_utils](#lua_utils)

### bit

`plugin.websockets.dep_corona.lib.dep_lua.bit`

### json

`plugin.websockets.dep_corona.lib.dep_lua.json`

### lua_bytearray

`plugin.websockets.dep_corona.lib.dep_lua.lua_bytearray`

- requires: `plugin.websockets.dep_corona.lib.dep_lua.lua_bytearray.exceptions`, `plugin.websockets.dep_corona.lib.dep_lua.lua_class`

### lua_class

`plugin.websockets.dep_corona.lib.dep_lua.lua_class`

- defines globals: `_extend` = function(), `_optimize` = function()

<details><summary>Functions (2)</summary>

- `_extend()`
- `_optimize()`

</details>

### lua_e4x

`plugin.websockets.dep_corona.lib.dep_lua.lua_e4x`

- defines globals: `filter` = function(), `map` = function(), `foldr` = function(), `encodeXmlString` = function()

<details><summary>Functions (4)</summary>

- `filter()`
- `map()`
- `foldr()`
- `encodeXmlString()`

</details>

### lua_error

`plugin.websockets.dep_corona.lib.dep_lua.lua_error`

- requires: `plugin.websockets.dep_corona.lib.dep_lua.lua_class`

<details><summary>Functions (3)</summary>

- `_G.try()`
- `_G.catch()`
- `_G.finally()`

</details>

### lua_events_mix

`plugin.websockets.dep_corona.lib.dep_lua.lua_events_mix`

### lua_files

`plugin.websockets.dep_corona.lib.dep_lua.lua_files`

- requires: `lua_error`, `lua_utils`
- defines globals: `key_value` = value

### lua_megaphone

`plugin.websockets.dep_corona.lib.dep_lua.lua_megaphone`

- requires: `plugin.websockets.dep_corona.lib.dep_lua.lua_objects`

### lua_objects

`plugin.websockets.dep_corona.lib.dep_lua.lua_objects`

- returns `require("plugin.websockets.dep_corona.lib.dep_lua.lua_class")`
- requires: `plugin.websockets.dep_corona.lib.dep_lua.lua_class`, `plugin.websockets.dep_corona.lib.dep_lua.lua_events_mix`

### lua_patch

`plugin.websockets.dep_corona.lib.dep_lua.lua_patch`

### lua_promise

`plugin.websockets.dep_corona.lib.dep_lua.lua_promise`

- requires: `plugin.websockets.dep_corona.lib.dep_lua.lua_class`

### lua_states_mix

`plugin.websockets.dep_corona.lib.dep_lua.lua_states_mix`

- defines globals: `outStr` = function(), `errStr` = function(), `_patch` = function()

<details><summary>Functions (3)</summary>

- `outStr()`
- `errStr()`
- `_patch()`

</details>

### lua_utils

`plugin.websockets.dep_corona.lib.dep_lua.lua_utils`

- defines globals: `_destroy` = function(), `_extend` = function(), `opts` = value, `_print` = function()

<details><summary>Functions (3)</summary>

- `_destroy()`
- `_extend()`
- `_print()`

</details>

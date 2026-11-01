-- chalchiu runtime: the Lua side of the loader.
--
-- Embedded into the DLL at build time (see CMakeLists.txt) and run once when chalchiu starts.
-- Expects these functions to be provided by C++ on the global `chalchiu` table:
--   chalchiu.log(level, message)
--   chalchiu.read_mod_file(mod_id, file_name)            -> string | nil
--   chalchiu.write_mod_file(mod_id, file_name, content)  -> boolean
--   chalchiu.mods()                                      -> list of loaded mods
--
-- Everything here is written in Lua on purpose: the game calls require/print (and our hooks) from
-- coroutines, and Lua closures always run on the calling coroutine. Calling back into Lua from C++
-- through references bound to the main thread can corrupt the Lua stack.

local chalchiu = chalchiu
local log = chalchiu.log

local tostring, tonumber, type, pairs, ipairs, select, pcall, xpcall, error =
  tostring, tonumber, type, pairs, ipairs, select, pcall, xpcall, error
local setmetatable, loadstring, setfenv = setmetatable, loadstring, setfenv
local concat, insert, sort, format = table.concat, table.insert, table.sort, string.format
local traceback = debug and debug.traceback
local unpack = unpack

local function try(fn, ...)
  if traceback then
    local args, n = { ... }, select("#", ...)
    return xpcall(function() return fn(unpack(args, 1, n)) end, traceback)
  end
  return pcall(fn, ...)
end

---------------------------------------------------------------------------------------------------
-- detour
---------------------------------------------------------------------------------------------------

chalchiu.detour = function(table, func, detour)
  local original = table[func]

  table[func] = function(...)
    return detour(original, ...)
  end

  return function()
    table[func] = original
  end
end

---------------------------------------------------------------------------------------------------
-- hooks: callbacks run once per module, when it is required after registration, or right away
-- if the game already loaded it before chalchiu started
---------------------------------------------------------------------------------------------------

local hooks = {}
local applied = setmetatable({}, { __mode = "k" })

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

      local ok, err = try(hook.callback, value)
      if not ok then
        log("error", "[require] Hook from '" .. tostring(hook.callee) .. "' for '" .. module .. "' failed: " .. tostring(err))
      end
    end
  end
end

chalchiu.hooks = {
  add = function(module, callback, callee)
    log("info", "[hooks] '" .. tostring(callee or "<unknown>") .. "' registered hook for '" .. tostring(module) .. "'")
    hooks[module] = hooks[module] or {}
    insert(hooks[module], { callback = callback, callee = callee })

    local loaded = package.loaded[module]
    if loaded ~= nil then
      run_hooks(module, loaded)
    end
  end,
}

local original_require = require
require = function(module, ...)
  if not hooks[module] then
    return original_require(module, ...)
  end
  local value = original_require(module, ...)
  run_hooks(module, value)
  return value
end

---------------------------------------------------------------------------------------------------
-- print: mirrored into chalchiu.log
---------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------
-- settings: per-mod settings, saved to mods/<mod>/settings.lua
---------------------------------------------------------------------------------------------------
--
-- local config = settings.define({
--   { key = "multiplier", label = "XP multiplier", type = "number", default = 2, min = 1, max = 10, step = 1 },
--   { key = "enabled",    label = "Enabled",       type = "boolean", default = true },
--   { key = "mode",       label = "Mode",          type = "choice", default = "a",
--     options = { { value = "a", label = "Option A" }, { value = "b", label = "Option B" } } },
--   { key = "hotkey",     label = "Hotkey",        type = "key", default = "numPad5" },
-- })
--
-- config.multiplier            -- current value
-- config:set("multiplier", 3)  -- validates and saves
-- config:onChange(function(key, value) end)

local SETTINGS_FILE = "settings.lua"
local registry, registry_order = {}, {}

local function option_value(option)
  if type(option) == "table" then
    return option.value
  end
  return option
end

local function option_label(option)
  if type(option) == "table" then
    return tostring(option.label or option.value)
  end
  return tostring(option)
end

-- Returns ok, normalized value
local function validate(entry, value)
  local kind = entry.type
  if kind == "boolean" then
    return type(value) == "boolean", value
  elseif kind == "number" then
    value = tonumber(value)
    if not value then
      return false
    end
    if entry.min and value < entry.min then value = entry.min end
    if entry.max and value > entry.max then value = entry.max end
    return true, value
  elseif kind == "choice" then
    for _, option in ipairs(entry.options or {}) do
      if option_value(option) == value then
        return true, value
      end
    end
    return false
  elseif kind == "key" or kind == "string" then
    return type(value) == "string", value
  end
  return false
end

local function serialize(value)
  local kind = type(value)
  if kind == "string" then
    return format("%q", value)
  elseif kind == "number" then
    if value == math.floor(value) and math.abs(value) < 2 ^ 53 then
      return format("%d", value)
    end
    return format("%.17g", value)
  end
  return tostring(value)
end

local function parse(text)
  local chunk = loadstring(text, "=" .. SETTINGS_FILE)
  if not chunk then
    return nil
  end
  setfenv(chunk, {}) -- settings files may only contain data
  local ok, result = pcall(chunk)
  if ok and type(result) == "table" then
    return result
  end
  return nil
end

local config_methods = {}
config_methods.__index = function(self, key)
  local method = config_methods[key]
  if method ~= nil then
    return method
  end
  return rawget(self, "_values")[key]
end
config_methods.__newindex = function(self, key, value)
  self:set(key, value)
end

function config_methods.get(self, key)
  return rawget(self, "_values")[key]
end

function config_methods.entry(self, key)
  return rawget(self, "_entries")[key]
end

function config_methods.entries(self)
  return rawget(self, "_schema")
end

function config_methods.save(self)
  local lines = {
    "-- Settings for the '" .. rawget(self, "_id") .. "' mod, saved by chalchiu.",
    "-- You can edit this while the game is closed, or change settings in-game in the Mod Info popup.",
    "return {",
  }
  for _, entry in ipairs(rawget(self, "_schema")) do
    local value = rawget(self, "_values")[entry.key]
    if value ~= nil then
      lines[#lines + 1] = format("  [%q] = %s,", entry.key, serialize(value))
    end
  end
  lines[#lines + 1] = "}"
  lines[#lines + 1] = ""

  local ok = chalchiu.write_mod_file(rawget(self, "_id"), SETTINGS_FILE, concat(lines, "\n"))
  if not ok then
    log("error", "[settings] Could not save settings for '" .. rawget(self, "_id") .. "'")
  end
  return ok
end

function config_methods.set(self, key, value)
  local entry = rawget(self, "_entries")[key]
  if not entry then
    error("unknown setting '" .. tostring(key) .. "'", 2)
  end

  local ok, normalized = validate(entry, value)
  if not ok then
    error("invalid value for setting '" .. tostring(key) .. "': " .. tostring(value), 2)
  end

  rawget(self, "_values")[key] = normalized
  self:save()

  for _, listener in ipairs(rawget(self, "_listeners")) do
    local fine, err = try(listener, key, normalized)
    if not fine then
      log("error", "[settings] onChange listener of '" .. rawget(self, "_id") .. "' failed: " .. tostring(err))
    end
  end

  return normalized
end

function config_methods.reset(self, key)
  return self:set(key, rawget(self, "_entries")[key].default)
end

function config_methods.onChange(self, listener)
  insert(rawget(self, "_listeners"), listener)
end

-- Human readable value, used by the Mod Info settings page
function config_methods.format(self, key)
  local entry = rawget(self, "_entries")[key]
  local value = rawget(self, "_values")[key]
  if entry.type == "boolean" then
    return value and "On" or "Off"
  elseif entry.type == "choice" then
    for _, option in ipairs(entry.options or {}) do
      if option_value(option) == value then
        return option_label(option)
      end
    end
  elseif entry.type == "key" then
    return (value == nil or value == "") and "(none)" or value
  elseif entry.type == "number" and entry.format then
    return format(entry.format, value)
  end
  return tostring(value)
end

-- Next value when cycling through a setting (booleans flip, numbers step and wrap, choices rotate)
function config_methods.cycle(self, key)
  local entry = rawget(self, "_entries")[key]
  local value = rawget(self, "_values")[key]

  if entry.type == "boolean" then
    return self:set(key, not value)
  elseif entry.type == "number" then
    local step = entry.step or 1
    local nextValue = value + step
    if entry.max and nextValue > entry.max + 1e-9 then
      nextValue = entry.min or entry.default
    end
    return self:set(key, nextValue)
  elseif entry.type == "choice" then
    local options = entry.options or {}
    for i, option in ipairs(options) do
      if option_value(option) == value then
        return self:set(key, option_value(options[i % #options + 1]))
      end
    end
    return self:set(key, option_value(options[1]))
  end
  error("setting '" .. tostring(key) .. "' cannot be cycled", 2)
end

chalchiu.settings = {}

function chalchiu.settings.define(id, schema)
  if type(schema) ~= "table" then
    error("settings.define expects a list of settings", 2)
  end

  local entries, values = {}, {}
  for i, entry in ipairs(schema) do
    if type(entry.key) ~= "string" then
      error("setting #" .. i .. " has no key", 2)
    end
    local ok, default = validate(entry, entry.default)
    if not ok then
      error("setting '" .. entry.key .. "' has an invalid default", 2)
    end
    entry.label = entry.label or entry.key
    entries[entry.key] = entry
    values[entry.key] = default
  end

  -- Load saved values, ignoring anything unknown or invalid
  local text = chalchiu.read_mod_file(id, SETTINGS_FILE)
  if text then
    local saved = parse(text)
    if saved then
      for key, value in pairs(saved) do
        local entry = entries[key]
        if entry then
          local ok, normalized = validate(entry, value)
          if ok then
            values[key] = normalized
          else
            log("warn", "[settings] Ignoring invalid saved value for '" .. id .. "." .. tostring(key) .. "'")
          end
        end
      end
    else
      log("warn", "[settings] Could not read mods/" .. id .. "/" .. SETTINGS_FILE .. ", using defaults")
    end
  end

  local config = setmetatable({
    _id = id, _schema = schema, _entries = entries, _values = values, _listeners = {},
  }, config_methods)

  if not registry[id] then
    insert(registry_order, id)
  end
  registry[id] = config

  log("info", "[settings] '" .. id .. "' defined " .. #schema .. " setting(s)")
  return config
end

function chalchiu.settings.get(id)
  return registry[id]
end

function chalchiu.settings.all()
  local list = {}
  for _, id in ipairs(registry_order) do
    list[#list + 1] = { id = id, config = registry[id] }
  end
  return list
end

---------------------------------------------------------------------------------------------------
-- hotkeys: one key listener for all mods
---------------------------------------------------------------------------------------------------
--
-- hotkeys.add("numPad5", function() ... end, "Do something")
-- hotkeys.add(function() return config.hotkey end, function() ... end)   -- key read on every press
-- hotkeys.capture(function(keyName) end)  -- next key press (nil if Escape), used for rebinding

local hotkey_list = {}
local capture_callback = nil
local listening = false
local CANCEL_KEYS = { escape = true, back = true }

local function on_key(event)
  if event.phase ~= "down" then
    return false
  end

  if capture_callback then
    local callback = capture_callback
    capture_callback = nil
    local keyName = event.keyName
    if CANCEL_KEYS[keyName] then
      keyName = nil
    end
    local ok, err = try(callback, keyName)
    if not ok then
      log("error", "[hotkeys] Key capture callback failed: " .. tostring(err))
    end
    return true -- the key was meant for us, don't let the game act on it
  end

  for _, hotkey in ipairs(hotkey_list) do
    local key = hotkey.key
    if type(key) == "function" then
      local ok, result = pcall(key)
      key = ok and result or nil
    end
    if key and key ~= "" and event.keyName == key then
      local ok, err = try(hotkey.fn, event)
      if not ok then
        log("error", "[hotkeys] '" .. tostring(hotkey.label) .. "' from '" .. tostring(hotkey.id) .. "' failed: " .. tostring(err))
      end
    end
  end

  return false
end

local function ensure_listener()
  if listening then
    return true
  end
  if not Runtime then
    log("error", "[hotkeys] Runtime is not available, hotkeys disabled")
    return false
  end
  Runtime:addEventListener("key", on_key)
  listening = true
  return true
end

chalchiu.hotkeys = {
  add = function(id, key, fn, label)
    insert(hotkey_list, { id = id, key = key, fn = fn, label = label or tostring(key) })
    ensure_listener()
  end,
  capture = function(callback)
    ensure_listener()
    capture_callback = callback
  end,
  isCapturing = function()
    return capture_callback ~= nil
  end,
}

---------------------------------------------------------------------------------------------------
-- Per-mod environment: hooks/settings/hotkeys that know which mod they belong to
---------------------------------------------------------------------------------------------------

chalchiu._bind_mod_env = function(env, id)
  env.hooks = {
    add = function(module, callback)
      return chalchiu.hooks.add(module, callback, id)
    end,
  }

  env.settings = {
    define = function(schema)
      return chalchiu.settings.define(id, schema)
    end,
    get = chalchiu.settings.get,
  }

  env.hotkeys = {
    add = function(key, fn, label)
      return chalchiu.hotkeys.add(id, key, fn, label)
    end,
    capture = chalchiu.hotkeys.capture,
    isCapturing = chalchiu.hotkeys.isCapturing,
  }
end

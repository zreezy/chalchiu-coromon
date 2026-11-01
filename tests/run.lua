-- Offline test harness for chalchiu's Lua runtime and the bundled Coromon mods.
--
-- Loads src/runtime.lua and every mod in scripts/coromon the same way chalchiu does, against small
-- stand-ins for the game modules the mods use, then drives their features (hotkeys, hooks, settings,
-- popups) and checks the results. It cannot prove the game behaves like the stand-ins, but it does
-- catch typos, nil errors and broken logic before anything reaches the game.
--
-- Usage: lua5.1 tests/run.lua [repo root]

local root = (arg and arg[1]) or "."
local failures, logs = 0, {}

local function check(condition, message)
  if not condition then
    failures = failures + 1
    print("FAIL: " .. message)
  end
end

---------------------------------------------------------------------------------------------------
-- What C++ normally provides
---------------------------------------------------------------------------------------------------

local files = {}
local loadedMods = {}

chalchiu = {
  log = function(level, message)
    logs[#logs + 1] = { level = level, message = message }
    if level == "error" then
      print("LOG ERROR: " .. message)
    end
  end,
  read_mod_file = function(id, name) return files[id .. "/" .. name] end,
  write_mod_file = function(id, name, content) files[id .. "/" .. name] = content; return true end,
  mods = function() return loadedMods end,
  version = "3.3.0",
}

-- Solar2D network/system stand-ins for the update check: GitHub answers right away
local networkRequests, openedURLs = {}, {}
network = {
  request = function(url, method, listener, params)
    networkRequests[#networkRequests + 1] = { url = url, method = method, params = params }
    listener({ isError = false, status = 200,
      response = '{"tag_name":"v3.10.0","html_url":"https://github.com/zreezy/chalchiu-coromon/releases/tag/v3.10.0"}' })
  end,
}
system = { openURL = function(url) openedURLs[#openedURLs + 1] = url end }
json = {
  decode = function(text)
    return { tag_name = text:match('"tag_name":"([^"]+)"'), html_url = text:match('"html_url":"([^"]+)"') }
  end,
}

local keyListener
Runtime = {
  addEventListener = function(_, name, fn)
    if name == "key" then keyListener = fn end
  end,
}

local function press(keyName)
  keyListener({ keyName = keyName, phase = "down" })
  keyListener({ keyName = keyName, phase = "up" })
end

---------------------------------------------------------------------------------------------------
-- Game stand-ins
---------------------------------------------------------------------------------------------------

local toasts, sounds, popups, topBarObjects = {}, {}, {}, {}

local function lastToast() return toasts[#toasts] or "" end

local displayObject = function()
  return setmetatable({ height = 10, width = 10 }, { __index = function() return function() end end })
end

local MessageToast = { showAndHide = function(_, text) toasts[#toasts + 1] = text end }

local AbstractSelectPopup = {
  newParams = function(_, title, items, render)
    local params = { title = title, items = items, render = render }
    function params:setGetDescriptionFunction(fn) self.describe = fn end
    function params:setConvertToCategoryFunction() end
    function params:setConfirmButton(content, onPress, recreate)
      self.content, self.onPress, self.recreate = content, onPress, recreate
    end
    function params:setCancellable(onCancel) self.onCancel, self.cancellable = onCancel, true end
    function params:setCancellableByButton(onCancel) self.cancelButton = onCancel end
    function params:setIsSelectedObjectFunction(fn) self.isSelected = fn end
    function params:setOnGridBoxSelect(fn) self.onSelect = fn end
    return params
  end,
  new = function(_, params)
    -- like the game: setCancellable also closes on Start, Back and any background click
    params.closesOnBackgroundTouch = params.onCancel ~= nil and params.cancellable
    return {
      setCloseOnStartButton = function(_, fn) params.onStart = fn end,
      setCloseOnBackButton = function(_, fn) params.onBack = fn end,
      open = function()
        popups[#popups + 1] = params
        -- exercise the render and description callbacks like the game would
        for _, item in ipairs(params.items) do
          params.render(displayObject(), item)
          if params.describe then params.describe(item, 100) end
        end
      end,
    }
  end,
}

local function confirm(params, index)
  params.onPress(params.items[index], function(onClose) if onClose then onClose() end end)
end

local function findItem(params, field, value)
  for i, item in ipairs(params.items) do
    if item[field] == value then return i end
  end
end

local locationPopupOpened, locationPopupRevealed
package.preload["classes.interface.overlays.MessageToast"] = function() return MessageToast end
package.preload["classes.interface.overlays.AbstractSelectPopup"] = function() return AbstractSelectPopup end
package.preload["classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder"] = function()
  return { new = function() return displayObject() end }
end
package.preload["classes.interface.overlays.worldLocationDetailsPopupBuilder"] = function()
  return {
    new = function(_, uid)
      -- the game draws silhouettes for Coromon you haven't seen while building the popup
      locationPopupRevealed = playerStats:hasSeenMonster("cubzero")
      return { open = function() locationPopupOpened = uid end }
    end,
  }
end

local monsters = {}
for i = 1, 3 do
  monsters[i] = {
    level = 5, potential = 1,
    tryIncreaseLevel = function(self, n) self.level = self.level + n end,
    setPotential = function(self, p) self.potential = p end,
    setHealthToMaxHealth = function() end,
    setEnergyToMaxOverchargedEnergy = function() end,
  }
end

local onlineBattle = false
local Battle = {
  isCreated = function() return onlineBattle end,
  isCreatedAsOnline = function() return onlineBattle end,
  createOnline = function() onlineBattle = true; return "battle" end,
}

local typeWriterFactor
local textHelperModule = {
  setTypeWriterSpeedFactor = function(_, factor) typeWriterFactor = factor end,
  new = function() return displayObject() end,
  newPrepared = function(_, _, options)
    local object = displayObject()
    object.width = type(options) == "table" and options.text and #options.text * 5 or 10
    return object
  end,
  spawnPrepared = function(_, _, prepared) return prepared end,
}

local playerStatsModule = {
  addPotentMonsterEncountered = function() return "potent" end,
  addPerfectMonsterEncountered = function() return "perfect" end,
  hasSeenMonster = function(_, uid) return uid == "swurmy" or uid == "toruga" end,
  hasOwnedMonster = function(_, uid) return uid == "swurmy" end,
}

local battleEffectUtilityModule = {
  mutateXpEarned = function(_, _, _, _, value) return value end,
  mutateTrainerBattleGoldBounty = function(_, value) return value end,
}

local titleScreen = { new = function() return "title" end }
local squadScreenBuilder = {
  new = function()
    return { addTopBarObject = function(_, object, side) topBarObjects[#topBarObjects + 1] = side end }
  end,
}

-- Modules the game would have loaded before chalchiu starts
package.loaded["classes.modules.battle.Battle"] = Battle
package.loaded["classes.modules.textHelper"] = textHelperModule
package.loaded["classes.modules.playerStats"] = playerStatsModule
package.loaded["classes.modules.utilities.battleEffectUtility"] = battleEffectUtilityModule
-- Modules the game requires later
package.preload["classes.interface.screens.titleScreen"] = function() return titleScreen end
package.preload["classes.interface.screens.SquadScreen"] = function() return squadScreenBuilder end

local inventory, gold = {}, 0
local worldInterfaceHidden = false

debugSettings = {
  game = { noClipMode = false },
  battle = {
    alwaysCatchSuccessfully = false, isNoSkillDamage = false, isNoSkillEnergyCost = false,
    skipEncounterOverlay = false, skipTrainerSpawnAnimation = false,
  },
  coromon1 = { skipWildBattles = false, skipTrainerBattles = false },
  UI = { hideWorldInterface = false },
}
display = { timeScale = 1, setDebugTimeScale = function(self, v) self.timeScale = v end }
playerMonsters = { getSquad = function() return monsters end }
playerCurrency = { addGold = function(_, n) gold = gold + n end }
itemList = { SPINNER_REGULAR_4 = { uid = "SPINNER_REGULAR_4" }, REVIVE_STONE = { uid = "REVIVE_STONE" } }
playerInventory = { addItem = function(_, item, n) inventory[item.uid] = (inventory[item.uid] or 0) + n end }
worldInterface = {
  isCreated = function() return true end,
  hide = function() worldInterfaceHidden = true end,
  show = function() worldInterfaceHidden = false end,
}
worldHelper = { isCreated = function() return true end, getWorldLocation = function() return "luxSolisRoute" end }
worldLocationList = { luxSolisRoute = { mapFilesWithEncounterZones = { "luxSolisRoute" } } }
pauseMenu = { isCreated = function() return false end }
local function monsterData(number, name)
  return {
    getNumber = function() return number end,
    getName = function() return name end,
    getDescription = function() return name .. " description" end,
  }
end
monsterDataList = { swurmy = monsterData(4, "Swurmy"), toruga = monsterData(1, "Toruga"), cubzero = monsterData(30, "Cubzero") }
EncounterZoneList = {
  getChanceByMonsterUIDInMapFiles = function(_, files)
    return files[1] == "luxSolisRoute" and { swurmy = 60, toruga = 39.5, cubzero = 0.5 } or {}
  end,
}
worldLocationUtility = { getLocalised = function(_, uid) return uid == "luxSolisRoute" and "Lux Solis Route" or uid end }
_G.Battle = Battle
gameSettings = { getTypeWriterSpeedFactorSetting = function() return 2 end }
soundHelper = { playSound = function(_, name) sounds[#sounds + 1] = name end }
textHelper = textHelperModule
playerStats = playerStatsModule
battleEffectUtility = battleEffectUtilityModule
imageHelper = { new = function() return displayObject() end }
magnet = setmetatable({}, { __index = function() return function() end end })
local touchables = {}
inputHelper = {
  addTouchable = function(_, object, listener) touchables[#touchables + 1] = { object = object, listener = listener } end,
  addMouseHoverable = function() end,
}
UIButton = {
  createTouchableListener = function(_, _, onPress) return onPress end,
  showHoverVariantOnHover = function() return function() end end,
}
UIButtonTransition = { fancyPress = "fancyPress" }
UIContainerStyle = { gradient_blueOrFluorescent = { getFontOutlineFillEffect = function() return "fill" end } }
local containers = {}
UIContainerBuilder = { new = function(_, parent, style, width, height)
  local object = displayObject(); object.width, object.height, object.parent = width, height, parent
  containers[#containers + 1] = object
  return object
end }

---------------------------------------------------------------------------------------------------
-- Load the runtime and mods like chalchiu does
---------------------------------------------------------------------------------------------------

dofile(root .. "/src/runtime.lua")

local function loadMod(id)
  local folder = root .. "/scripts/coromon/" .. id .. "/"
  local env = setmetatable({}, { __index = _G })
  env.globals = _G
  env.detour = chalchiu.detour
  chalchiu._bind_mod_env(env, id)

  local cache = {}
  env.require = function(name)
    if cache[name] == nil then
      local chunk = assert(loadfile(folder .. name:gsub("%.", "/") .. ".lua"))
      setfenv(chunk, env)
      cache[name] = chunk()
    end
    return cache[name]
  end

  local chunk = assert(loadfile(folder .. "init.lua"))
  setfenv(chunk, env)
  local ok, info = pcall(chunk)
  check(ok, "mod '" .. id .. "' failed to load: " .. tostring(info))
  if not ok then return end

  loadedMods[#loadedMods + 1] = {
    name = function() return info.name end,
    id = function() return id end,
    author = function() return info.author end,
    version = function() return info.version end,
    description = function() return info.description end,
  }
end

for _, id in ipairs({ "mod_info", "trainer", "potent_alert", "xp_gold_boost", "text_speed", "area_info" }) do
  loadMod(id)
end
check(#loadedMods == 6, "expected 6 mods, loaded " .. #loadedMods)

---------------------------------------------------------------------------------------------------
-- Scenarios
---------------------------------------------------------------------------------------------------

-- Title screen: Mod Info popup on startup, Mods button, text speed re-applied
local title = require("classes.interface.screens.titleScreen")
title:new()
check(#popups == 1 and popups[1].title == "Loaded Mods", "Loaded Mods popup should open on the title screen")
check(#containers == 1 and containers[1].parent == "title", "Mods button should be added to the title screen")
touchables[#touchables].listener()
check(#popups == 2 and popups[2].title == "Loaded Mods", "Mods button should open the mod list")
title:new()
check(#popups == 2 and #containers == 2, "startup popup only once, button on every title screen")

-- Update check: once per game start, newer release (3.10.0 > 3.3.0) shown first in the list
check(#networkRequests == 1 and networkRequests[1].url:find("api.github.com/repos/zreezy/chalchiu%-coromon/releases/latest")
  and networkRequests[1].params.headers["User-Agent"] == "chalchiu/3.3.0", "one update check with a User-Agent")
check(lastToast():find("v3.10.0 is available"), "update toast")
local startupList = popups[1]
check(startupList.items[1].isUpdate and startupList.items[1].version == "v3.10.0", "update row first in the list")

-- Descriptions must stay short: the popup sizes its description area to the longest one
for _, mod in ipairs(loadedMods) do
  check(#mod.description() <= 160, "description of '" .. mod.name() .. "' is too long (" .. #mod.description() .. " chars)")
end
for _, entry in ipairs(chalchiu.settings.all()) do
  for _, setting in ipairs(entry.config:entries()) do
    check(#(setting.description or "") <= 160, "setting description too long: " .. entry.id .. "." .. setting.key)
  end
end
check(typeWriterFactor == 6, "text speed should be 6x, got " .. tostring(typeWriterFactor))

-- Text speed follows its setting, and "use game setting" falls back to the game's value
local textConfig = chalchiu.settings.get("text_speed")
textConfig:set("speed", 0)
check(typeWriterFactor == 2, "text speed should follow the game setting (2), got " .. tostring(typeWriterFactor))
textConfig:set("speed", 10)
check(typeWriterFactor == 10, "text speed should be 10x after change")

-- Trainer hotkeys
press("numPad/"); check(debugSettings.game.noClipMode == true, "noclip toggles on")
press("numPad/"); check(debugSettings.game.noClipMode == false, "noclip toggles off")
press("numPad+"); check(display.timeScale == 1.5, "speed up")
press("numPad*"); check(display.timeScale == 1, "speed reset")
press("numPad1"); check(debugSettings.battle.alwaysCatchSuccessfully, "catch all")
press("numPad2"); check(debugSettings.coromon1.skipWildBattles, "skip wild")
press("numPad3"); check(monsters[1].level == 105 and monsters[3].potential == 21, "max squad")
press("numPad4"); check(gold == 5000, "add gold")
press("numPad5"); check(debugSettings.coromon1.skipTrainerBattles, "skip trainer battles")
press("numPad6"); check(debugSettings.battle.isNoSkillEnergyCost, "no energy cost")
press("numPad7"); check(debugSettings.battle.skipEncounterOverlay and debugSettings.battle.skipTrainerSpawnAnimation, "fast intros")
press("numPad8"); check(debugSettings.UI.hideWorldInterface and worldInterfaceHidden, "hide interface")
press("numPad8"); check(not worldInterfaceHidden, "show interface")
press("numPad9"); check(inventory.SPINNER_REGULAR_4 == 10, "give item")

local trainerConfig = chalchiu.settings.get("trainer")
trainerConfig:set("goldAmount", 50000); press("numPad4")
check(gold == 55000, "gold amount setting")
trainerConfig:set("keyNoDamage", "f6"); press("f6")
check(debugSettings.battle.isNoSkillDamage, "rebound no-damage key")

-- Area info (numPad0): list with names, shares and status; button opens the game's popup
local before = #popups
press("numPad0")
local area = popups[#popups]
check(#popups == before + 1 and area.title == "Lux Solis Route", "area info list for current location")
check(area.items[1].name == "Toruga" and area.items[2].name == "Swurmy" and area.items[3].name == "Cubzero", "sorted by dex number")
check(area.items[2].owned and area.items[1].seen and not area.items[3].seen, "seen / caught status")
check(math.floor(area.items[2].share + 0.5) == 60, "share of encounters")
check(area.onStart and area.onBack and area.cancelButton and not area.cancellable, "area list closes like Mod Info")
area.onPress(area.items[1], function(onClose) if onClose then onClose() end end)
check(locationPopupOpened == "luxSolisRoute" and not locationPopupRevealed, "pictures button opens the game popup with silhouettes")
local areaConfig = chalchiu.settings.get("area_info")
areaConfig:set("showUndiscovered", true)
areaConfig:set("view", "game")
locationPopupOpened = nil
press("numPad0")
check(locationPopupOpened == "luxSolisRoute" and locationPopupRevealed, "game view, undiscovered revealed")
check(not playerStats:hasSeenMonster("cubzero"), "hasSeenMonster restored afterwards")
areaConfig:set("view", "list")

-- XP & Gold Boost
check(battleEffectUtility:mutateXpEarned(nil, false, 10, 100) == 200, "2x XP")
chalchiu.settings.get("xp_gold_boost"):set("gold", 3)
check(battleEffectUtility:mutateTrainerBattleGoldBounty(100) == 300, "3x gold")

-- Potent alert
check(playerStats:addPotentMonsterEncountered() == "potent", "potent call passes through")
check(lastToast():find("potent") and sounds[#sounds] == "levelUp", "potent alert toast + sound")
playerStats:addPerfectMonsterEncountered()
check(lastToast():find("PERFECT"), "perfect alert toast")

-- Online battle: cheats turned off, boosts and battle cheats disabled
Battle:createOnline()
check(not debugSettings.battle.alwaysCatchSuccessfully and not debugSettings.battle.isNoSkillEnergyCost
  and not debugSettings.battle.isNoSkillDamage, "battle cheats off in online battles")
check(battleEffectUtility:mutateXpEarned(nil, false, 10, 100) == 100, "no XP boost online")
press("numPad6")
check(not debugSettings.battle.isNoSkillEnergyCost and lastToast():find("disabled"), "no-energy blocked online")
press("numPad0")
check(lastToast():find("battle"), "area info blocked in battles")
onlineBattle = false

-- Pause menu button
require("classes.interface.screens.SquadScreen"):new()
check(topBarObjects[1] == "right", "pause menu button added to the right of the top bar")

-- Text the blue button shows for the given row
local function buttonLabel(params, index)
  local shown
  local saved = textHelperModule.newPrepared
  textHelperModule.newPrepared = function(self, font, options)
    shown = options.text
    return saved(self, font, options)
  end
  params.content(displayObject(), displayObject(), params.items[index])
  textHelperModule.newPrepared = saved
  return shown
end

-- Mod Info settings page: open trainer settings, cycle a choice, rebind a key
local list = popups[2]
check(buttonLabel(list, 1) == "Download", "update row button says Download")
confirm(list, 1)
check(openedURLs[1] == "https://github.com/zreezy/chalchiu-coromon/releases/tag/v3.10.0", "Download opens the release page")
check(list.cancelButton and list.recreate, "mod list has a close button and per-row button labels")
check(list.onStart and list.onBack, "Start (Esc) and Back keys close the list")
check(not list.cancellable, "clicking outside the popup doesn't close it")
check(buttonLabel(list, findItem(list, "name", "Coromon Trainer")) == "Settings", "button says Settings for mods with settings")
check(buttonLabel(list, findItem(list, "name", "Text Speed+")) == "Settings", "Text Speed+ has settings")
confirm(list, findItem(list, "name", "Coromon Trainer"))
local page = popups[#popups]
check(page.title == "Coromon Trainer Settings", "trainer settings page opens")
check(page.cancelButton, "settings page has a back button")
check(buttonLabel(page, findItem(page, "key", "itemAmount")) == "Next", "choice button says Next")
check(buttonLabel(page, findItem(page, "key", "keyAddGold")) == "Set key", "key button says Set key")
confirm(page, findItem(page, "key", "itemAmount"))
check(trainerConfig.itemAmount == 25, "choice cycles 10 -> 25, got " .. tostring(trainerConfig.itemAmount))
page = popups[#popups]
check(page.isSelected and page.isSelected(page.items[findItem(page, "key", "itemAmount")]), "selection kept after change")
confirm(page, findItem(page, "key", "keyAddGold"))
check(chalchiu.hotkeys.isCapturing(), "key capture started")
press("f7")
check(trainerConfig.keyAddGold == "f7", "key rebound to f7")
press("f7"); check(gold == 105000, "rebound key works")

-- No hotkeys while the game's text entry screen is open (typing a name)
package.preload["classes.interface.overlays.keyboardOverlayBuilder"] = function()
  return { new = function() return { parent = {}, isVisible = true } end }
end
local keyboardOverlay = require("classes.interface.overlays.keyboardOverlayBuilder"):new()
press("f7"); check(gold == 105000, "hotkeys ignored while typing")
keyboardOverlay.parent = nil -- closed
press("f7"); check(gold == 155000, "hotkeys work again after closing the text entry screen")
check(files["trainer/settings.lua"] and files["trainer/settings.lua"]:find('"f7"'), "settings saved to file")

-- Back from a settings page returns to the list with that mod selected (Esc here, red button below)
local before = #popups
popups[#popups].onStart()
local back = popups[#popups]
check(#popups == before + 1 and back.title == "Loaded Mods", "back button returns to the mod list")
check(back.isSelected and back.isSelected(back.items[findItem(back, "name", "Coromon Trainer")]), "returning keeps the mod selected")

-- Boolean settings: the button says what pressing it will do
local modInfoIndex = findItem(back, "name", "Mod Info")
confirm(back, modInfoIndex)
local modInfoPage = popups[#popups]
local startupIndex = findItem(modInfoPage, "key", "showOnStartup")
local wasOn = chalchiu.settings.get("mod_info"):get("showOnStartup")
check(buttonLabel(modInfoPage, startupIndex) == (wasOn and "Turn off" or "Turn on"), "boolean button label")
confirm(modInfoPage, startupIndex)
check(chalchiu.settings.get("mod_info"):get("showOnStartup") == not wasOn, "boolean toggled")
modInfoPage = popups[#popups]
check(buttonLabel(modInfoPage, startupIndex) == (wasOn and "Turn on" or "Turn off"), "label follows the new value")
local count = #popups
modInfoPage.cancelButton()
check(#popups == count + 1 and popups[#popups].title == "Loaded Mods", "red button goes back to the list")

-- The log shows what happened in the UI and to settings
local function logged(pattern)
  for _, entry in ipairs(logs) do
    if entry.message:find(pattern) then return true end
  end
end
check(logged("%[mod_info%] %[ui%] Opening 'Loaded Mods' %(startup%)"), "log: list opened on startup")
check(logged("%[ui%] Coromon Trainer Settings: pressed 'Next' on 'Give item: amount"), "log: button press")
check(logged("closed with a Start key"), "log: Esc")
check(logged("Mod Info Settings: red button"), "log: red button")
check(logged("%[settings%] 'trainer' keyAddGold: \"numPad4\" %-> \"f7\""), "log: setting change")
check(logged("%[settings%] Saved mods/trainer/settings.lua"), "log: settings saved")
check(logged("%[hotkeys%] Captured key: f7"), "log: key capture")
check(logged("%[hotkeys%] f7: 'Add Gold' %(trainer%)"), "log: hotkey press")
check(logged("%[trainer%] %[toast%]"), "log: toasts")

-- No errors logged anywhere
for _, entry in ipairs(logs) do
  check(entry.level ~= "error", "error logged: " .. entry.message)
end

if failures > 0 then
  print(failures .. " check(s) failed")
  os.exit(1)
end
print("All checks passed (" .. #loadedMods .. " mods)")

-- Coromon Trainer, written against Coromon v1.5.4 (see docs/game/1.5.4 for the game modules used here).
-- Keys and amounts are settings: change them in-game via Loaded Mods > Coromon Trainer.

-- MessageToast is the game's own small notification that hides itself. Unlike dialogs it never takes
-- over input, so it is safe to show from a key press anywhere (world, menus, battles).
local MessageToast = globals.require("classes.interface.overlays.MessageToast")

local _M = {}

local function message(text, intent)
  MessageToast:showAndHide(text, { intent = intent or "info" })
end

local function onOff(value)
  return value and "[on]" or "[off]"
end

local function inOnlineBattle()
  local Battle = globals.Battle
  return Battle and Battle:isCreated() and Battle:isCreatedAsOnline()
end

---------------------------------------------------------------------------------------------------
-- debugSettings toggles (the game's own debug switches, split into sections since v1.5)
---------------------------------------------------------------------------------------------------

local function toggleDebug(label, flags, options)
  options = options or {}
  return function()
    if options.blockedOnline and inOnlineBattle() then
      return message(label .. " is disabled in online battles", "warning")
    end

    local value = not globals.debugSettings[flags[1][1]][flags[1][2]]
    for _, flag in ipairs(flags) do
      globals.debugSettings[flag[1]][flag[2]] = value
    end

    if options.onChange then
      options.onChange(value)
    end

    message(label .. ": " .. onOff(value))
  end
end

-- Battle cheats that must not carry over into online battles
local BATTLE_CHEATS = {
  { "battle", "isNoSkillDamage" },
  { "battle", "isNoSkillEnergyCost" },
  { "battle", "alwaysCatchSuccessfully" },
}

---------------------------------------------------------------------------------------------------
-- Game speed: display:setDebugTimeScale updates display, timer, transition and sprite animations
---------------------------------------------------------------------------------------------------

local function setGameSpeed(value)
  value = math.max(0.5, value)
  globals.display:setDebugTimeScale(value)
  message("Game Speed: " .. value .. "x")
end

local function getGameSpeed()
  return globals.display.timeScale or 1
end

---------------------------------------------------------------------------------------------------
-- Items
---------------------------------------------------------------------------------------------------

local ITEMS = {
  { value = "SPINNER_REGULAR_4", label = "Spinner (best regular)" },
  { value = "SPINNER_SENSEI", label = "Sensei Spinner" },
  { value = "CAKE_RECOVER_HEALTH_AND_ENERGY_4", label = "Best Health & Energy Cake" },
  { value = "REVIVE_STONE", label = "Revive Stone" },
  { value = "CAKE_LEVEL_UP", label = "Level Up Cake" },
  { value = "FRUIT_XP_BOOST", label = "XP Boost Fruit" },
  { value = "SCENT_REPEL_LOWER_LEVEL", label = "Repel Scent" },
  { value = "LUX_LURE", label = "Lux Lure" },
}

local function itemLabel(uid)
  for _, item in ipairs(ITEMS) do
    if item.value == uid then
      return item.label
    end
  end
  return uid
end

---------------------------------------------------------------------------------------------------
-- Settings
---------------------------------------------------------------------------------------------------

local function key(id, label, default)
  return { key = id, label = label, type = "key", default = default }
end

local config = settings.define({
  key("keySpeedUp", "Key: Increase game speed", "numPad+"),
  key("keySpeedDown", "Key: Decrease game speed", "numPad-"),
  key("keySpeedReset", "Key: Reset game speed", "numPad*"),
  key("keyNoClip", "Key: Toggle noclip", "numPad/"),
  key("keyCatchAll", "Key: Catch all Coromon", "numPad1"),
  key("keySkipWild", "Key: Skip wild battles", "numPad2"),
  key("keyMaxSquad", "Key: Max out squad", "numPad3"),
  key("keyAddGold", "Key: Add gold", "numPad4"),
  key("keySkipTrainer", "Key: Skip trainer battles", "numPad5"),
  key("keyNoEnergyCost", "Key: No energy cost", "numPad6"),
  key("keyFastIntros", "Key: Fast battle intros", "numPad7"),
  key("keyHideUI", "Key: Hide world interface", "numPad8"),
  key("keyGiveItem", "Key: Give item", "numPad9"),
  key("keyNoDamage", "Key: No move damage", ""),
  {
    key = "goldAmount", label = "Gold per press", type = "choice", default = 5000,
    options = { 1000, 5000, 10000, 50000 },
  },
  {
    key = "item", label = "Item to give", type = "choice", default = "SPINNER_REGULAR_4", options = ITEMS,
    description = "The item the 'Give item' key adds to your inventory.",
  },
  {
    key = "itemAmount", label = "Items per press", type = "choice", default = 10,
    options = { 1, 5, 10, 25, 99 },
  },
})

---------------------------------------------------------------------------------------------------
-- Actions
---------------------------------------------------------------------------------------------------

_M.actions = {
  { "keySpeedUp", "Increase Game Speed", function() setGameSpeed(getGameSpeed() + 0.5) end },
  { "keySpeedDown", "Decrease Game Speed", function() setGameSpeed(getGameSpeed() - 0.5) end },
  { "keySpeedReset", "Reset Game Speed", function() setGameSpeed(1) end },
  { "keyNoClip", "Toggle Noclip", toggleDebug("NoClip", { { "game", "noClipMode" } }) },
  { "keyCatchAll", "Catch All Coromon",
    toggleDebug("CatchEmAll", { { "battle", "alwaysCatchSuccessfully" } }, { blockedOnline = true }) },
  { "keySkipWild", "Skip Wild Battles", toggleDebug("Skip Wild Battles", { { "coromon1", "skipWildBattles" } }) },
  { "keyMaxSquad", "Max Out Squad", function()
    if inOnlineBattle() then
      return message("Max Out Squad is disabled in online battles", "warning")
    end

    local count = 0
    for _, v in ipairs(globals.playerMonsters:getSquad()) do
      v:tryIncreaseLevel(100)
      v:setPotential(21)
      v:setHealthToMaxHealth()
      v:setEnergyToMaxOverchargedEnergy()
      count = count + 1
    end

    message("Maxed out " .. count .. " Coromon", "success")
  end },
  { "keyAddGold", "Add Gold", function()
    globals.playerCurrency:addGold(config.goldAmount)
    message("Added " .. config.goldAmount .. " Gold", "success")
  end },
  { "keySkipTrainer", "Skip Trainer Battles",
    toggleDebug("Skip Trainer Battles", { { "coromon1", "skipTrainerBattles" } }) },
  { "keyNoEnergyCost", "No Energy Cost",
    toggleDebug("No Energy Cost", { { "battle", "isNoSkillEnergyCost" } }, { blockedOnline = true }) },
  { "keyFastIntros", "Fast Battle Intros", toggleDebug("Fast Battle Intros", {
    { "battle", "skipEncounterOverlay" },
    { "battle", "skipTrainerSpawnAnimation" },
  }) },
  { "keyHideUI", "Hide World Interface", toggleDebug("Hide Interface", { { "UI", "hideWorldInterface" } }, {
    onChange = function(hidden)
      local worldInterface = globals.worldInterface
      if worldInterface and worldInterface:isCreated() then
        if hidden then worldInterface:hide() else worldInterface:show() end
      end
    end,
  }) },
  { "keyGiveItem", "Give Item", function()
    local item = globals.itemList[config.item]
    if not item then
      return message("Unknown item " .. tostring(config.item), "warning")
    end
    globals.playerInventory:addItem(item, config.itemAmount)
    message("Added " .. config.itemAmount .. "x " .. itemLabel(config.item), "success")
  end },
  { "keyNoDamage", "No Move Damage (everyone)",
    toggleDebug("No Move Damage", { { "battle", "isNoSkillDamage" } }, { blockedOnline = true }) },
}

for _, action in ipairs(_M.actions) do
  local settingKey, label, fn = action[1], action[2], action[3]
  hotkeys.add(function() return config[settingKey] end, function()
    local ok, err = pcall(fn)
    if not ok then
      print("[trainer] '" .. label .. "' failed: " .. tostring(err))
      pcall(message, label .. " failed", "warning")
    end
  end, label)
end

-- Turn battle cheats off when an online battle starts, so they never affect other players
hooks.add("classes.modules.battle.Battle", function(Battle)
  detour(Battle, "createOnline", function(original, ...)
    local disabled = false
    for _, flag in ipairs(BATTLE_CHEATS) do
      if globals.debugSettings[flag[1]][flag[2]] then
        globals.debugSettings[flag[1]][flag[2]] = false
        disabled = true
      end
    end

    if disabled then
      pcall(message, "Trainer: battle cheats turned off for online play", "warning")
    end

    return original(...)
  end)
end)

_M.config = config

return _M

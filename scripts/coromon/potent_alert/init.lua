-- Potent/Perfect Alert, written against Coromon v1.5.4 (see docs/game/1.5.4).
--
-- When a wild battle starts, the game calls playerStats:addPotentMonsterEncountered() for potential
-- category B ("potent") and playerStats:addPerfectMonsterEncountered() for category C ("perfect").
-- We wrap those two calls to show a notification.

local config = settings.define({
  { key = "potent", label = "Alert for potent Coromon", type = "boolean", default = true },
  { key = "perfect", label = "Alert for perfect Coromon", type = "boolean", default = true },
  { key = "sound", label = "Play a sound", type = "boolean", default = true },
})

local function alert(text)
  local MessageToast = globals.require("classes.interface.overlays.MessageToast")
  MessageToast:showAndHide(text, { intent = "success" })

  if config.sound then
    pcall(globals.soundHelper.playSound, globals.soundHelper, "levelUp")
  end
end

local function wrap(stats, functionName, settingKey, text)
  detour(stats, functionName, function(original, ...)
    local result = original(...)
    if config[settingKey] then
      local ok, err = pcall(alert, text)
      if not ok then
        print("[potent_alert] " .. tostring(err))
      end
    end
    return result
  end)
end

hooks.add("classes.modules.playerStats", function(stats)
  wrap(stats, "addPotentMonsterEncountered", "potent", "A potent Coromon appeared!")
  wrap(stats, "addPerfectMonsterEncountered", "perfect", "A PERFECT Coromon appeared!")
end)

return {
  name        = 'Potent Alert',
  description = 'Shows a notification (and plays a sound) when a potent or perfect Coromon appears in a wild battle.',
  author      = 'Zreezy',
  version     = 'v1.0',
}

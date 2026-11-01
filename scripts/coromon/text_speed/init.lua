-- Text Speed+, written against Coromon v1.5.4 (see docs/game/1.5.4).
--
-- The game's text speed setting goes up to 3x and is applied through textHelper:setTypeWriterSpeedFactor().
-- We wrap that function so a faster speed can be used instead.

local config = settings.define({
  {
    key = "speed", label = "Text speed", type = "choice", default = 6,
    options = {
      { value = 0, label = "Use game setting" },
      { value = 4, label = "4x" },
      { value = 6, label = "6x" },
      { value = 10, label = "10x" },
      { value = 25, label = "25x" },
    },
    description = "Replaces the game's text speed setting (1x to 3x) with a faster speed.",
  },
})

local function effective(factor)
  if config.speed > 0 then
    return config.speed
  end
  return factor
end

local function apply()
  local gameSetting = globals.gameSettings:getTypeWriterSpeedFactorSetting()
  globals.textHelper:setTypeWriterSpeedFactor(gameSetting)
end

hooks.add("classes.modules.textHelper", function(textHelper)
  detour(textHelper, "setTypeWriterSpeedFactor", function(original, self, factor, ...)
    return original(self, effective(factor), ...)
  end)

  -- The game already applied its own setting at startup, apply ours now
  local ok, err = pcall(apply)
  if not ok then
    print("[text_speed] " .. tostring(err))
  end
end)

config:onChange(function()
  pcall(apply)
end)

-- Re-apply once the title screen is up, in case game settings weren't loaded yet at startup
hooks.add("classes.interface.screens.titleScreen", function(titleScreen)
  detour(titleScreen, "new", function(original, ...)
    local result = original(...)
    pcall(apply)
    return result
  end)
end)

return {
  name        = 'Text Speed+',
  description = "Faster dialogue text than the game's 3x maximum. Defaults to 6x.",
  author      = 'Zreezy',
  version     = 'v1.0',
}

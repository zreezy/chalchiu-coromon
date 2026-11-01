local popup = require("popup")
local config = require("config")

-- Adds a small info button to the pause menu's top bar (squad screen) that opens the mod list.
-- Written against Coromon v1.5.4, see docs/game/1.5.4 for the game modules used here.
--
-- The button is an "inner" nav bar object, like the gold counter. Inner objects are laid out next to
-- each other by the nav bar. "Outer" buttons (abstractOuterTopBarButtonBuilder) are pinned to the
-- screen corner instead, so an extra one ends up on top of the game's own quit button.

local ok, innerNavBarObjectBuilder = pcall(globals.require,
  "classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder")

if not ok then
  print("[mod_info] Pause menu button unavailable on this game version: " .. tostring(innerNavBarObjectBuilder))
  return
end

local BUTTON_SIZE = 15 -- height of the inner top bar

local function makeButton()
  local button = innerNavBarObjectBuilder:new(BUTTON_SIZE, BUTTON_SIZE)

  local icon = globals.imageHelper:new(button, "images/interface/icons/otherIcons/infoIcon.png")
  if icon.height and icon.height > BUTTON_SIZE then
    local scale = BUTTON_SIZE / icon.height
    icon.xScale, icon.yScale = scale, scale
  end
  globals.magnet:center(icon, 0, 0, button)

  globals.inputHelper:addTouchable(button,
    globals.UIButton:createTouchableListener(globals.UIButtonTransition.fancyPress, function()
      popup:new()
    end)
  )

  return button
end

hooks.add("classes.interface.screens.SquadScreen", function(builder)
  detour(builder, "new", function(original, ...)
    local screen = original(...)

    if not config.pauseMenuButton then
      return screen
    end

    -- Never let the button break the pause menu itself
    local added, err = pcall(function()
      screen:addTopBarObject(makeButton(), "right")
    end)

    if not added then
      print("[mod_info] Could not add pause menu button: " .. tostring(err))
    end

    return screen
  end)
end)

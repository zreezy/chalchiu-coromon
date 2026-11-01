local popup = require("popup")

-- Adds a button to the top bar of the pause menu (squad screen) that opens the mod list.
-- Written against Coromon v1.5.4, see docs/game/1.5.4 for the game modules used here.

local ok, outerTopBarButtonBuilder = pcall(globals.require,
  "classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder")

if not ok then
  print("[mod_info] Pause menu button unavailable on this game version: " .. tostring(outerTopBarButtonBuilder))
  return
end

local function makeButton()
  local style = globals.UIContainerStyle.gradient_blueOrFluorescent
  local parentGroup, modsButton = outerTopBarButtonBuilder:new(style)

  local icon = globals.imageHelper:new(modsButton, "images/interface/icons/otherIcons/infoIcon.png")
  globals.magnet:center(icon, 0, -2, modsButton)

  globals.inputHelper:addTouchable(modsButton,
    globals.UIButton:createTouchableListener(globals.UIButtonTransition.fancyPress, function()
      popup:new()
    end)
  )

  return parentGroup
end

hooks.add("classes.interface.screens.SquadScreen", function(builder)
  detour(builder, "new", function(original, ...)
    local screen = original(...)

    -- Never let the button break the pause menu itself
    local added, err = pcall(function()
      screen:addTopBarObject(makeButton())
    end)

    if not added then
      print("[mod_info] Could not add pause menu button: " .. tostring(err))
    end

    return screen
  end)
end)

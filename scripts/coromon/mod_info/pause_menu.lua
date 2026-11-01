local popup = require("popup")

-- This module was removed/renamed in newer game versions. If it is missing, skip the pause menu
-- button instead of failing the whole mod (the popup on the title screen still works).
local ok, abstractOuterTopBarButtonBuilder = pcall(globals.require,
  "classes.interface.topBarObjects.abstractOuterTopBarButtonBuilder")

if not ok then
  print("[mod_info] Pause menu button unavailable on this game version: " .. tostring(abstractOuterTopBarButtonBuilder))
  return
end

local function makeButton()
  local parentGroup, modsButton = abstractOuterTopBarButtonBuilder:new(globals.UIContainerStyle.blue)
  local icon = (globals.imageHelper:new(modsButton, "images/interface/icons/itemIcons/HOLD_EXTRA_XP.png"))

  globals.magnet:center(icon, 0, 0, modsButton)

  globals.inputHelper:addTouchable(modsButton, globals.inputHelper:onReleaseWithinBounds(
    function(event)
      globals.soundHelper:playSound("menuSelect")
      globals.transition.press(event.target,
        function()
          popup:new()
        end
      )
    end)
  )

  return parentGroup
end

local once = false

hooks.add("classes.interface.screens.pauseMenuScreen", function(table)
  detour(table, "new", function(original, ...)
    once = false

    local restore = detour(globals.pauseMenuScreenBuilder, "new", function(original, ...)
      local rtn = original(...)

      if not once then
        rtn:addTopBarObject(makeButton())
        once = true
      end

      return rtn
    end)

    local ret = original(...)
    restore()

    return ret
  end)
end)

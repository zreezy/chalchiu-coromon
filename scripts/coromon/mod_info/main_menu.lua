local popup = require("popup")
local config = require("config")
local updates = require("updates")

-- Title screen: show the mod list once on startup, and add a "Mods" button in the top-right corner.
-- The bottom corners are used by the game's social media buttons. Written against Coromon v1.5.4.

local function addModsButton(screen)
    local style = globals.UIContainerStyle.gradient_blueOrFluorescent
    local text = globals.textHelper:newPrepared("outline_8", {
        text = "Mods",
        fillEffect = style:getFontOutlineFillEffect(),
    })

    local button = globals.UIContainerBuilder:new(screen, style, math.max(40, text.width + 14), 18)
    globals.magnet:topRight(button, 6, 6) -- no parent: relative to the visible screen

    local label = globals.textHelper:spawnPrepared(button, text)
    globals.magnet:center(label, 0, -3, button) -- the button has a bottom lip, centre on its face

    globals.inputHelper:addMouseHoverable(button, globals.UIButton:showHoverVariantOnHover())
    globals.inputHelper:addTouchable(button,
        globals.UIButton:createTouchableListener(globals.UIButtonTransition.fancyPress, function()
            popup:new("title screen button")
        end)
    )
end

local once = false

hooks.add("classes.interface.screens.titleScreen", function(module)
    detour(module, "new", function(original, ...)
        local screen = original(...)

        updates.check() -- once per game start, see updates.lua

        if config.mainMenuButton then
            local ok, err = pcall(addModsButton, screen)
            if not ok then
                log.error("Could not add main menu button: " .. tostring(err))
            end
        end

        if not once and config.showOnStartup then
            popup:new("startup")
            once = true
        end

        return screen
    end)
end)

hotkeys.add(function() return config.openKey end, function()
    popup:new("hotkey")
end, "Open mod list")

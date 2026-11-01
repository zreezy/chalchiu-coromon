local AbstractSelectPopup = globals.require("classes.interface.overlays.AbstractSelectPopup")
local MessageToast = globals.require("classes.interface.overlays.MessageToast")

-- The Loaded Mods popup and each mod's settings page, built on the game's AbstractSelectPopup.
--
-- Buttons: the blue button's label follows the selected row ("Settings", "Turn on", "Next", ...),
-- the red button (or Esc) closes the list or goes back from a settings page to the list.
-- Settings are saved as soon as they change, there is no separate save step.

local _M = {}

local always = function()
    return true
end

local function escape(text)
    return (tostring(text):gsub("<", "("):gsub(">", ")"))
end

local function toast(text, intent)
    MessageToast:showAndHide(text, { intent = intent or "info" })
end

local function label(container, text, align)
    local object = globals.textHelper:new(container, "outline_8", escape(text))
    globals.magnet[align](globals.magnet, object, 2, 0, container)
    return object
end

local function description(text, width)
    return globals.textHelper:newPrepared("outline_8", { text = escape(text), width = width })
end

-- Blue button with a text label that is recreated whenever the selection changes
local function actionButton(params, getLabel, onPress)
    params:setConfirmButton(
        function(button, group, item)
            local style = globals.UIContainerStyle.gradient_blueOrFluorescent
            local text = globals.textHelper:newPrepared("outline_8", {
                text = getLabel(item),
                fillEffect = style:getFontOutlineFillEffect(),
            })
            local object = globals.textHelper:spawnPrepared(group, text)
            globals.magnet:center(object, 0, -2, button)
        end,
        onPress,
        true
    )
end

-- Red button (and Esc)
local function backButton(params, onBack)
    params:setCancellable(onBack)
    params:setCancellableByButton(onBack)
end

---------------------------------------------------------------------------------------------------
-- Settings page for one mod
---------------------------------------------------------------------------------------------------

local KEY_HELP = "Press Set key, then the key you want. Esc cancels, Backspace removes the key."
local CLEAR_KEYS = { deleteBack = true, backspace = true, delete = true, deleteForward = true }

local function optionsText(config, entry)
    local labels = {}
    for _, option in ipairs(entry.options or {}) do
        local value = type(option) == "table" and option.value or option
        local text = type(option) == "table" and (option.label or option.value) or option
        local current = config:get(entry.key) == value
        labels[#labels + 1] = current and ("[" .. tostring(text) .. "]") or tostring(text)
    end
    return "Options: " .. table.concat(labels, ", ")
end

local function actionLabel(config, item)
    if not item then
        return "Close"
    end
    local kind = item.entry.type
    if kind == "boolean" then
        return config:get(item.key) and "Turn off" or "Turn on"
    elseif kind == "key" then
        return "Set key"
    end
    return "Next"
end

function _M:openSettings(modName, config, selectedKey)
    local items = {}

    for _, entry in ipairs(config:entries()) do
        if entry.type ~= "string" then -- text settings can only be edited in the settings file
            table.insert(items, { shouldBeShown = always, key = entry.key, entry = entry })
        end
    end

    local params = AbstractSelectPopup:newParams(modName .. " Settings", items, function(container, item)
        label(container, item.entry.label, "centerLeft")
        label(container, config:format(item.key), "centerRight")
    end)

    params:setGetDescriptionFunction(function(item, width)
        local lines = {}
        if item.entry.description then
            lines[#lines + 1] = item.entry.description
        end
        if item.entry.type == "choice" then
            lines[#lines + 1] = optionsText(config, item.entry)
        elseif item.entry.type == "key" then
            lines[#lines + 1] = KEY_HELP
        end
        lines[#lines + 1] = "Changes are saved automatically."
        return description(table.concat(lines, "\n"), width)
    end)

    params:setConvertToCategoryFunction(function()
    end)

    if selectedKey then
        params:setIsSelectedObjectFunction(function(item)
            return item.key == selectedKey
        end)
    end

    local function reopen(key)
        _M:openSettings(modName, config, key)
    end

    actionButton(params, function(item) return actionLabel(config, item) end, function(item, closePopup)
        if not item then
            return closePopup()
        end

        if item.entry.type == "key" then
            closePopup(function()
                toast("Press a key for '" .. item.entry.label .. "' (Esc: cancel, Backspace: remove)")
                hotkeys.capture(function(keyName)
                    if keyName == nil then
                        toast("Cancelled")
                    elseif CLEAR_KEYS[keyName] then
                        config:set(item.key, "")
                        toast(item.entry.label .. ": removed", "success")
                    else
                        config:set(item.key, keyName)
                        toast(item.entry.label .. ": " .. keyName, "success")
                    end
                    reopen(item.key)
                end)
            end)
        else
            config:cycle(item.key)
            closePopup(function()
                reopen(item.key)
            end)
        end
    end)

    backButton(params, function()
        _M:new(config) -- back to the list, with this mod selected
    end)

    AbstractSelectPopup:new(params):open(function()
    end)
end

---------------------------------------------------------------------------------------------------
-- Loaded mods list
---------------------------------------------------------------------------------------------------

function _M:new(selectedConfig)
    local mods  = chalchiu:mods()
    local items = {}

    for i = 1, #mods do
        local config = chalchiu.settings.get(mods[i]:id())
        local hasSettings = config ~= nil and #config:entries() > 0

        table.insert(items, {
            shouldBeShown = always,
            --
            name = mods[i]:name(),
            author = mods[i]:author(),
            version = mods[i]:version(),
            description = mods[i]:description(),
            config = hasSettings and config or nil,
        })
    end

    local params = AbstractSelectPopup:newParams("Loaded Mods", items, function(container, item)
        label(container, item.name, "centerLeft")
        label(container, item.version, "center")
        label(container, "(by " .. item.author .. ")", "centerRight")
    end)

    params:setGetDescriptionFunction(function(item, width)
        local text = item.description
        if not item.config then
            text = text .. "\nThis mod has no settings."
        end
        return description(text, width)
    end)

    params:setConvertToCategoryFunction(function()
    end)

    if selectedConfig then
        params:setIsSelectedObjectFunction(function(item)
            return item.config == selectedConfig
        end)
    end

    actionButton(params, function(item)
        return (item and item.config) and "Settings" or "Close"
    end, function(item, closePopup)
        if item and item.config then
            closePopup(function()
                _M:openSettings(item.name, item.config)
            end)
        else
            closePopup()
        end
    end)

    backButton(params, function()
    end)

    AbstractSelectPopup:new(params):open(function()
    end)
end

return _M

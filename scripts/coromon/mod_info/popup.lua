local AbstractSelectPopup = globals.require("classes.interface.overlays.AbstractSelectPopup")
local MessageToast = globals.require("classes.interface.overlays.MessageToast")
local updates = require("updates")

-- The Loaded Mods popup and each mod's settings page, built on the game's AbstractSelectPopup.
--
-- Buttons: the blue button's label follows the selected row ("Settings", "Turn on", "Next", ...),
-- the red button closes the list or goes back from a settings page to the list. So do the game's
-- Start keys (Esc, Enter, Right Shift) and Back keys (Backspace, X, Left Shift).
-- Clicking outside the popup does nothing: the game's setCancellable would close it on any click
-- that isn't handled by the popup, which was confusing.
-- Settings are saved as soon as they change, there is no separate save step.
--
-- Everything the user does here is logged to chalchiu.log as "[mod_info] [ui] ...".

local _M = {}

local always = function()
    return true
end

local function escape(text)
    return (tostring(text):gsub("<", "("):gsub(">", ")"))
end

local function ui(...)
    log.info("[ui]", ...)
end

local function toast(text, intent)
    log.info("[toast] " .. tostring(text))
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
local function actionButton(params, title, describe, getLabel, onPress)
    params:setOnGridBoxSelect(function(item)
        if item then
            log.debug("[ui]", title .. ": selected '" .. describe(item) .. "'")
        end
    end)
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
        function(item, closePopup)
            ui(title .. ": pressed '" .. getLabel(item) .. "'" .. (item and (" on '" .. describe(item) .. "'") or ""))
            onPress(item, closePopup)
        end,
        true
    )
end

-- Creates and opens the popup. The red button and the game's Start/Back keys call onBack.
local function open(params, title, onBack)
    params:setCancellableByButton(function()
        ui(title .. ": red button")
        onBack()
    end)

    local popup = AbstractSelectPopup:new(params)
    popup:setCloseOnStartButton(function()
        ui(title .. ": closed with a Start key (Esc, Enter or Right Shift)")
        onBack()
    end)
    popup:setCloseOnBackButton(function()
        ui(title .. ": closed with a Back key (Backspace, X or Left Shift)")
        onBack()
    end)

    popup:open(function()
    end)
    ui("Opened '" .. title .. "'")
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

    local title = modName .. " Settings"
    local function describe(item)
        return item.entry.label .. " = " .. config:format(item.key)
    end

    actionButton(params, title, describe, function(item) return actionLabel(config, item) end, function(item, closePopup)
        if not item then
            return closePopup()
        end

        if item.entry.type == "key" then
            closePopup(function()
                toast("Press a key for '" .. item.entry.label .. "' (Esc: cancel, Backspace: remove)")
                ui("Waiting for a key for '" .. item.entry.label .. "'")
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

    open(params, title, function()
        _M:new(config, "back from " .. title) -- back to the list, with this mod selected
    end)
end

---------------------------------------------------------------------------------------------------
-- Loaded mods list
---------------------------------------------------------------------------------------------------

-- source: what opened the list, for the log ("title screen button", "hotkey", ...)
function _M:new(selectedConfig, source)
    if type(selectedConfig) == "string" then
        selectedConfig, source = nil, selectedConfig
    end
    ui("Opening 'Loaded Mods' (" .. tostring(source or "unknown") .. ")")

    local mods  = chalchiu:mods()
    local items = {}

    -- A newer chalchiu release on GitHub goes first, so it's selected when the list opens
    if updates.latest then
        table.insert(items, {
            shouldBeShown = always,
            isUpdate = true,
            name = "Update available!",
            version = "v" .. updates.latest.version,
            description = "chalchiu v" .. updates.latest.version .. " is out (you have v" .. tostring(updates.installed)
                .. "). Press Download to open the release page, then unzip it over your game folder. Settings are kept.",
        })
    end

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
        label(container, item.isUpdate and "New!" or ("(by " .. item.author .. ")"), "centerRight")
    end)

    params:setGetDescriptionFunction(function(item, width)
        local text = item.description
        if not item.config and not item.isUpdate then
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

    local function describe(item)
        return item.name
    end

    actionButton(params, "Loaded Mods", describe, function(item)
        if item and item.isUpdate then
            return "Download"
        end
        return (item and item.config) and "Settings" or "Close"
    end, function(item, closePopup)
        if item and item.isUpdate then
            closePopup(function()
                updates.openDownload()
            end)
        elseif item and item.config then
            closePopup(function()
                _M:openSettings(item.name, item.config)
            end)
        else
            closePopup()
        end
    end)

    open(params, "Loaded Mods", function()
        ui("Closed 'Loaded Mods'")
    end)
end

return _M

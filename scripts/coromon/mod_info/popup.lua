local AbstractSelectPopup = globals.require("classes.interface.overlays.AbstractSelectPopup")
local MessageToast = globals.require("classes.interface.overlays.MessageToast")

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

local function confirmButton(params, onPress)
    params:setConfirmButton(
        function(button)
            local icon = globals.imageHelper:new(button, "images/interface/icons/otherIcons/confirm.png")
            globals.magnet:center(icon, 0, -1, button)
        end,
        onPress
    )
end

---------------------------------------------------------------------------------------------------
-- Settings page for one mod
---------------------------------------------------------------------------------------------------

local HINTS = {
    boolean = "Press the check button to turn this on or off.",
    number = "Press the check button to step through the values.",
    choice = "Press the check button to step through the options.",
    key = "Press the check button, then press the key you want (Esc to cancel, Backspace to unbind).",
}

local CLEAR_KEYS = { deleteBack = true, backspace = true, delete = true, deleteForward = true }

function _M:openSettings(modName, config, selectedKey)
    local items = {}

    for _, entry in ipairs(config:entries()) do
        if HINTS[entry.type] then -- string settings can only be edited in the settings file
            table.insert(items, { shouldBeShown = always, key = entry.key, entry = entry })
        end
    end

    local params = AbstractSelectPopup:newParams(modName .. " Settings", items, function(container, item)
        label(container, item.entry.label, "centerLeft")
        label(container, config:format(item.key), "centerRight")
    end)

    params:setGetDescriptionFunction(function(item, width)
        local text = item.entry.description and (item.entry.description .. "\n\n") or ""
        return description(text .. HINTS[item.entry.type], width)
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

    confirmButton(params, function(item, closePopup)
        if not item then
            return closePopup()
        end

        if item.entry.type == "key" then
            closePopup(function()
                toast("Press a key for '" .. item.entry.label .. "' (Esc: cancel, Backspace: unbind)")
                hotkeys.capture(function(keyName)
                    if keyName == nil then
                        toast("Cancelled")
                    elseif CLEAR_KEYS[keyName] then
                        config:set(item.key, "")
                        toast(item.entry.label .. ": unbound", "success")
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

    params:setCancellable()
    AbstractSelectPopup:new(params):open(function()
    end)
end

---------------------------------------------------------------------------------------------------
-- Loaded mods list
---------------------------------------------------------------------------------------------------

function _M:new()
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
        if item.config and not text:find("check button", 1, true) then
            text = text .. " Press the check button for settings."
        end
        return description(text, width)
    end)

    params:setConvertToCategoryFunction(function()
    end)

    confirmButton(params, function(item, closePopup)
        if item and item.config then
            closePopup(function()
                _M:openSettings(item.name, item.config)
            end)
        else
            closePopup()
        end
    end)

    params:setCancellable()
    AbstractSelectPopup:new(params):open(function()
    end)
end

return _M

-- Update check: when the game starts, asks GitHub for the latest chalchiu release and compares it
-- with the installed loader version (chalchiu.version). If it's newer, shows a toast and adds a
-- "Download" row to the top of the Loaded Mods list (see popup.lua).
--
-- One request per game start to GitHub's public API, nothing is sent except the request itself
-- (with a "chalchiu/<version>" User-Agent, which GitHub requires). Off with the "Check for updates"
-- setting. Failures (offline, rate limited, ...) are only logged.

local config = require("config")

local REPOSITORY = "zreezy/chalchiu-coromon"
local API_URL = "https://api.github.com/repos/" .. REPOSITORY .. "/releases/latest"
local RELEASES_URL = "https://github.com/" .. REPOSITORY .. "/releases/latest"

local _M = {
    installed = chalchiu.version,
    latest = nil, -- { version = "3.4.0", url = "https://github.com/..." } when a newer release exists
}

-- "3.5.0-test.1a2b3c4" -> { 3, 5, 0 }, "-test.1a2b3c4"
local function parseVersion(text)
    local numbers, suffix = tostring(text or ""):gsub("^v", ""):match("^([%d%.]*)(.*)$")
    local parts = {}
    for number in (numbers or ""):gmatch("%d+") do
        parts[#parts + 1] = tonumber(number)
    end
    return parts, suffix or ""
end

-- true if version a is newer than version b ("3.10.0" > "3.9.1"). A test build ("3.5.0-test.1a2b3c4")
-- is older than the release with the same number, so testers are told when the real 3.5.0 is out.
function _M.isNewer(a, b)
    local x, xs = parseVersion(a)
    local y, ys = parseVersion(b)
    if #x == 0 or #y == 0 then
        return false
    end
    for i = 1, math.max(#x, #y) do
        local p, q = x[i] or 0, y[i] or 0
        if p ~= q then
            return p > q
        end
    end
    return xs == "" and ys ~= ""
end

local function toast(text)
    local MessageToast = globals.require("classes.interface.overlays.MessageToast")
    log.info("[toast] " .. text)
    MessageToast:showAndHide(text, { intent = "info" })
end

local function parseRelease(body)
    local ok, data = pcall(function() return globals.json.decode(body) end)
    if ok and type(data) == "table" then
        return data.tag_name, data.html_url
    end
    -- fall back to a plain search if json isn't available for some reason
    return body:match('"tag_name"%s*:%s*"([^"]+)"'), body:match('"html_url"%s*:%s*"([^"]+/releases/tag/[^"]+)"')
end

local function onResponse(event)
    if event.isError or event.status ~= 200 or type(event.response) ~= "string" then
        log.warn("[updates] Could not check for updates (status " .. tostring(event.status) .. ")")
        return
    end

    local tag, url = parseRelease(event.response)
    if not tag then
        log.warn("[updates] Could not read the latest release")
        return
    end

    if not (url and url:match("^https://github%.com/")) then
        url = RELEASES_URL -- only ever open GitHub
    end

    local latest = tag:gsub("^v", "")
    if _M.isNewer(latest, _M.installed) then
        _M.latest = { version = latest, url = url or RELEASES_URL }
        log.info("[updates] chalchiu v" .. latest .. " is available (installed: v" .. tostring(_M.installed) .. ")")
        toast("chalchiu v" .. latest .. " is available! Open Mods to download it.")
    else
        log.info("[updates] Up to date (installed: v" .. tostring(_M.installed) .. ", latest: v" .. latest .. ")")
    end
end

local checked = false

function _M.check()
    if checked or not config.checkForUpdates then
        return
    end
    checked = true

    local network = globals.network
    if not (network and network.request and _M.installed) then
        log.warn("[updates] Update check unavailable")
        return
    end

    log.debug("[updates] Checking " .. API_URL)
    local ok, err = pcall(network.request, API_URL, "GET", function(event)
        local fine, problem = pcall(onResponse, event)
        if not fine then
            log.error("[updates] " .. tostring(problem))
        end
    end, {
        headers = { ["User-Agent"] = "chalchiu/" .. tostring(_M.installed), ["Accept"] = "application/vnd.github+json" },
        timeout = 10,
    })
    if not ok then
        log.warn("[updates] Could not check for updates: " .. tostring(err))
    end
end

function _M.openDownload()
    local url = _M.latest and _M.latest.url or RELEASES_URL
    log.info("[updates] Opening " .. url)
    globals.system.openURL(url)
end

return _M

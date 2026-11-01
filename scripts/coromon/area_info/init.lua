-- Area Encounter Info, written against Coromon v1.5.4 (see docs/game/1.5.4).
--
-- Press the key in the overworld to see the Coromon that live in your current area.
--
-- List view (default): one row per Coromon with its dex number, name, whether you've seen or caught
-- it, and its approximate share of encounters in the area. The blue button opens the game's own
-- world map location popup (worldLocationDetailsPopupBuilder) with the Coromon pictures.
--
-- The share comes from EncounterZoneList:getChanceByMonsterUIDInMapFiles, which adds up the
-- encounter weights of every zone (grass, water, ...) in the area, so it's approximate. When the
-- save randomizes every encounter the game returns nothing, and so do we.
--
-- "Show undiscovered Coromon" reveals names in the list and, while the game popup is being built,
-- makes playerStats:hasSeenMonster return true so it draws them instead of silhouettes.

local AbstractSelectPopup = globals.require("classes.interface.overlays.AbstractSelectPopup")

local config = settings.define({
  { key = "key", label = "Key: Show area encounters", type = "key", default = "numPad0" },
  {
    key = "view", label = "View", type = "choice", default = "list",
    options = { { value = "list", label = "List with names" }, { value = "game", label = "Game's map popup" } },
    description = "What the key opens. The list has a button for the game's popup.",
  },
  {
    key = "showUndiscovered", label = "Show undiscovered Coromon", type = "boolean", default = false,
    description = "Reveal Coromon you haven't seen yet (spoilers).",
  },
})

local function toast(text, intent)
  local MessageToast = globals.require("classes.interface.overlays.MessageToast")
  log.info("[toast] " .. tostring(text))
  MessageToast:showAndHide(text, { intent = intent or "info" })
end

local function escape(text)
  return (tostring(text):gsub("<", "("):gsub(">", ")"))
end

---------------------------------------------------------------------------------------------------
-- Data
---------------------------------------------------------------------------------------------------

local function locationName(location)
  local ok, name = pcall(function() return globals.worldLocationUtility:getLocalised(location) end)
  return ok and name or location
end

-- { { uid, number, name, description, share, seen, owned }, ... } sorted by dex number
local function encounters(details)
  local chances = globals.EncounterZoneList:getChanceByMonsterUIDInMapFiles(details.mapFilesWithEncounterZones)
  local total = 0
  for _, chance in pairs(chances) do
    total = total + chance
  end

  local list = {}
  for uid, chance in pairs(chances) do
    local data = globals.monsterDataList[uid]
    if data then
      list[#list + 1] = {
        uid = uid,
        number = data:getNumber(),
        name = data:getName(),
        description = data:getDescription(),
        share = total > 0 and chance / total * 100 or 0,
        seen = globals.playerStats:hasSeenMonster(uid),
        owned = globals.playerStats:hasOwnedMonster(uid),
      }
    end
  end
  table.sort(list, function(a, b) return a.number < b.number end)
  return list
end

local function shareText(share)
  if share < 1 then
    return "<1%"
  end
  return string.format("~%d%%", math.floor(share + 0.5))
end

local function statusText(entry)
  return entry.owned and "Caught" or entry.seen and "Seen" or "Not seen"
end

---------------------------------------------------------------------------------------------------
-- Views
---------------------------------------------------------------------------------------------------

local function openGamePopup(location)
  local popupBuilder = globals.require("classes.interface.overlays.worldLocationDetailsPopupBuilder")
  local playerStats = globals.playerStats
  local original = playerStats.hasSeenMonster

  if config.showUndiscovered then
    playerStats.hasSeenMonster = function() return true end
  end
  local ok, result = pcall(function() return popupBuilder:new(location, false, nil) end)
  playerStats.hasSeenMonster = original -- always restore, even if building the popup failed

  if not ok then
    error(result, 0)
  end
  result:open()
  log.info("[ui] Opened the game's popup for '" .. location .. "'" .. (config.showUndiscovered and " (showing undiscovered)" or ""))
end

local function openList(location, list)
  local title = locationName(location)
  local reveal = config.showUndiscovered

  local function visible(entry)
    return entry.seen or reveal
  end

  local items = {}
  for _, entry in ipairs(list) do
    entry.shouldBeShown = function() return true end
    items[#items + 1] = entry
  end

  local params = AbstractSelectPopup:newParams(title, items, function(container, entry)
    local name = "#" .. tostring(entry.number) .. " " .. (visible(entry) and entry.name or "???")
    local left = globals.textHelper:new(container, "outline_8", escape(name))
    globals.magnet:centerLeft(left, 2, 0, container)
    local status = globals.textHelper:new(container, "outline_8", statusText(entry))
    globals.magnet:center(status, 20, 0, container)
    local share = globals.textHelper:new(container, "outline_8", escape(shareText(entry.share)))
    globals.magnet:centerRight(share, 2, 0, container)
  end)

  params:setGetDescriptionFunction(function(entry, width)
    local text
    if visible(entry) then
      text = entry.description or ""
    else
      text = "You haven't seen this Coromon yet. 'Show undiscovered Coromon' in this mod's settings reveals it."
    end
    text = text .. "\nAbout " .. shareText(entry.share):gsub("~", "") .. " of encounters here (approximate)."
    return globals.textHelper:newPrepared("outline_8", { text = escape(text), width = width })
  end)

  params:setConvertToCategoryFunction(function()
  end)

  params:setOnGridBoxSelect(function(entry)
    if entry then
      log.debug("[ui] " .. title .. ": selected #" .. tostring(entry.number) .. " " .. tostring(entry.uid))
    end
  end)

  -- Blue button: the game's popup with pictures
  params:setConfirmButton(
    function(button, group)
      local style = globals.UIContainerStyle.gradient_blueOrFluorescent
      local text = globals.textHelper:newPrepared("outline_8", { text = "Pictures", fillEffect = style:getFontOutlineFillEffect() })
      local object = globals.textHelper:spawnPrepared(group, text)
      globals.magnet:center(object, 0, -2, button)
    end,
    function(_, closePopup)
      log.info("[ui] " .. title .. ": pressed 'Pictures'")
      closePopup(function()
        local ok, err = pcall(openGamePopup, location)
        if not ok then
          log.error(tostring(err))
        end
      end)
    end
  )

  local function onClose(how)
    return function()
      log.info("[ui] " .. title .. ": closed with " .. how)
    end
  end

  -- Red button, Start keys and Back keys close; clicking outside doesn't (see mod_info/popup.lua)
  params:setCancellableByButton(onClose("the red button"))
  local popup = AbstractSelectPopup:new(params)
  popup:setCloseOnStartButton(onClose("a Start key (Esc, Enter or Right Shift)"))
  popup:setCloseOnBackButton(onClose("a Back key (Backspace, X or Left Shift)"))
  popup:open(function()
  end)
  log.info("[ui] Opened the encounter list for '" .. location .. "' (" .. #list .. " Coromon)")
end

---------------------------------------------------------------------------------------------------
-- Key
---------------------------------------------------------------------------------------------------

local function showAreaInfo()
  if globals.Battle and globals.Battle:isCreated() then
    return toast("Not available during battles", "warning")
  end
  if globals.pauseMenu and globals.pauseMenu:isCreated() then
    return
  end
  if not (globals.worldHelper and globals.worldHelper:isCreated()) then
    return
  end

  local location = globals.worldHelper:getWorldLocation()
  local details = location and globals.worldLocationList[location]
  if not details or not details.mapFilesWithEncounterZones then
    return toast("No encounter info for this area")
  end

  if config.view == "game" then
    return openGamePopup(location)
  end

  local list = encounters(details)
  if #list == 0 then
    return toast("No wild Coromon here, or encounters are randomized in this save")
  end
  openList(location, list)
end

hotkeys.add(function() return config.key end, function()
  local ok, err = pcall(showAreaInfo)
  if not ok then
    log.error(tostring(err))
    pcall(toast, "Could not show area info", "warning")
  end
end, "Show area encounters")

return {
  name        = 'Area Encounter Info',
  description = "Press numPad0 in the overworld to list the Coromon in your area: names, how common they are, and which ones you've seen.",
  author      = 'Zreezy',
  version     = 'v1.1',
}

-- Area Encounter Info, written against Coromon v1.5.4 (see docs/game/1.5.4).
--
-- Opens the game's own world map location popup (worldLocationDetailsPopupBuilder) for the area
-- you are in: which Coromon live there, how likely they are, and which ones you have seen.
-- Without a teleport callback the popup does not offer teleporting, so it is safe to open anywhere.

local config = settings.define({
  { key = "key", label = "Key: Show area encounters", type = "key", default = "numPad0" },
})

local function toast(text, intent)
  local MessageToast = globals.require("classes.interface.overlays.MessageToast")
  MessageToast:showAndHide(text, { intent = intent or "info" })
end

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

  local popupBuilder = globals.require("classes.interface.overlays.worldLocationDetailsPopupBuilder")
  popupBuilder:new(location, false, nil):open()
end

hotkeys.add(function() return config.key end, function()
  local ok, err = pcall(showAreaInfo)
  if not ok then
    print("[area_info] " .. tostring(err))
    pcall(toast, "Could not show area info", "warning")
  end
end, "Show area encounters")

return {
  name        = 'Area Encounter Info',
  description = "Press numPad0 in the overworld to see the Coromon in your area, their chances and which ones you've seen.",
  author      = 'Zreezy',
  version     = 'v1.0',
}

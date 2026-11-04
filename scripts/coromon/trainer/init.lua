local trainer = require("hooks")

-- Keep this short: the Loaded Mods popup sizes its description area to the longest description,
-- so a long one squeezes out the mod list. The hotkeys are listed on the settings page instead.
local function getDescription()
	return "Hotkeys for game speed, noclip, catching, skipping battles, gold, items and more. "
		.. "Press Settings to see and change the keys."
end

return {
	name        = 'Coromon Trainer',
	description = getDescription(),
	author      = 'Curve',
	version     = 'v1.6',
}

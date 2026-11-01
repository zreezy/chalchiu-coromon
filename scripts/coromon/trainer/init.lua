local trainer = require("hooks")

local function getDescription()
	local rtn = "A Coromon Trainer. Press the check button to change keys and amounts.\n"
	for _, action in ipairs(trainer.actions) do
		local key = trainer.config:format(action[1])
		rtn = rtn .. string.format("[%s] %s\n", key, action[2])
	end
	return rtn
end

return {
	name        = 'Coromon Trainer',
	description = getDescription(),
	author      = 'Curve',
	version     = 'v1.3',
}

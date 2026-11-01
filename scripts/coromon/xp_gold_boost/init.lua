-- XP & Gold Boost, written against Coromon v1.5.4 (see docs/game/1.5.4).
--
-- battleEffectUtility:mutateXpEarned() is where the game applies XP Boosters and XP fruit, and
-- battleEffectUtility:mutateTrainerBattleGoldBounty() is where trainer gold rewards are adjusted.
-- Both return the final value, so we multiply what they return. Online battles are left alone.

local MULTIPLIERS = {
  { value = 1, label = "Off (1x)" },
  { value = 1.5, label = "1.5x" },
  { value = 2, label = "2x" },
  { value = 3, label = "3x" },
  { value = 5, label = "5x" },
  { value = 10, label = "10x" },
}

local config = settings.define({
  { key = "xp", label = "XP multiplier", type = "choice", default = 2, options = MULTIPLIERS },
  { key = "gold", label = "Trainer gold multiplier", type = "choice", default = 1, options = MULTIPLIERS },
})

local function inOnlineBattle()
  local Battle = globals.Battle
  return Battle and Battle:isCreated() and Battle:isCreatedAsOnline()
end

local function boost(value, multiplier)
  if type(value) ~= "number" or multiplier == 1 or inOnlineBattle() then
    return value
  end
  return math.floor(value * multiplier)
end

hooks.add("classes.modules.utilities.battleEffectUtility", function(utility)
  detour(utility, "mutateXpEarned", function(original, ...)
    return boost(original(...), config.xp)
  end)

  detour(utility, "mutateTrainerBattleGoldBounty", function(original, ...)
    return boost(original(...), config.gold)
  end)
end)

return {
  name        = 'XP & Gold Boost',
  description = 'Multiplies XP earned in battles and gold from trainer battles. Defaults to 2x XP. Has no effect in online battles.',
  author      = 'Zreezy',
  version     = 'v1.0',
}

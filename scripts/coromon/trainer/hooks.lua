-- Coromon Trainer, updated for Coromon v1.5.4 (see docs/game/1.5.4 for the game modules used here)

-- MessageToast is the game's own small notification that hides itself. Unlike dialogs it never takes
-- over input, so it is safe to show from a key press anywhere (world, menus, battles).
local MessageToast = globals.require("classes.interface.overlays.MessageToast")

local _M = {}

local function message(text, intent)
  MessageToast:showAndHide(text, { intent = intent or "info" })
end

-- debugSettings was split into sections (game, battle, coromon1, ...) in newer game versions
local function setting(section, name)
  return {
    get = function()
      return globals.debugSettings[section][name]
    end,
    toggle = function()
      local value = not globals.debugSettings[section][name]
      globals.debugSettings[section][name] = value
      return value
    end,
  }
end

local noClip = setting("game", "noClipMode")
local alwaysCatch = setting("battle", "alwaysCatchSuccessfully")
local skipWildBattles = setting("coromon1", "skipWildBattles")

local function onOff(value)
  return value and "[on]" or "[off]"
end

-- display:setDebugTimeScale updates display, timer, transition and sprite animations together
local function setGameSpeed(value)
  value = math.max(0.5, value)
  globals.display:setDebugTimeScale(value)
  return value
end

local function getGameSpeed()
  return globals.display.timeScale or 1
end

_M.mods = {
  { "numPad+", "Increase Game Speed", function()
    message("Game Speed: " .. setGameSpeed(getGameSpeed() + 0.5) .. "x")
  end
  },
  { "numPad-", "Decrease Game Speed", function()
    message("Game Speed: " .. setGameSpeed(getGameSpeed() - 0.5) .. "x")
  end
  },
  { "numPad*", "Reset Game Speed", function()
    message("Game Speed: " .. setGameSpeed(1) .. "x")
  end
  },
  { "numPad/", "Toggle Noclip", function()
    message("NoClip: " .. onOff(noClip.toggle()))
  end
  },
  { "numPad1", "Catch All Coromon", function()
    message("CatchEmAll: " .. onOff(alwaysCatch.toggle()))
  end
  },
  { "numPad2", "Skip Wild Battles", function()
    message("Skip Battles: " .. onOff(skipWildBattles.toggle()))
  end
  },
  { "numPad3", "Max Out Squad", function()
    local count = 0

    for _, v in ipairs(globals.playerMonsters:getSquad()) do
      v:tryIncreaseLevel(100)
      v:setPotential(21)
      v:setHealthToMaxHealth()
      v:setEnergyToMaxOverchargedEnergy()
      count = count + 1
    end

    message("Maxed out " .. count .. " Coromon", "success")
  end
  },
  { "numPad4", "Add 5000 Gold", function()
    globals.playerCurrency:addGold(5000)
    message("Added 5000 Gold", "success")
  end
  },
}

local listening = false

hooks.add("classes.interface.screens.titleScreen", function(module)
  detour(module, "new", function(original, ...)
    local ret = original(...)

    -- The title screen is created again when returning to it, only listen once
    if not listening then
      listening = true

      globals.eventManager:listen("key", function(event)
        if event.phase ~= "down" then
          return false
        end

        for _, v in ipairs(_M.mods) do
          if event.keyName == v[1] then
            local ok, err = pcall(v[3])
            if not ok then
              print("[trainer] '" .. v[2] .. "' failed: " .. tostring(err))
              pcall(message, v[2] .. " failed", "warning")
            end
          end
        end

        return false
      end)
    end

    return ret
  end)
end)

return _M

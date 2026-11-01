# classes.debug.worldInterface

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[worldDebugConsole](#worlddebugconsole), [worldDebugCreateCharacter](#worlddebugcreatecharacter), [worldDebugMapPresetSelect](#worlddebugmappresetselect), [worldDebugQuestState](#worlddebugqueststate), [worldDebugSpawnSelect](#worlddebugspawnselect)

### worldDebugConsole

`classes.debug.worldInterface.worldDebugConsole`

- requires: `classes.interface.overlays.MessagePopup`, `classes.hexagon.RogueWorldInterface`, `classes.interface.overlays.AbstractSelectPopup`, `classes.modules.PlayerSettingsDifficultyObject`, `classes.modules.interface.scrollViewBuilder`, `classes.debug.simulation.debug_load_screen`, `classes.battle.abstractBattleEffect`
- defines globals: `isTakingWorldScreenshots` = true, `debugSimulatorIsStartedByTiled` = true

<details><summary>Functions (2)</summary>

- `preventInfiniteBattleBattleEffect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `effect:mutateAmountOfMonsterRolls(_value)`

</details>

<details><summary>Fields with default values (1)</summary>

- `worldDebugCameraFrameDeltaPanel.isHitTestable` = `false`

</details>

### worldDebugCreateCharacter

`classes.debug.worldInterface.worldDebugCreateCharacter`

### worldDebugMapPresetSelect

`classes.debug.worldInterface.worldDebugMapPresetSelect`

- returns `t`
- requires: `classes.modules.PlayerSettingsDifficultyObject`

- `worldDebugMapPresetSelect:showPresets(_automaticallyLoadLastSelectedPreset)`

<details><summary>Instance / other functions (5)</summary>

- `specialEventHelper:isHalloween()`
- `specialEventHelper:isChristmas()`
- `specialEventHelper:isEaster()`
- `specialEventHelper:isReleaseDay()`
- `device:hasToUnlockFullGame()`

</details>

### worldDebugQuestState

`classes.debug.worldInterface.worldDebugQuestState`

- requires: `classes.interface.overlays.AbstractSelectPopup`

### worldDebugSpawnSelect

`classes.debug.worldInterface.worldDebugSpawnSelect`

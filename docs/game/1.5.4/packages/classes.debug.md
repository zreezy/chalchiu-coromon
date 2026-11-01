# classes.debug

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[CoromonDebugHelper](#coromondebughelper), [DebugFrameDiagnostics](#debugframediagnostics)

### CoromonDebugHelper

`classes.debug.CoromonDebugHelper`

- returns `t`
- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.interface.BlurredAndDesaturatedScreenshot`

- `CoromonDebugHelper:shouldLoadRoguePlanetOnDevelopBuild()`
- `CoromonDebugHelper:setShouldLoadRoguePlanetOnDevelopBuild(_shouldLoadRoguePlanet, _shouldNotPersist)`
- `CoromonDebugHelper:createWorldInstanceAndShowPauseMenuOverlay(_onContinue)`
- `CoromonDebugHelper:visitLocationsUpUntil(_location)`
- `CoromonDebugHelper:temporarySetSaturationOrHide(_object, _factor, _instant)`
- `CoromonDebugHelper:addAllItems(_amount)`
- `CoromonDebugHelper:removeAllItems(_amount)`
- `CoromonDebugHelper:unlockAllFruitGrowingPots()`
- `CoromonDebugHelper:spawnFruits()`
- `CoromonDebugHelper:getCatchableMonsterUIDs()`
- `CoromonDebugHelper:getRandomCatchableMonsterUID()`
- `CoromonDebugHelper:forEachMonsterSpriteShapeUID(_function)`
- `CoromonDebugHelper:forEachFrontMonsterSpriteShapeUID(_function)`
- `CoromonDebugHelper:forEachConfigurableMonsterSpriteShapeUID(_function)`
- `CoromonDebugHelper:forEachConfigurableFrontMonsterSpriteShapeUID(_function)`
- `CoromonDebugHelper:forEachMonsterSpriteConfig(_function)`
- `CoromonDebugHelper:setAllMonstersSeen()`
- `CoromonDebugHelper:setAllMonstersOwned()`
- `CoromonDebugHelper:setupIAP()`
- `CoromonDebugHelper:setupMonsterStorage(_amount)`
- `CoromonDebugHelper:setupOnlineProfileAndSeason()`
- `CoromonDebugHelper:setupOnlineInventoryData()`
- `CoromonDebugHelper:setupOnlineBattleData()`

### DebugFrameDiagnostics

`classes.debug.DebugFrameDiagnostics`

- returns `t`

- `DebugFrameDiagnostics:getTargetFps()`
- `DebugFrameDiagnostics:setTargetFps(_targetFps)`
- `DebugFrameDiagnostics:disable()`
- `DebugFrameDiagnostics:enable(_targetFps)`
- `DebugFrameDiagnostics:setEnabled(_shouldEnable, _targetFps)`

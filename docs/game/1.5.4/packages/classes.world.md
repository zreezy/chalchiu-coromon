# classes.world

Coromon 1.5.4. 22 module(s). [Back to index](../README.md)

[SpawnLocation](#spawnlocation), [worldBackground](#worldbackground), [worldBattleDomeTokens](#worldbattledometokens), [worldBattleEffect](#worldbattleeffect), [worldBattleEnvironment](#worldbattleenvironment), [worldCinematicOverlay](#worldcinematicoverlay), [worldCrimsoniteHeatMeter](#worldcrimsoniteheatmeter), [worldDarkness](#worlddarkness), [worldDesertRouteHeatMeter](#worlddesertrouteheatmeter), [worldDesertShadow](#worlddesertshadow), [worldDungeon](#worlddungeon), [worldDungeonDrips](#worlddungeondrips), [worldHelper](#worldhelper), [worldInterface](#worldinterface), [worldMescherRealmLightSoulFlasks](#worldmescherrealmlightsoulflasks), [worldOverlay](#worldoverlay), [worldRain](#worldrain), [worldSaveBlocker](#worldsaveblocker), [worldSnow](#worldsnow), [worldSounds](#worldsounds), [worldThunder](#worldthunder), [worldThunderFlash](#worldthunderflash)

### SpawnLocation

`classes.world.SpawnLocation`

- returns `t`

- `SpawnLocation:at(_objectName, _tileOffsetX, _tileOffsetY, _direction)`
- `SpawnLocation:atTile(_tileX, _tileY, _direction)`
- `SpawnLocation:northOf(_objectName, _optionalTileOffsetX, _optionalTileOffsetY)`
- `SpawnLocation:eastOf(_objectName, _optionalTileOffsetX, _optionalTileOffsetY)`
- `SpawnLocation:southOf(_objectName, _optionalTileOffsetX, _optionalTileOffsetY)`
- `SpawnLocation:westOf(_objectName, _optionalTileOffsetX, _optionalTileOffsetY)`

### worldBackground

`classes.world.worldBackground`

- returns `t`

- `worldBackground:isCreated()`
- `worldBackground:createInstance(_filter)`

### worldBattleDomeTokens

`classes.world.worldBattleDomeTokens`

- returns `t`
- requires: `classes.interface.battle.battleIndicatorBuilder`

- `worldBattleDomeTokens:get()`
- `worldBattleDomeTokens:isCreated()`
- `worldBattleDomeTokens:createInstance()`

<details><summary>Instance / other functions (5)</summary>

- `instance:hide(_onComplete)`
- `instance:showOnAboveOverlayLayer()`
- `instance:showOnDefaultLayer()`
- `instance:updateBattleDomeTokensIndicatorText()`
- `instance:updateBattleDomeTokensIndicatorTextAnimated(_onComplete)`

</details>

### worldBattleEffect

`classes.world.worldBattleEffect`

- returns `t`

- `worldBattleEffect:new(_battleEffect)`

### worldBattleEnvironment

`classes.world.worldBattleEnvironment`

- returns `t`

- `worldBattleEnvironment:isCreated()`
- `worldBattleEnvironment:createInstance(_battleEnvironment)`
- `worldBattleEnvironment:createInstanceForHexagonWorld(_battleEnvironment)`

<details><summary>Instance / other functions (2)</summary>

- `instance:get()`
- `instance:destroy()`

</details>

### worldCinematicOverlay

`classes.world.worldCinematicOverlay`

- returns `t`

- `worldCinematicOverlay:get()`
- `worldCinematicOverlay:isCreated()`
- `worldCinematicOverlay:createInstance()`

### worldCrimsoniteHeatMeter

`classes.world.worldCrimsoniteHeatMeter`

- returns `t`
- requires: `classes.interface.overlays.worldLostOverlayBuilder`

- `worldCrimsoniteHeatMeter:get()`
- `worldCrimsoniteHeatMeter:isCreated()`
- `worldCrimsoniteHeatMeter:createInstance()`
- `worldCrimsoniteHeatMeter:destroy()`

<details><summary>Instance / other functions (6)</summary>

- `instance:getHeat()`
- `instance:setHeat(_value)`
- `instance:decreaseHeat(_amount)`
- `instance:decreaseHeatAnimated(_amount, _onComplete)`
- `instance:increaseHeat()`
- `instance:onAfterStepOnCrimsoniteHeatedWaterArea()`

</details>

### worldDarkness

`classes.world.worldDarkness`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `worldDarkness:get()`
- `worldDarkness:isCreated()`
- `worldDarkness:createInstance()`

<details><summary>Instance / other functions (9)</summary>

- `darknessBattleEffect:onEnterBattlePriority()`
- `darknessBattleEffect:onEnterBattle(_onComplete)`
- `stopMaskFunctionByMode.dark()`
- `startMaskFunctionByMode.dark()`
- `stopMaskFunctionByMode.light()`
- `startMaskFunctionByMode.light()`
- `stopMaskFunctionByMode.brightLight()`
- `startMaskFunctionByMode.brightLight()`
- `instance:destroy()`

</details>

### worldDesertRouteHeatMeter

`classes.world.worldDesertRouteHeatMeter`

- returns `t`
- requires: `classes.interface.overlays.worldLostOverlayBuilder`, `classes.battle.abstractBattleEffect`

- `worldDesertRouteHeatMeter:get()`
- `worldDesertRouteHeatMeter:isCreated()`
- `worldDesertRouteHeatMeter:createInstance()`

<details><summary>Instance / other functions (8)</summary>

- `instance:getHeat()`
- `instance:setHeat(_value)`
- `instance:decreaseHeat(_amount)`
- `instance:decreaseHeatAnimated(_amount, _onComplete)`
- `instance:increaseHeat()`
- `instance:onAfterStepOnDesertRouteSandArea()`
- `worldHeatwaveBattleEffect:onEnterBattlePriority()`
- `worldHeatwaveBattleEffect:onEnterBattle(_onComplete)`

</details>

### worldDesertShadow

`classes.world.worldDesertShadow`

- returns `t`

- `worldDesertShadow:isCreated()`
- `worldDesertShadow:createInstance()`

### worldDungeon

`classes.world.worldDungeon`

- returns `t`

- `worldDungeon:isCreated()`
- `worldDungeon:createInstance()`

### worldDungeonDrips

`classes.world.worldDungeonDrips`

- returns `t`

- `worldDungeonDrips:isCreated()`
- `worldDungeonDrips:createInstance()`

### worldHelper

`classes.world.worldHelper`

- returns `t`
- requires: `classes.hexagon.RogueWorldInterface`

- `worldHelper:isCreated()`
- `worldHelper:createInstance(_mapPath, _mapFile, _params, _onShow)`

<details><summary>Instance / other functions (30)</summary>

- `instance:getEventDispatcher()`
- `instance:getMapPath()`
- `instance:getMapFile()`
- `instance:getWorldLocation()`
- `instance:getMapLoadSpawnLocation()`
- `instance:addOnPauseFunction(_function)`
- `instance:addOnResumeFunction(_function)`
- `instance:addOnUpdateFunction(_function)`
- `instance:addOnDestroyFunction(_function)`
- `instance:hasDispatchedBeforeLoadTransition()`
- `instance:hasDispatchedAfterLoadTransition()`
- `instance:isPaused()`
- `instance:pause()`
- `instance:resume()`
- `instance:deleteSpawnable(_spawnable)`
- `instance:getSpawnableById(_id)`
- `instance:getSpawnableByName(_name)`
- `instance:getSpawnablesByInstanceOf(_class)`
- `instance:getAllSpawnables()`
- `instance:spawnDelayedSpawnable(_spawnable)`
- `instance:spawnSpawnable(_options)`
- `instance:getWorldMapData()`
- `instance:save()`
- `instance:destroy(_onComplete)`
- `instance:unloadMapWithTransition(_unloadTransition, _onComplete, _frameBeforeOnComplete)`
- `instance:getLocationObjects()`
- `instance:getLocationObject(_name)`
- `instance:getLocation(_name)`
- `instance:getMapLoadSpawnLocationObject()`
- `instance:spawnPropertiesWithClass(_isFirstSpawn)`

</details>

### worldInterface

`classes.world.worldInterface`

- returns `t`
- requires: `classes.libraries.math2d`, `classes.interface.overlays.GauntletModuleRadialWheelOverlay`, `classes.interface.ItemPopup`, `classes.interface.overlays.MessageToast`, `classes.interface.worldInterface.WorldInterfaceInteractButton`, `classes.interface.worldInterface.WorldInterfaceActionsPanel`, `classes.interface.overlays.TallMonsterButtonOverlay`

- `worldInterface:isCreated()`
- `worldInterface:createInstance()`
- `worldInterface:createMapNamePopup(_mapName, _mapType, _onComplete, _onShow)`
- `worldInterface:createItemPopup(_mode, _obtainableItem, _onComplete, _onShow, _dontAdjustInventory)`
- `worldInterface:createItemPopupWithoutAdjustingInventory(_mode, _obtainableItem, _onComplete, _onShow)`
- `worldInterface:createMonsterPopup(_mode, _monster, _onComplete, _onShow)`
- `worldInterface:createPhoneMessagePopup(_message, _onComplete, _onShow)`
- `worldInterface:createGauntletModuleInstalledPopup(_gauntletModule, _onComplete, _onShow)`
- `worldInterface:startQuestAndShowIndicator(_quest, _chapter)`
- `worldInterface:completeQuestAndShowIndicator(_quest, _chapter)`
- `worldInterface:startNewChapterAndShowIndicator(_quest, _oldOrNewChapter, _newChapter)`
- `worldInterface:showQuestStartedIndicator(_quest)`
- `worldInterface:showQuestUpdatedIndicator(_quest)`
- `worldInterface:showQuestCompletedIndicator(_quest)`
- `worldInterface:addRecallLocationAndShowIndicator(_location)`
- `worldInterface:showCheckpointIndicator()`
- `worldInterface:showCheckpointIndicatorIfNotVisitedCurrentMap()`
- `worldInterface:updateGauntletModuleCooldownScale(_scale)`

<details><summary>Instance / other functions (17)</summary>

- `instance:getHideableGroup()`
- `instance:refreshGauntletButtonIcon()`
- `instance:refreshBindItemIcon()`
- `instance:isInteractButtonPressed()`
- `instance:getInteractButton()`
- `instance:updateInteractButton(_iconFilename, _labelText, _isRunIcon)`
- `instance:getWarningSaveBlockedMessageToastOptions()`
- `instance:getInputNavigation()`
- `instance:startAdjusting()`
- `instance:stopAdjusting()`
- `instance:hide()`
- `instance:show()`
- `instance:isShown()`
- `instance:destroy()`
- `instance:onAfterLoadTransition()`
- `instance:getPauseButton()`
- `instance:getBindItemButton()`

</details>

### worldMescherRealmLightSoulFlasks

`classes.world.worldMescherRealmLightSoulFlasks`

- returns `t`

- `worldMescherRealmLightSoulFlasks:get()`
- `worldMescherRealmLightSoulFlasks:isCreated()`
- `worldMescherRealmLightSoulFlasks:createInstance()`

<details><summary>Instance / other functions (1)</summary>

- `instance:fillNextFlask(_onComplete)`

</details>

### worldOverlay

`classes.world.worldOverlay`

- returns `t`

- `worldOverlay:isCreated()`
- `worldOverlay:get()`
- `worldOverlay:createInstance(_worldOverlayRectMutators, _dontIncludeUglyFix)`
- `worldOverlay:createInstanceAndShow(_worldOverlayRectMutators, _time, _easing, _optionsOrOnComplete, _onComplete)`

<details><summary>Instance / other functions (1)</summary>

- `instance:destroy()`

</details>

<details><summary>Fields with default values (4)</summary>

- `worldOverlay.LIGHTS_OFF` = `{}`
- `worldOverlay.SLIGHTLY_DARK` = `{}`
- `worldOverlay.HEATED` = `{}`
- `worldOverlay.MESCHER_REALM` = `{}`

</details>

### worldRain

`classes.world.worldRain`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `worldRain:isCreated()`
- `worldRain:createInstance(_soundMode, _shouldShowOverlay)`

<details><summary>Instance / other functions (2)</summary>

- `worldRainBattleEffect:onEnterBattlePriority()`
- `worldRainBattleEffect:onEnterBattle(_onComplete)`

</details>

### worldSaveBlocker

`classes.world.worldSaveBlocker`

- returns `t`

- `worldSaveBlocker:isCreated()`
- `worldSaveBlocker:createInstance()`

### worldSnow

`classes.world.worldSnow`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `worldSnow:isCreated()`
- `worldSnow:createInstance()`

<details><summary>Instance / other functions (4)</summary>

- `worldSnowBattleEffect:onEnterBattlePriority()`
- `worldSnowBattleEffect:onEnterBattle(_onComplete)`
- `instance:enableCrimsoniteSnow()`
- `snowTextureSprite:setFillColor(...)`

</details>

### worldSounds

`classes.world.worldSounds`

- returns `t`

- `worldSounds:load(_sounds)`

### worldThunder

`classes.world.worldThunder`

- returns `t`

- `worldThunder:isCreated()`
- `worldThunder:createInstanceIfNotDefeatedElectricTitanOrStartedBattleDomeSession(_mode)`

<details><summary>Instance / other functions (6)</summary>

- `instance:addThunderListener(_function)`
- `instance:addThunderAlphaListener(_function)`
- `instance:turboCharge(_onComplete)`
- `instance:singleThunder()`
- `instance:pause()`
- `instance:destroy()`

</details>

### worldThunderFlash

`classes.world.worldThunderFlash`

- returns `t`

- `worldThunderFlash:isCreated()`
- `worldThunderFlash:createInstanceIfNotDefeatedElectricTitan()`

# classes.spawnables.extensions

Coromon 1.5.4. 8 module(s). [Back to index](../README.md)

[autoRotatableSpawnableExtension](#autorotatablespawnableextension), [blockingFunctionSpawnableExtension](#blockingfunctionspawnableextension), [constrainingFunctionSpawnableExtension](#constrainingfunctionspawnableextension), [cutsceneInteractableDialogSpeakerSpawnableExtension](#cutsceneinteractabledialogspeakerspawnableextension), [cutsceneInteractableSpawnableExtension](#cutsceneinteractablespawnableextension), [gauntletArmAnimationCharacterExtension](#gauntletarmanimationcharacterextension), [movingInteractableSpawnableExtension](#movinginteractablespawnableextension), [triggerableCutsceneSpawnableExtension](#triggerablecutscenespawnableextension)

### autoRotatableSpawnableExtension

`classes.spawnables.extensions.autoRotatableSpawnableExtension`

- returns `autoRotatableSpawnableExtension`

- `autoRotatableSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:onParseValidGridMoveObject(_gridMoveObject)`
- `class:parseGridMoveObject(_gridMoveObject, _nextStepInGridMoveStack)`

</details>

### blockingFunctionSpawnableExtension

`classes.spawnables.extensions.blockingFunctionSpawnableExtension`

- returns `blockingFunctionSpawnableExtension`

- `blockingFunctionSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:doBlockingAction(_spawnable, _nextTileX, _nextTileY, _isGridMoveOn, _direction, _speed)`

</details>

### constrainingFunctionSpawnableExtension

`classes.spawnables.extensions.constrainingFunctionSpawnableExtension`

- returns `constrainingFunctionSpawnableExtension`

- `constrainingFunctionSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:doConstrainingAction(_spawnable, _direction, _isGridMoveOff)`

</details>

### cutsceneInteractableDialogSpeakerSpawnableExtension

`classes.spawnables.extensions.cutsceneInteractableDialogSpeakerSpawnableExtension`

- returns `cutsceneInteractableDialogSpeakerSpawnableExtension`

- `cutsceneInteractableDialogSpeakerSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (3)</summary>

- `class:setBlockTurnToPlayer(_bool)`
- `class:getDefaultInteractIcon()`
- `class:onInteractAction(_spawnable, _nextTileX, _nextTileY, _direction, _onComplete)`

</details>

### cutsceneInteractableSpawnableExtension

`classes.spawnables.extensions.cutsceneInteractableSpawnableExtension`

- returns `cutsceneInteractableSpawnableExtension`

- `cutsceneInteractableSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (4)</summary>

- `class:getDefaultInteractIcon()`
- `class:getDefaultInteractText()`
- `class:doBeforeInteractAction(_spawnable, _nextTileX, _nextTileY, _direction)`
- `class:onInteractAction(_spawnable, _nextTileX, _nextTileY, _direction, _onComplete)`

</details>

### gauntletArmAnimationCharacterExtension

`classes.spawnables.extensions.gauntletArmAnimationCharacterExtension`

- returns `gauntletArmAnimationCharacterExtension`
- requires: `classes.world.effects.world.repelModuleIntervalWorldEffect`, `classes.world.effects.world.attractModuleIntervalWorldEffect`, `classes.interface.MilestoneAchievedPopup`

- `gauntletArmAnimationCharacterExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (22)</summary>

- `class:getSelectedGauntletModuleUID()`
- `class:receiveGauntletInteract()`
- `class:doInstallModuleAnimation(_gauntletModuleUID, _onComplete)`
- `class:setFirstGauntletItem()`
- `class:unsetFirstGauntletItem()`
- `class:armUpStartAnimationWithEnsuredGauntlet(_shouldCharge, _onComplete)`
- `class:armUpEndAnimationWithEnsuredGauntlet(_shouldCharge, _onComplete)`
- `class:armFrontStartAnimationWithEnsuredGauntlet(_onComplete)`
- `class:armFrontEndAnimationWithEnsuredGauntlet(_onComplete)`
- `class:spawnGauntletPushAnimation(_onComplete)`
- `class:spawnGauntletAttractOrRepelAnimation(_onComplete, _gauntletModule, _activeGauntletModuleIntervalWorldEffect)`
- `class:spawnGauntletItemFinderAnimation(_onComplete)`
- `class:spawnGauntletTremorAnimation(_onComplete)`
- `class:spawnGauntletBurnAnimation(_onComplete)`
- `class:doSurfboardRotate(_onComplete)`
- `class:spawnGauntletFishAnimation(_onComplete)`
- `class:spawnGauntletCrimsoniteAbductionAnimation(_targetSpawnable, _onComplete)`
- `class:destroyGauntletCrimsoniteAbductionAnimation()`
- `class:spawnGauntletCrimsoniteConversionAnimation()`
- `class:destroyGauntletCrimsoniteConversionAnimation()`
- `class:spawnGauntletCrimsoniteBendingAnimation(_onComplete, _isPersistent)`
- `class:destroyGauntletCrimsoniteBendingAnimation(_onComplete)`

</details>

### movingInteractableSpawnableExtension

`classes.spawnables.extensions.movingInteractableSpawnableExtension`

- returns `movingInteractableSpawnableExtension`

- `movingInteractableSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:onBeforeGridMove(_gridMoveData)`

</details>

### triggerableCutsceneSpawnableExtension

`classes.spawnables.extensions.triggerableCutsceneSpawnableExtension`

- returns `triggerableCutsceneSpawnableExtension`

- `triggerableCutsceneSpawnableExtension:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:onTriggerAction(_spawnable, _mode, _tileX, _tileY)`
- `class:onTriggerActionWithOnComplete(_spawnable, _mode, _tileX, _tileY, _onComplete)`

</details>

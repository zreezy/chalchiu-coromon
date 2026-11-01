# classes.spawnables.plugins

Coromon 1.5.4. 34 module(s). [Back to index](../README.md)

[armAnimationCharacterPlugin](#armanimationcharacterplugin), [behavingCullablePlugin](#behavingcullableplugin), [blockingSpawnablePlugin](#blockingspawnableplugin), [bottomMaskSpawnablePlugin](#bottommaskspawnableplugin), [burnableSpawnablePlugin](#burnablespawnableplugin), [burnableTilesPlugin](#burnabletilesplugin), [changeableLayerSpawnablePlugin](#changeablelayerspawnableplugin), [collisionShapeSpawnablePlugin](#collisionshapespawnableplugin), [constrainingSpawnablePlugin](#constrainingspawnableplugin), [cullableSpawnablePlugin](#cullablespawnableplugin), [dialogSpeakerSpawnablePlugin](#dialogspeakerspawnableplugin), [eightDirectionalInputReceivingMovingSpawnablePlugin](#eightdirectionalinputreceivingmovingspawnableplugin), [expressiveSpawnablePlugin](#expressivespawnableplugin), [floorIndicatorTargetSpawnablePlugin](#floorindicatortargetspawnableplugin), [inputReceivingMovingSpawnablePlugin](#inputreceivingmovingspawnableplugin), [interactableSpawnablePlugin](#interactablespawnableplugin), [interactingSpawnablePlugin](#interactingspawnableplugin), [luxTeleporterAnimationSoundSpawnablePlugin](#luxteleporteranimationsoundspawnableplugin), [mountableObjectPlugin](#mountableobjectplugin), [pushableSpawnablePlugin](#pushablespawnableplugin), [reflectionSpawnablePlugin](#reflectionspawnableplugin), [rogueDialogSpeakerSpawnablePlugin](#roguedialogspeakerspawnableplugin), [rotatableSpawnablePlugin](#rotatablespawnableplugin), [saveableSpawnablePlugin](#saveablespawnableplugin), [shadowSpawnablePlugin](#shadowspawnableplugin), [soundSpawnablePlugin](#soundspawnableplugin), [spottingCharacterPlugin](#spottingcharacterplugin), [spriteSpawnablePlugin](#spritespawnableplugin), [teleporterPlugin](#teleporterplugin), [tiledObjectSpawnablePlugin](#tiledobjectspawnableplugin), [tremorInteractSpawnablePlugin](#tremorinteractspawnableplugin), [triggerableSpawnablePlugin](#triggerablespawnableplugin), [triggerableTeleporterPlugin](#triggerableteleporterplugin), [triggeringWorldObjectSpawnablePlugin](#triggeringworldobjectspawnableplugin)

### armAnimationCharacterPlugin

`classes.spawnables.plugins.armAnimationCharacterPlugin`

- returns `armAnimationCharacterPlugin`

- `armAnimationCharacterPlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (5)</summary>

- `class:armUpStartAnimation(_shouldCharge, _onComplete)`
- `class:armUpStartAnimationWithSound(_shouldCharge, _onComplete)`
- `class:armUpEndAnimation(_shouldCharge, _onComplete)`
- `class:armFrontStartAnimation(_shouldCharge, _onComplete)`
- `class:armFrontEndAnimation(_onComplete)`

</details>

### behavingCullablePlugin

`classes.spawnables.plugins.behavingCullablePlugin`

- returns `behavingCullablePlugin`

- `behavingCullablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (12)</summary>

- `class:onSave()`
- `class:onBeforeSpawn()`
- `class:setBehavior(_behavior, _config)`
- `class:updateBehaviorLocation()`
- `class:onCull()`
- `class:onRender()`
- `class:calculateCullingOptions()`
- `class:startBehaving()`
- `class:onStartBehaving()`
- `class:stopBehaving()`
- `class:onStopBehaving()`
- `class:isBehaving()`

</details>

### blockingSpawnablePlugin

`classes.spawnables.plugins.blockingSpawnablePlugin`

- returns `blockingSpawnablePlugin`

- `blockingSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:doBlockingAction(_spawnable, _nextTileX, _nextTileY, _isGridMoveOn, _direction, _speed)`

</details>

### bottomMaskSpawnablePlugin

`classes.spawnables.plugins.bottomMaskSpawnablePlugin`

- returns `bottomMaskSpawnablePlugin`

- `bottomMaskSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (9)</summary>

- `class:getBottomMask(_frame)`
- `class:createBottomMaskOverlay()`
- `class:initBottomMask(_bottomMaskArea, _bottomMaskType, _bottomMaskHeight)`
- `class:setCurrentBottomMaskHeightProgression(_heightProgressionFactor)`
- `class:destroyBottomMask()`
- `class:isBottomMasked()`
- `class:getBottomMaskArea()`
- `class:removeSprite()`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`

</details>

### burnableSpawnablePlugin

`classes.spawnables.plugins.burnableSpawnablePlugin`

- returns `burnableSpawnablePlugin`

- `burnableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:onBurn(_abstractCharacter, _nextTileX, _nextTileY, _direction, _onComplete)`
- `class:canBeBurned(_abstractCharacter, _nextTileX, _nextTileY, _direction)`

</details>

### burnableTilesPlugin

`classes.spawnables.plugins.burnableTilesPlugin`

- returns `burnableTilesPlugin`

- `burnableTilesPlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (6)</summary>

- `class:onTileBurned(_tileX, _tileY)`
- `class:getNonBurnedTilesAndTileMap()`
- `class:burnTile(_tileX, _tileY)`
- `class:canBeBurned(_abstractCharacter, _nextTileX, _nextTileY, _direction)`
- `class:onBurn(_abstractCharacter, _nextTileX, _nextTileY, _direction, _onComplete)`
- `class:onBeforeSpawn()`

</details>

### changeableLayerSpawnablePlugin

`classes.spawnables.plugins.changeableLayerSpawnablePlugin`

- returns `changeableLayerSpawnablePlugin`

- `changeableLayerSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:onChangeObjectLayer(_newObjectLayer)`
- `class:onChangeSpriteLayer(_newSpriteLayer)`

</details>

### collisionShapeSpawnablePlugin

`classes.spawnables.plugins.collisionShapeSpawnablePlugin`

- returns `collisionShapeSpawnablePlugin`

- `collisionShapeSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (4)</summary>

- `class:createCollisionShapeObject(_sprite)`
- `class:onCollision(_movingSpawnable, _deltaXToEdge, _deltaYToEdge)`
- `class:onStoppedColliding(_movingSpawnable)`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`

</details>

### constrainingSpawnablePlugin

`classes.spawnables.plugins.constrainingSpawnablePlugin`

- returns `constrainingSpawnablePlugin`

- `constrainingSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:doConstrainingAction(_spawnable, _direction, _isGridMoveOff)`

</details>

### cullableSpawnablePlugin

`classes.spawnables.plugins.cullableSpawnablePlugin`

- returns `cullableSpawnablePlugin`

- `cullableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (15)</summary>

- `class:doRender()`
- `class:doCull()`
- `class:disableCulling()`
- `class:enableCulling()`
- `class:isCulled()`
- `class:setTilePropertiesOnCullableObject()`
- `class:spawnCullableObjectOrRender()`
- `self.cullableObject.onRender()`
- `self.cullableObject.onCull()`
- `class:updateCullableObject()`
- `class:removeCullableObject()`
- `class:calculateCullingOptions()`
- `class:isCullable()`
- `class:onCull()`
- `class:onRender()`

</details>

### dialogSpeakerSpawnablePlugin

`classes.spawnables.plugins.dialogSpeakerSpawnablePlugin`

- returns `dialogSpeakerSpawnablePlugin`

- `dialogSpeakerSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (10)</summary>

- `class:getSpeakerHead(_parent)`
- `class:getSpeakerName()`
- `class:getSpeakerType()`
- `class:getSpeakerStyle()`
- `class:getSpeakerSpawnableAtTopCenterOffsetX()`
- `class:getSpeakerSpawnableAtTopCenterOffsetY()`
- `class:showSpeakerQuestionIndicator()`
- `class:showSpeakerTalkingIndicator()`
- `class:hideSpeakerTalkingIndicator()`
- `class:hideSpeakerQuestionIndicator()`

</details>

### eightDirectionalInputReceivingMovingSpawnablePlugin

`classes.spawnables.plugins.eightDirectionalInputReceivingMovingSpawnablePlugin`

- returns `eightDirectionalInputReceivingMovingSpawnablePlugin`

- `eightDirectionalInputReceivingMovingSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:receiveEightDirectionalInput(_event, _pressedDirections)`

</details>

### expressiveSpawnablePlugin

`classes.spawnables.plugins.expressiveSpawnablePlugin`

- returns `expressiveSpawnablePlugin`

- `expressiveSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (13)</summary>

- `class:getExpressiveSpawnableAtTopCenterOffsetX()`
- `class:getExpressiveSpawnableAtTopCenterOffsetY()`
- `class:spawnExpression(_type, _onCompleteOrShouldPersist)`
- `class:unspawnExpression()`
- `class:isExpressionSpawned()`
- `class:setEmoji(_type)`
- `class:spawnEmoji(_type, _loopCount, _onComplete)`
- `class:destroyEmoji()`
- `class:unspawnEmoji(_onComplete)`
- `class:isEmojiSpawned()`
- `class:shouldSpawnExpressiveSprite()`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`
- `class:removeSprite()`

</details>

### floorIndicatorTargetSpawnablePlugin

`classes.spawnables.plugins.floorIndicatorTargetSpawnablePlugin`

- returns `floorIndicatorTargetSpawnablePlugin`

- `floorIndicatorTargetSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:onTriggeredByFloorIndicator(_spawnable, _onComplete)`

</details>

### inputReceivingMovingSpawnablePlugin

`classes.spawnables.plugins.inputReceivingMovingSpawnablePlugin`

- returns `inputReceivingMovingSpawnablePlugin`
- requires: `classes.libraries.math2d`

- `inputReceivingMovingSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (4)</summary>

- `class:receiveInput(_direction)`
- `class:parseGridMoveObject(_gridMoveObject, _nextStepInGridMoveStack)`
- `class:emptyGridMoveStack()`
- `class:onStoppedMoving(_blocked)`

</details>

### interactableSpawnablePlugin

`classes.spawnables.plugins.interactableSpawnablePlugin`

- returns `interactableSpawnablePlugin`

- `interactableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (8)</summary>

- `class:blockInteract()`
- `class:unblockInteract()`
- `class:doInteractAction(_spawnable, _nextTileX, _nextTileY, _direction, _optionalOnComplete)`
- `class:remove()`
- `class:onAllSpawnablesSpawned()`
- `class:notifyPlayerSpawnableToUpdateInteractButton(_tileX, _tileY)`
- `class:doBeforeInteractAction(_spawnable, _nextTileX, _nextTileY, _direction)`
- `class:onInteractAction(_spawnable, _nextTileX, _nextTileY, _direction, _onComplete)`

</details>

### interactingSpawnablePlugin

`classes.spawnables.plugins.interactingSpawnablePlugin`

- returns `interactingSpawnablePlugin`

- `interactingSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (1)</summary>

- `class:doInteract(_direction, _optionalOnComplete)`

</details>

### luxTeleporterAnimationSoundSpawnablePlugin

`classes.spawnables.plugins.luxTeleporterAnimationSoundSpawnablePlugin`

- returns `luxTeleporterAnimationSoundSpawnablePlugin`

- `luxTeleporterAnimationSoundSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (8)</summary>

- `class:getRequiredSounds()`
- `class:doPrepareLuxTeleporterOutAnimation()`
- `class:doLuxTeleporterOutAnimationWithSound(_onComplete)`
- `class:doLuxTeleporterOutAnimation(_onComplete)`
- `class:doLuxTeleporterTeleport(_location, _optionalOnUnloaded)`
- `class:doPrepareLuxTeleporterInAnimation()`
- `class:doLuxTeleporterInAnimationWithSound(_onComplete)`
- `class:doLuxTeleporterInAnimation(_onComplete)`

</details>

### mountableObjectPlugin

`classes.spawnables.plugins.mountableObjectPlugin`

- returns `mountableObjectPlugin`

- `mountableObjectPlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (12)</summary>

- `class:onStartCutscene()`
- `class:onEndCutscene()`
- `class:shouldRun()`
- `class:setAlpha(_alpha)`
- `class:isNextTileBlocking(_nextTileX, _nextTileY, _direction, _speed)`
- `class:isCurrentTileConstraining(_direction)`
- `class:onRegisterMountedSpawnable(_mountingSpawnable)`
- `class:onUnregisterMountedSpawnable(_mountingSpawnable)`
- `class:getMountedSpawnable()`
- `class:doBeforeMountedSpawnableInteractAction(_spawnable, _nextTileX, _nextTileY, _direction)`
- `class:doMountedSpawnableInteractAction(_spawnable, _nextTileX, _nextTileY, _direction, _onComplete)`
- `class:getSelectedGauntletModuleUID()`

</details>

### pushableSpawnablePlugin

`classes.spawnables.plugins.pushableSpawnablePlugin`

- returns `pushableSpawnablePlugin`

- `pushableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:canBePushed(_abstractCharacter, _nextTileX, _nextTileY, _direction)`
- `class:onPush(_abstractCharacter, _nextTileX, _nextTileY, _direction, _onComplete)`

</details>

### reflectionSpawnablePlugin

`classes.spawnables.plugins.reflectionSpawnablePlugin`

- returns `reflectionSpawnablePlugin`
- defines globals: `_` = value

- `reflectionSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (11)</summary>

- `reflectionEffects.ice(_sprite)`
- `reflectionEffects.water(_sprite)`
- `reflectionEffects.mirror(_sprite)`
- `class:getSpriteReflectionDirection()`
- `class:createSpriteReflection()`
- `class:startSpriteReflection(_reflectionLayer, _reflectionEffect)`
- `class:stopSpriteReflection()`
- `class:removeSprite()`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`
- `class:setVisible(_bool)`
- `class:reloadSprite()`

</details>

### rogueDialogSpeakerSpawnablePlugin

`classes.spawnables.plugins.rogueDialogSpeakerSpawnablePlugin`

- returns `rogueDialogSpeakerSpawnablePlugin`

- `rogueDialogSpeakerSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (8)</summary>

- `class:getRogueDialogSpeakerPortraitUID()`
- `class:getRogueDialogSpeakerName()`
- `class:getRogueSpeakerSpawnableAtTopCenterIndicatorOffsetX()`
- `class:getRogueSpeakerSpawnableAtTopCenterIndicatorOffsetY()`
- `class:showSpeakerQuestionIndicator()`
- `class:showSpeakerTalkingIndicator()`
- `class:hideSpeakerTalkingIndicator()`
- `class:hideSpeakerQuestionIndicator()`

</details>

### rotatableSpawnablePlugin

`classes.spawnables.plugins.rotatableSpawnablePlugin`

- returns `rotatableSpawnablePlugin`

- `rotatableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (9)</summary>

- `class:onRotate(_direction, _isInitialRotation)`
- `class:onRotateStep(_onComplete)`
- `class:rotateTo(_spawnable, _dontDoStepOrOnComplete)`
- `class:rotateToHorizontal(_spawnable, _dontDoStepOrOnComplete)`
- `class:rotateToVertical(_spawnable, _dontDoStepOrOnComplete)`
- `class:turnToPlayer(_onComplete)`
- `class:saveCurrentPositionState()`
- `class:rotate(_direction, _dontDoStepOrOnComplete)`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`

</details>

### saveableSpawnablePlugin

`classes.spawnables.plugins.saveableSpawnablePlugin`

- returns `saveableSpawnablePlugin`

- `saveableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (13)</summary>

- `class:consistentSaveProperty(_property, _value)`
- `class:consistentLoadProperty(_property)`
- `class:tempSaveProperty(_property, _value)`
- `class:tempLoadProperty(_property)`
- `class:loadSavedProperty(_property)`
- `class:saveProperty(_property, _value)`
- `class:save()`
- `class:onSave()`
- `class:isConstructorRespawnDisabled()`
- `class:onAfterUnloadTransition()`
- `class:removeConsistentSavedData()`
- `class:removeTempSavedData()`
- `class:onDestroySpawnableConstructor()`

</details>

### shadowSpawnablePlugin

`classes.spawnables.plugins.shadowSpawnablePlugin`

- returns `shadowSpawnablePlugin`

- `shadowSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (11)</summary>

- `class:createShadowSprite()`
- `class:attachShadow()`
- `class:detachShadow()`
- `class:setAlpha(_alpha)`
- `class:setVisible(_bool)`
- `class:setMask(_mask)`
- `class:setMaskX(_maskX)`
- `class:setMaskY(_maskY)`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`
- `class:updateSpriteLayer(_spriteLayerIndex)`
- `class:removeSprite()`

</details>

### soundSpawnablePlugin

`classes.spawnables.plugins.soundSpawnablePlugin`

- returns `soundSpawnablePlugin`

- `soundSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (3)</summary>

- `class:getRequiredSounds()`
- `class:finalize()`
- `class:onBeforeSpawn()`

</details>

### spottingCharacterPlugin

`classes.spawnables.plugins.spottingCharacterPlugin`

- returns `spottingCharacterPlugin`

- `spottingCharacterPlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (13)</summary>

- `class:getSpawnableToSpot()`
- `class:shouldSpotSpawnable()`
- `class:onSpawnableSpotted(_spawnable)`
- `class:trySpotSpawnable()`
- `class:onRotate(_direction, _isInitialRotation)`
- `class:onSpawnableGridMoveStart()`
- `class:onSpawnableGridMoveComplete()`
- `class:onSpawnableCutsceneEnded()`
- `class:startSpotting()`
- `class:stopSpotting()`
- `class:onStartBehaving()`
- `class:onStopBehaving()`
- `class:onAllSpawnablesSpawned()`

</details>

### spriteSpawnablePlugin

`classes.spawnables.plugins.spriteSpawnablePlugin`

- returns `spriteSpawnablePlugin`

- `spriteSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (28)</summary>

- `class:hasSprite()`
- `class:createSprite()`
- `class:calculateTileXLocation(_tileX)`
- `class:calculateTileYLocation(_tileY)`
- `class:setGridOffsetY(_key, _value)`
- `class:getGridOffsetY()`
- `class:onSave()`
- `class:onBeforeSpawn()`
- `class:play()`
- `class:pause()`
- `class:setBlendMode(_blendMode)`
- `class:setAlpha(_alpha)`
- `class:setVisible(_bool)`
- `class:setFrame(_frame)`
- `class:setMask(_mask)`
- `class:setMaskX(_maskX)`
- `class:setMaskY(_maskY)`
- `class:setMaskYFromBottom(_amountOfPixelsToMaskFromBottom)`
- `class:setSequence(_sequence)`
- `class:setSequenceWithoutReset(_sequence)`
- `class:setSequenceAndPlay(_sequence)`
- `class:spawnDefaultSprite()`
- `class:updateSpriteLayer(_spriteLayerIndex)`
- `class:updateSpriteLocation(_x, _y)`
- `class:removeSprite()`
- `class:finalize()`
- `class:reloadSprite()`
- `class:setSprite(_sprite, _tileOffsetX, _tileOffsetY)`

</details>

### teleporterPlugin

`classes.spawnables.plugins.teleporterPlugin`

- returns `teleporterPlugin`

- `teleporterPlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (4)</summary>

- `class:playTeleportSound()`
- `class:ifNotInCutsceneStartCutsceneAndPrepareAutoSaveslotData(_spawnable)`
- `class:doTeleport(_spawnable, _onComplete)`
- `class:optionallyExecuteCutsceneOnBeforeMapUnload(_spawnable, _onComplete)`

</details>

### tiledObjectSpawnablePlugin

`classes.spawnables.plugins.tiledObjectSpawnablePlugin`

- returns `tiledObjectSpawnablePlugin`

- `tiledObjectSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (11)</summary>

- `class:createTiledObject(_name, _layerIndex, _isPrimary)`
- `class:spawnPrimaryTiledObject(_layerIndex)`
- `class:spawnSecondaryTiledObject(_layerIndex)`
- `class:updatePrimaryTiledObjectTiles(_tiles)`
- `class:updateSecondaryTiledObjectTiles(_tiles)`
- `class:updatePrimaryTiledObject(_tileX, _tileY)`
- `class:updateSecondaryTiledObject(_tileX, _tileY)`
- `class:updatePrimaryTiledObjectLayer(_layerIndex)`
- `class:updateSecondaryTiledObjectLayer(_layerIndex)`
- `class:removePrimaryTiledObject()`
- `class:removeSecondaryTiledObject()`

</details>

### tremorInteractSpawnablePlugin

`classes.spawnables.plugins.tremorInteractSpawnablePlugin`

- returns `tremorInteractSpawnablePlugin`

- `tremorInteractSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:onTremorInteract(_onComplete)`
- `class:onAfterTremorInteract(_onComplete)`

</details>

### triggerableSpawnablePlugin

`classes.spawnables.plugins.triggerableSpawnablePlugin`

- returns `triggerableSpawnablePlugin`

- `triggerableSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (3)</summary>

- `class:doTriggerAction(_spawnable, _mode, _tileX, _tileY, _onComplete)`
- `class:onTriggerAction(_spawnable, _mode, _tileX, _tileY)`
- `class:onTriggerActionWithOnComplete(_spawnable, _mode, _tileX, _tileY, _onComplete)`

</details>

### triggerableTeleporterPlugin

`classes.spawnables.plugins.triggerableTeleporterPlugin`

- returns `triggerableTeleporterPlugin`

- `triggerableTeleporterPlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (2)</summary>

- `class:onBeforeTriggerTeleport(_abstractMovingSpawnable, _onComplete)`
- `class:afterGridMoveDoDoubtOrTeleport(_abstractMovingSpawnable, _onTriggerActionComplete, _onAfterDoubtStep)`

</details>

### triggeringWorldObjectSpawnablePlugin

`classes.spawnables.plugins.triggeringWorldObjectSpawnablePlugin`

- returns `triggeringWorldObjectSpawnablePlugin`

- `triggeringWorldObjectSpawnablePlugin:install(_class, _options, _tiledProperties)`

<details><summary>Instance / other functions (11)</summary>

- `class:setNextTileProperties(_tileX, _tileY)`
- `class:registerSpawnableOnCurrentTile(_spawnable)`
- `class:unregisterSpawnableFromCurrentTile(_spawnable)`
- `class:isRegisteredSpawnableOnCurrentTile(_spawnable)`
- `class:triggerStartEventToTriggerableSpawnables(_triggerType, _onComplete)`
- `class:triggerAfterEventToTriggerableSpawnables(_triggerType, _onComplete)`
- `class:setTriggerDisabled(_boolean)`
- `class:hasReachedNewTile(_tileX, _tileY, _isSpawn)`
- `class:setTileLocation(_tileX, _tileY)`
- `class:onBeforeSpawn()`
- `class:onAllSpawnablesSpawned()`

</details>

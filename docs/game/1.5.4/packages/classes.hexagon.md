# classes.hexagon

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[HexagonMap](#hexagonmap), [HexagonWorld](#hexagonworld), [HexagonWorldPlayerCharacter](#hexagonworldplayercharacter), [RogueWorldInterface](#rogueworldinterface)

### HexagonMap

`classes.hexagon.HexagonMap`

- returns `t`

- `HexagonMap:newWithUpdatableDimensions(_parent, _tileWidth, _tileHeight)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:updateDimensions(_mapWidth, _mapHeight)`
- `parentGroup:setSpriteLayer(_sprite, _tileX, _tileY)`
- `parentGroup:setSpriteLayerAndLocation(_sprite, _tileX, _tileY, _xOffset, _yOffset)`
- `parentGroup:removeSprites(_tileX, _tileY)`
- `parentGroup:replaceSprites(_sprite, _tileX, _tileY, _xOffset, _yOffset)`

</details>

### HexagonWorld

`classes.hexagon.HexagonWorld`

- returns `t`
- requires: `classes.hexagon.HexagonMap`, `classes.hexagon.objects.HexagonTilePlatform`, `classes.hexagon.RogueWorldInterface`, `classes.hexagon.HexagonWorldPlayerCharacter`, `classes.hexagon.biomes.AbstractGeneratedHexagonWorldBiome`, `classes.modules.interface.scrollViewBuilder`

- `HexagonWorld:get()`
- `HexagonWorld:isCreated()`
- `HexagonWorld:createInstance(_biomeConstructor, _biomeMapPreset, _loadTransition, _onAfterLoadTransition, _onBeforeRender)`
- `HexagonWorld:addOnDestroy(_onDestroy)`
- `HexagonWorld:destroy()`

<details><summary>Instance / other functions (21)</summary>

- `instance:getScrollView()`
- `instance:getBiome()`
- `instance:registerTile(_tile, _x, _y)`
- `instance:unregisterTile(_x, _y)`
- `instance:getTile(_x, _y)`
- `instance:getTileGrid()`
- `instance:getTilesByInstanceOf(_className)`
- `instance:getCenterCameraPositionForActionTileRow(_row)`
- `instance:getTileYOfActionTileRow(_row)`
- `instance:showUpcomingActionTileIndicators()`
- `instance:hideUpcomingActionTileIndicators(_row)`
- `instance:getBackgroundMusic()`
- `instance:unloadMapWithTransition(_unloadTransition, _onComplete)`
- `instance:getTargetCameraLocation(_tileX, _tileY, _xOffset, _yOffset)`
- `instance:setCameraLocation(_tileX, _tileY, _xOffset, _yOffset)`
- `instance:transitionCameraToTile(_duration, _easing, _tileX, _tileY, _xOffset, _yOffset, _onComplete)`
- `instance:transitionCameraToDelta(_duration, _easing, _deltaX, _deltaY, _onComplete)`
- `instance:pauseCameraTransition()`
- `instance:resumeCameraTransition()`
- `instance:getPlayerCharacter()`
- `instance:save(_coromonRoguePlanetSaveslotDataToStore)`

</details>

<details><summary>Fields with default values (7)</summary>

- `HexagonWorld.MAP_WIDTH` = `60`
- `HexagonWorld.MAP_HEIGHT` = `100`
- `HexagonWorld.TILE_X_OFFSET` = `32`
- `HexagonWorld.TILE_Y_OFFSET` = `14`
- `HexagonWorld.TILE_SURFACE_WIDTH` = `46`
- `HexagonWorld.TILE_SURFACE_HEIGHT` = `28`
- `HexagonWorld.TILE_CENTER_WITH_FULL_HEIGHT` = `16`

</details>

### HexagonWorldPlayerCharacter

`classes.hexagon.HexagonWorldPlayerCharacter`

- returns `HexagonWorldPlayerCharacter`
- requires: `classes.hexagon.objects.HexagonTilePlatform`, `classes.hexagon.RogueWorldInterface`, `classes.spawnables.roguePlayableCharacter`

- `HexagonWorldPlayerCharacter:new(_tileX, _tileY)`

<details><summary>Instance / other functions (25)</summary>

- `class:getCharacterWithShadowContainer()`
- `class:getCharacterSprite()`
- `class:getRogueDialogSpeakerPortraitUID()`
- `class:getRogueDialogSpeakerName()`
- `class:getTileX()`
- `class:getTileY()`
- `class:getTileXY()`
- `class:getTileXYObject()`
- `class:getTile()`
- `class:getDirection()`
- `class:spawnExpression(_type, _onComplete)`
- `class:smallJumpTurnToDirection(_direction, _onComplete)`
- `class:smallJumpTurnToNextTile(_newTileX, _newTileY, _onComplete)`
- `class:setTile(_newTileX, _newTileY)`
- `class:walkToNextTileInWalkingStack()`
- `class:setWalkingStackDirectionsAndEnsureWalking(_hexagonDirections, _onComplete)`
- `class:setWalkingStackAndEnsureWalking(_newTileX, _newTileY, _onComplete)`
- `class:walkToNextTile(_newTileX, _newTileY, _onComplete)`
- `class:walkToDirection(_direction, _onComplete)`
- `class:walkOrRotateToDirection(_direction, _onComplete)`
- `class:guessIntendedDirectionBasedOnInputDirection(_direction)`
- `class:rotate(_direction, _dontDoStepOrOnComplete)`
- `class:optionallyRotateToNearbyActionTile()`
- `class:receiveRogueWorldInterfaceInput(_direction)`
- `class:overtakeCurrentPlatformWithPlayerPathPlatform(_platform, _shouldWalkToTile, _onComplete)`

</details>

### RogueWorldInterface

`classes.hexagon.RogueWorldInterface`

- returns `t`
- requires: `classes.libraries.math2d`, `classes.interface.TallMonsterButton`, `classes.interface.RogueMonsterPreview`

- `RogueWorldInterface:isCreated()`
- `RogueWorldInterface:createInstance(_hexagonPlayerCharacter, _worldPlayerSpawnable)`

<details><summary>Instance / other functions (17)</summary>

- `instance:getHideableGroup()`
- `instance:refreshPauseButtonCharacterObjects()`
- `instance:setTopContextText(_contextText, _optionalIcon, _optionalIconYOffset)`
- `instance:refreshSquadPreview()`
- `instance:refreshInventory()`
- `instance:refreshArtifactItems()`
- `instance:selectUpcomingActionTileIfNotAlreadySelected(_actionTile)`
- `instance:setHoveredActionTileAndOptionallyUpdateFocusSelector(_actionTile)`
- `instance:setFocusedActionTile(_actionTile)`
- `instance:focusActionTileRow(_rowToFocus, _instant)`
- `instance:onUpcomingTileConfirmed(_actionTile, _onComplete)`
- `instance:getInputNavigation()`
- `instance:hide()`
- `instance:show()`
- `instance:isShown()`
- `instance:onAfterLoadTransition()`
- `instance:destroy()`

</details>

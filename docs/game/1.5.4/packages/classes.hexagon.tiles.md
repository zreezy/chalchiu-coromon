# classes.hexagon.tiles

Coromon 1.5.4. 17 module(s). [Back to index](../README.md)

[AbstractEnvironmentHexagonTile](#abstractenvironmenthexagontile), [AbstractHexagonTile](#abstracthexagontile), [AbstractLinearPathHexagonTile](#abstractlinearpathhexagontile), [AbstractPathHexagonTile](#abstractpathhexagontile), [FireDirtLinearPathHexagonTile](#firedirtlinearpathhexagontile), [FireGrassEnvironmentHexagonTile](#firegrassenvironmenthexagontile), [FireGroundEnvironmentHexagonTile](#firegroundenvironmenthexagontile), [GhostDirtLinearPathHexagonTile](#ghostdirtlinearpathhexagontile), [GhostGrassEnvironmentHexagonTile](#ghostgrassenvironmenthexagontile), [GhostWaterEnvironmentHexagonTile](#ghostwaterenvironmenthexagontile), [GrassDirtLinearPathHexagonTile](#grassdirtlinearpathhexagontile), [GrassEnvironmentHexagonTile](#grassenvironmenthexagontile), [LavaEnvironmentHexagonTile](#lavaenvironmenthexagontile), [SandDirtLinearPathHexagonTile](#sanddirtlinearpathhexagontile), [SandEnvironmentHexagonTile](#sandenvironmenthexagontile), [SandWaterEnvironmentHexagonTile](#sandwaterenvironmenthexagontile), [WaterEnvironmentHexagonTile](#waterenvironmenthexagontile)

### AbstractEnvironmentHexagonTile

`classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- returns `AbstractEnvironmentHexagonTile`
- requires: `classes.hexagon.tiles.AbstractHexagonTile`, `classes.hexagon.objects.HexagonTileRoadSign`

- `AbstractEnvironmentHexagonTile:new(__x, __y, _baseYOffset, _instanceYOffset)`

<details><summary>Instance / other functions (6)</summary>

- `class:hasBigObject()`
- `class:clearBigObject()`
- `class:getRoadSignImagePath()`
- `class:replaceAnyObjectWithRoadSign()`
- `class:hasRoadSign()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### AbstractHexagonTile

`classes.hexagon.tiles.AbstractHexagonTile`

- returns `AbstractHexagonTile`

- `AbstractHexagonTile:new(_x, _y, _baseYOffset, _instanceYOffset)`

<details><summary>Instance / other functions (30)</summary>

- `class:getX()`
- `class:getY()`
- `class:getXY()`
- `class:getXYObject()`
- `class:setXY(_newX, _newY)`
- `class:getTopMarginOfHexagonTileContainer()`
- `class:getBottomMarginOfHexagonTileContainer()`
- `class:getNeighbours()`
- `class:debugSetFillColor(_fillColor)`
- `class:debugGetFillColor()`
- `class:setInstanceYOffset(_yOffset)`
- `class:hasIncreasedYOffset()`
- `class:hasDecreasedYOffset()`
- `class:setEmptyTileDirections(_emptyTileDirections)`
- `class:getEmptyTileDirections()`
- `class:getEmptyTileDirectionMap()`
- `class:setEdgeDirections(_edgeDirections)`
- `class:getEdgeDirections()`
- `class:getEdgeDirectionMap()`
- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:register()`
- `class:getHexagonTileContainer()`
- `class:getTileSprite()`
- `class:getPillarSprite()`
- `class:renderDebugText(_text)`
- `class:isSpriteSpawnedAndAddedToHexagonWorld()`
- `class:spawnSpriteAndAddToHexagonWorld()`
- `class:onSpriteSpawned(_onComplete)`
- `class:destroy()`

</details>

### AbstractLinearPathHexagonTile

`classes.hexagon.tiles.AbstractLinearPathHexagonTile`

- returns `AbstractLinearPathHexagonTile`
- requires: `classes.hexagon.tiles.AbstractPathHexagonTile`, `classes.hexagon.tiles.plugins.LinearActionTilePlugin`

- `AbstractLinearPathHexagonTile:new(_tileX, _tileY, _baseYOffset, _isActionTile)`

<details><summary>Instance / other functions (19)</summary>

- `class:getDirectionToPathTiles(_adjacencyDirection)`
- `class:onCreateTileConnectionsSprite(_connectedPathTilesFileSuffix)`
- `class:addDirectionToPathTile(_adjacencyDirection, _directionToNextTile)`
- `class:getConnectedPathTileDirectionIfOnlyOne(_adjacencyDirection)`
- `class:getConnectedPathTileXY(_adjacencyDirection, _direction)`
- `class:getConnectedPathTile(_adjacencyDirection, _direction)`
- `class:getConnectedPathTiles(_adjacencyDirection)`
- `class:getConnectedPathTilesAsArray(_adjacencyDirection)`
- `class:getConnectedPathTilesFileSuffix(_allowedBottomDirections, _allowedTopDirections)`
- `class:isFirstPathTile()`
- `class:isLastPathTile()`
- `class:disableDirection(_adjacencyDirection, _direction)`
- `class:createTileConnectionsSprite()`
- `class:createTileConnectionsOverlaySprite(_connectedPathTilesFileSuffix)`
- `class:onDisable(_instant, _chosenPathTileMap)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:addArrowSpriteDirections(_arrowType, _previousDirection, _nextDirection)`
- `class:clearArrowSpriteDirections()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

<details><summary>Fields with default values (1)</summary>

- `AbstractLinearPathHexagonTile.adjacencyDirections` = `{}`

</details>

### AbstractPathHexagonTile

`classes.hexagon.tiles.AbstractPathHexagonTile`

- returns `AbstractPathHexagonTile`
- requires: `classes.hexagon.tiles.AbstractHexagonTile`, `classes.hexagon.objects.HexagonTileCactus`, `classes.hexagon.objects.HexagonTileFloatingMushroom`, `classes.hexagon.objects.HexagonTileFloatingSpaceResource`

- `AbstractPathHexagonTile:new(_tileX, _tileY, _baseYOffset)`

<details><summary>Instance / other functions (9)</summary>

- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:setSoftDisabled(_isSoftDisabled)`
- `class:isSoftDisabled()`
- `class:onDisable(_instant, _chosenPathTileMap)`
- `class:disable(_instant, _chosenPathTileMap)`
- `class:isDisabled()`
- `class:setPickupObjectMode(_pickupObjectMode)`
- `class:getPickupObject()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### FireDirtLinearPathHexagonTile

`classes.hexagon.tiles.FireDirtLinearPathHexagonTile`

- returns `DirtPathHexagonTile`
- requires: `classes.hexagon.tiles.AbstractLinearPathHexagonTile`

- `FireDirtLinearPathHexagonTile:new(_x, _y, _baseYOffset, _isActionTile)`

<details><summary>Instance / other functions (3)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:onCreateTileConnectionsSprite(_connectedPathTilesFileSuffix)`

</details>

### FireGrassEnvironmentHexagonTile

`classes.hexagon.tiles.FireGrassEnvironmentHexagonTile`

- returns `FireGrassEnvironmentHexagonTile`
- requires: `classes.hexagon.objects.HexagonTileFireGrassPlant`, `classes.hexagon.objects.HexagonTileFireGrassFlower`, `classes.hexagon.objects.HexagonTileFireGrassTree`, `classes.hexagon.objects.HexagonTileFireGrassRock`, `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `FireGrassEnvironmentHexagonTile:new(_x, _y, _baseYOffset, _instanceYOffset, _tileSpriteMode)`

<details><summary>Instance / other functions (4)</summary>

- `class:getRoadSignImagePath()`
- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### FireGroundEnvironmentHexagonTile

`classes.hexagon.tiles.FireGroundEnvironmentHexagonTile`

- returns `FireGroundEnvironmentHexagonTile`
- requires: `classes.hexagon.objects.HexagonTileFireGroundRock`, `classes.hexagon.objects.HexagonTileSmallFireGroundRock`, `classes.hexagon.objects.HexagonTileFireGroundPlant`, `classes.hexagon.objects.HexagonTileFireGroundBones`, `classes.hexagon.objects.HexagonTileFireGroundStones`, `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `FireGroundEnvironmentHexagonTile:new(_x, _y, _baseYOffset, _instanceYOffset, _tileSpriteMode)`

<details><summary>Instance / other functions (6)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:getRoadSignImagePath()`
- `class:setHasPlant(_hasPlant)`
- `class:setHasRock(_hasRock)`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### GhostDirtLinearPathHexagonTile

`classes.hexagon.tiles.GhostDirtLinearPathHexagonTile`

- returns `GhostDirtLinearPathHexagonTile`
- requires: `classes.hexagon.tiles.AbstractLinearPathHexagonTile`

- `GhostDirtLinearPathHexagonTile:new(_x, _y, _baseYOffset, _isActionTile)`

<details><summary>Instance / other functions (3)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:onCreateTileConnectionsSprite(_connectedPathTilesFileSuffix)`

</details>

### GhostGrassEnvironmentHexagonTile

`classes.hexagon.tiles.GhostGrassEnvironmentHexagonTile`

- returns `GhostGrassEnvironmentHexagonTile`
- requires: `classes.hexagon.objects.HexagonTileSwampTree`, `classes.hexagon.objects.HexagonTileGhostFlower`, `classes.hexagon.objects.HexagonTileGhostFireflies`, `classes.hexagon.objects.HexagonTileGhostMushrooms`, `classes.hexagon.objects.HexagonTileSwampMushroom`, `classes.hexagon.objects.HexagonTileSmallGhostRock`, `classes.hexagon.objects.HexagonTileBigGhostRock`, `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `GhostGrassEnvironmentHexagonTile:new(_x, _y, _baseYOffset, _instanceYOffset, _tileSpriteMode)`

<details><summary>Instance / other functions (7)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:getRoadSignImagePath()`
- `class:setTileSpriteMode(_newTileSpriteMode)`
- `class:hasBigObject()`
- `class:clearBigObject()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### GhostWaterEnvironmentHexagonTile

`classes.hexagon.tiles.GhostWaterEnvironmentHexagonTile`

- returns `GhostWaterEnvironmentHexagonTile`
- requires: `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`, `classes.hexagon.objects.HexagonTileGhostWaterCattails`

- `GhostWaterEnvironmentHexagonTile:new(__tileX, __tileY, _baseYOffset, _isCattails)`

<details><summary>Instance / other functions (3)</summary>

- `class:getRoadSignImagePath()`
- `class:createTileSprite()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### GrassDirtLinearPathHexagonTile

`classes.hexagon.tiles.GrassDirtLinearPathHexagonTile`

- returns `GrassDirtLinearPathHexagonTile`
- requires: `classes.hexagon.tiles.AbstractLinearPathHexagonTile`

- `GrassDirtLinearPathHexagonTile:new(_x, _y, _baseYOffset, _isActionTile)`

<details><summary>Instance / other functions (3)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:onCreateTileConnectionsSprite(_connectedPathTilesFileSuffix)`

</details>

### GrassEnvironmentHexagonTile

`classes.hexagon.tiles.GrassEnvironmentHexagonTile`

- returns `GrassEnvironmentHexagonTile`
- requires: `classes.hexagon.objects.HexagonTileGrassRock`, `classes.hexagon.objects.HexagonTileSmallGrassRock`, `classes.hexagon.objects.HexagonTileGrassMushrooms`, `classes.hexagon.objects.HexagonTileGrassFlower`, `classes.hexagon.objects.HexagonTileGrassTree`, `classes.hexagon.objects.HexagonTileGrassTreeStump`, `classes.hexagon.objects.HexagonTileBigTree`, `classes.hexagon.objects.HexagonTileBigTreeEntrance`, `classes.hexagon.objects.HexagonTileBird`, `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `GrassEnvironmentHexagonTile:new(_x, _y, _baseYOffset, _instanceYOffset, _tileSpriteMode, _distanceFromEdge)`

<details><summary>Instance / other functions (7)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:getRoadSignImagePath()`
- `class:setTileSpriteMode(_newTileSpriteMode)`
- `class:hasBigObject()`
- `class:clearBigObject()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### LavaEnvironmentHexagonTile

`classes.hexagon.tiles.LavaEnvironmentHexagonTile`

- returns `LavaEnvironmentHexagonTile`
- requires: `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `LavaEnvironmentHexagonTile:new(_x, _y, _baseYOffset)`

<details><summary>Instance / other functions (2)</summary>

- `class:getRoadSignImagePath()`
- `class:createTileSprite()`

</details>

### SandDirtLinearPathHexagonTile

`classes.hexagon.tiles.SandDirtLinearPathHexagonTile`

- returns `SandDirtLinearPathHexagonTile`
- requires: `classes.hexagon.tiles.AbstractLinearPathHexagonTile`

- `SandDirtLinearPathHexagonTile:new(_x, _y, _baseYOffset, _isActionTile)`

<details><summary>Instance / other functions (3)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:onCreateTileConnectionsSprite(_connectedPathTilesFileSuffix)`

</details>

### SandEnvironmentHexagonTile

`classes.hexagon.tiles.SandEnvironmentHexagonTile`

- returns `SandEnvironmentHexagonTile`
- requires: `classes.hexagon.objects.HexagonTileSmallSandRock`, `classes.hexagon.objects.HexagonTileSandHeap`, `classes.hexagon.objects.HexagonTileSandVase`, `classes.hexagon.objects.HexagonTileSandBush`, `classes.hexagon.objects.HexagonTileSandCactus`, `classes.hexagon.objects.HexagonTileSandTree`, `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `SandEnvironmentHexagonTile:new(_x, _y, _baseYOffset, _instanceYOffset, _tileSpriteMode)`

<details><summary>Instance / other functions (6)</summary>

- `class:createPillarSprite()`
- `class:createTileSprite()`
- `class:setTileSpriteMode(_newTileSpriteMode)`
- `class:hasBigObject()`
- `class:clearBigObject()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### SandWaterEnvironmentHexagonTile

`classes.hexagon.tiles.SandWaterEnvironmentHexagonTile`

- returns `SandWaterEnvironmentHexagonTile`
- requires: `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`

- `SandWaterEnvironmentHexagonTile:new(__tileX, __tileY, _baseYOffset)`

<details><summary>Instance / other functions (3)</summary>

- `class:getRoadSignImagePath()`
- `class:createTileSprite()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

### WaterEnvironmentHexagonTile

`classes.hexagon.tiles.WaterEnvironmentHexagonTile`

- returns `WaterEnvironmentHexagonTile`
- requires: `classes.hexagon.tiles.AbstractEnvironmentHexagonTile`, `classes.hexagon.objects.HexagonTileWaterCattails`

- `WaterEnvironmentHexagonTile:new(__tileX, __tileY, _baseYOffset, _isCattail)`

<details><summary>Instance / other functions (3)</summary>

- `class:getRoadSignImagePath()`
- `class:createTileSprite()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

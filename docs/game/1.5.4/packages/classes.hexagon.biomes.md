# classes.hexagon.biomes

Coromon 1.5.4. 3 module(s). [Back to index](../README.md)

[AbstractGeneratedHexagonWorldBiome](#abstractgeneratedhexagonworldbiome), [AbstractHexagonWorldBiome](#abstracthexagonworldbiome), [AbstractStaticHexagonWorldBiome](#abstractstatichexagonworldbiome)

### AbstractGeneratedHexagonWorldBiome

`classes.hexagon.biomes.AbstractGeneratedHexagonWorldBiome`

- returns `AbstractGeneratedHexagonWorldBiome`
- requires: `classes.modules.SimplexNoise`, `classes.hexagon.objects.HexagonTilePlatform`, `classes.hexagon.biomes.AbstractHexagonWorldBiome`, `classes.hexagon.tiles.GrassEnvironmentHexagonTile`, `classes.hexagon.tiles.WaterEnvironmentHexagonTile`, `classes.hexagon.tiles.SandWaterEnvironmentHexagonTile`, `classes.hexagon.tiles.GhostWaterEnvironmentHexagonTile`, `classes.hexagon.tiles.LavaEnvironmentHexagonTile`

- `AbstractGeneratedHexagonWorldBiome:new(_mapPreset, _mapGenerationParamValues, _edgeType, _amountOfActionTileRows)`

<details><summary>Instance / other functions (24)</summary>

- `class:getMapGenerationParamValues()`
- `class:getEdgeType()`
- `class:getAmountOfActionTileRows()`
- `class:getAmountOfActionTileColumns()`
- `class:createPathTile(_tileX, _tileY, _yOffset, _isActionTile)`
- `class:getTileXForActionTileGridColumn(_actionTileColumn)`
- `class:getTileYForActionTileGridRow(_actionTileRow)`
- `class:createActionTileGrid()`
- `class:populateActionTileGridActions()`
- `class:connectActionTileGrid()`
- `class:createPathTiles()`
- `class:onAllPathTilesGenerated()`
- `class:updateAccessiblePathGrid()`
- `class:getNonDisabledActionTilesInRow(_row)`
- `class:getLastPlayerActionTile()`
- `class:getNextPlayerActionTiles()`
- `class:widenNarrowMountainPaths()`
- `class:clearBigObjectsNextToPaths()`
- `class:cutOffHexagonMapEdges()`
- `class:getPathTiles()`
- `class:getActionTiles()`
- `class:getActionTileGrid()`
- `class:removeActionTile(_actionTile)`
- `class:generateNoiseGrid(_scale)`

</details>

<details><summary>Fields with default values (7)</summary>

- `AbstractGeneratedHexagonWorldBiome.repeatSamePathDirectionChance` = `40`
- `AbstractGeneratedHexagonWorldBiome.dodgeFromShortestBranchPathChance` = `60`
- `AbstractGeneratedHexagonWorldBiome.dodgeFromShortestBranchPathRepeatSameDirectionChance` = `20`
- `AbstractGeneratedHexagonWorldBiome.AMOUNT_OF_AVAILABLE_ACTION_TILE_COLUMNS` = `4`
- `AbstractGeneratedHexagonWorldBiome.MAX_AMOUNT_OF_ACTION_TILES_BETWEEN_REST` = `4`
- `AbstractGeneratedHexagonWorldBiome.CENTER_ACTION_TILE_COLUMN` = `3`
- `AbstractGeneratedHexagonWorldBiome.AMOUNT_OF_PATHS` = `3`

</details>

### AbstractHexagonWorldBiome

`classes.hexagon.biomes.AbstractHexagonWorldBiome`

- returns `AbstractHexagonWorldBiome`

- `AbstractHexagonWorldBiome:new(_mapPreset)`

<details><summary>Instance / other functions (11)</summary>

- `class:getMapPreset()`
- `class:getBiomeUID()`
- `class:getBattleEnvironment()`
- `class:getBackgroundMusicIntro()`
- `class:getBackgroundMusic()`
- `class:getBackgroundColor()`
- `class:getGrassType()`
- `class:createEnvironmentTiles()`
- `class:createPathTiles()`
- `class:setAccessiblePathGrid(_accessiblePathGrid)`
- `class:getAccessiblePathGrid()`

</details>

### AbstractStaticHexagonWorldBiome

`classes.hexagon.biomes.AbstractStaticHexagonWorldBiome`

- returns `AbstractStaticHexagonWorldBiome`
- requires: `classes.hexagon.biomes.AbstractHexagonWorldBiome`

- `AbstractStaticHexagonWorldBiome:new(_mapPreset)`

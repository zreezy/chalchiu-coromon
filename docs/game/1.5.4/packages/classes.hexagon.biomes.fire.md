# classes.hexagon.biomes.fire

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[FireHexagonWorldBiome](#firehexagonworldbiome), [mapGenerationParams](#mapgenerationparams)

### FireHexagonWorldBiome

`classes.hexagon.biomes.fire.FireHexagonWorldBiome`

- returns `FireHexagonWorldBiome`
- requires: `classes.hexagon.biomes.AbstractGeneratedHexagonWorldBiome`, `classes.hexagon.tiles.LavaEnvironmentHexagonTile`, `classes.hexagon.tiles.FireDirtLinearPathHexagonTile`, `classes.hexagon.tiles.FireGrassEnvironmentHexagonTile`, `classes.hexagon.tiles.FireGroundEnvironmentHexagonTile`

- `FireHexagonWorldBiome:new(_mapPreset, _mapGenerationParamValues, _edgeType, _amountOfActionTiles)`

<details><summary>Instance / other functions (6)</summary>

- `class:getBiomeUID()`
- `class:getBattleEnvironment()`
- `class:getBackgroundMusic()`
- `class:getGrassType()`
- `class:createPathTile(_tileX, _tileY, _yOffset, _isActionTile)`
- `class:createEnvironmentTiles()`

</details>

### mapGenerationParams

`classes.hexagon.biomes.fire.mapGenerationParams`

- returns `mapGenerationParams`

<details><summary>Fields with default values (136)</summary>

- `mapGenerationParams.base.lavaFrequency.minValue` = `-1`
- `mapGenerationParams.base.lavaFrequency.maxValue` = `1`
- `mapGenerationParams.base.lavaFrequency.scale` = `0.01`
- `mapGenerationParams.base.lavaFrequency.sortOrder` = `1`
- `mapGenerationParams.base.lavaFrequency.label` = `"Ground or Lava frequency"`
- `mapGenerationParams.base.lavaFrequency.negate` = `true`
- `mapGenerationParams.base.lavaFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.base.lavaScattering.minValue` = `0`
- `mapGenerationParams.base.lavaScattering.maxValue` = `1`
- `mapGenerationParams.base.lavaScattering.scale` = `0.01`
- `mapGenerationParams.base.lavaScattering.sortOrder` = `2`
- `mapGenerationParams.base.lavaScattering.label` = `"Lava scattering"`
- `mapGenerationParams.base.grassFrequency.minValue` = `-1`
- `mapGenerationParams.base.grassFrequency.maxValue` = `1`
- `mapGenerationParams.base.grassFrequency.scale` = `0.01`
- `mapGenerationParams.base.grassFrequency.sortOrder` = `3`
- `mapGenerationParams.base.grassFrequency.label` = `"Grass on Ground frequency"`
- `mapGenerationParams.base.grassFrequency.negate` = `true`
- `mapGenerationParams.base.grassFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.base.grassScattering.minValue` = `0`
- `mapGenerationParams.base.grassScattering.maxValue` = `1`
- `mapGenerationParams.base.grassScattering.scale` = `0.01`
- `mapGenerationParams.base.grassScattering.sortOrder` = `4`
- `mapGenerationParams.base.grassScattering.label` = `"Grass scattering"`
- `mapGenerationParams.base.mountainFrequency.minValue` = `-1`
- `mapGenerationParams.base.mountainFrequency.maxValue` = `1`
- `mapGenerationParams.base.mountainFrequency.scale` = `0.01`
- `mapGenerationParams.base.mountainFrequency.sortOrder` = `5`
- `mapGenerationParams.base.mountainFrequency.label` = `"Mountain on Ground frequency"`
- `mapGenerationParams.base.mountainFrequency.negate` = `true`
- `mapGenerationParams.base.mountainFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.base.mountainScattering.minValue` = `0`
- `mapGenerationParams.base.mountainScattering.maxValue` = `1`
- `mapGenerationParams.base.mountainScattering.scale` = `0.01`
- `mapGenerationParams.base.mountainScattering.sortOrder` = `6`
- `mapGenerationParams.base.mountainScattering.label` = `"Mountain on Ground scattering"`
- `mapGenerationParams.ground.plantFrequency.minValue` = `-1`
- `mapGenerationParams.ground.plantFrequency.maxValue` = `1`
- `mapGenerationParams.ground.plantFrequency.scale` = `0.01`
- `mapGenerationParams.ground.plantFrequency.label` = `"1. Plant frequency"`
- ... 96 more in `api.json`

</details>

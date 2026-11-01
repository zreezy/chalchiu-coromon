# classes.hexagon.biomes.ghost

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[GhostHexagonWorldBiome](#ghosthexagonworldbiome), [mapGenerationParams](#mapgenerationparams)

### GhostHexagonWorldBiome

`classes.hexagon.biomes.ghost.GhostHexagonWorldBiome`

- returns `GhostHexagonWorldBiome`
- requires: `classes.hexagon.biomes.AbstractGeneratedHexagonWorldBiome`, `classes.hexagon.tiles.GhostWaterEnvironmentHexagonTile`, `classes.hexagon.tiles.GhostGrassEnvironmentHexagonTile`, `classes.hexagon.tiles.GhostDirtLinearPathHexagonTile`

- `GhostHexagonWorldBiome:new(_mapPreset, _mapGenerationParamValues, _edgeType, _amountOfActionTiles)`

<details><summary>Instance / other functions (8)</summary>

- `class:getBiomeUID()`
- `class:getBattleEnvironment()`
- `class:getBackgroundMusic()`
- `class:getBackgroundMusicIntro()`
- `class:getBackgroundColor()`
- `class:getGrassType()`
- `class:createPathTile(_tileX, _tileY, _yOffset, _isActionTile)`
- `class:createEnvironmentTiles()`

</details>

### mapGenerationParams

`classes.hexagon.biomes.ghost.mapGenerationParams`

- returns `mapGenerationParams`

<details><summary>Fields with default values (92)</summary>

- `mapGenerationParams.base.waterFrequency.minValue` = `-1`
- `mapGenerationParams.base.waterFrequency.maxValue` = `1`
- `mapGenerationParams.base.waterFrequency.scale` = `0.01`
- `mapGenerationParams.base.waterFrequency.sortOrder` = `1`
- `mapGenerationParams.base.waterFrequency.label` = `"Grass or Water frequency"`
- `mapGenerationParams.base.waterFrequency.negate` = `true`
- `mapGenerationParams.base.waterFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.base.waterScattering.minValue` = `0`
- `mapGenerationParams.base.waterScattering.maxValue` = `1`
- `mapGenerationParams.base.waterScattering.scale` = `0.01`
- `mapGenerationParams.base.waterScattering.sortOrder` = `2`
- `mapGenerationParams.base.waterScattering.label` = `"Water scattering"`
- `mapGenerationParams.base.mountainFrequency.minValue` = `-1`
- `mapGenerationParams.base.mountainFrequency.maxValue` = `1`
- `mapGenerationParams.base.mountainFrequency.scale` = `0.01`
- `mapGenerationParams.base.mountainFrequency.sortOrder` = `3`
- `mapGenerationParams.base.mountainFrequency.label` = `"Mountain on Grass frequency"`
- `mapGenerationParams.base.mountainFrequency.negate` = `true`
- `mapGenerationParams.base.mountainFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.base.mountainScattering.minValue` = `0`
- `mapGenerationParams.base.mountainScattering.maxValue` = `1`
- `mapGenerationParams.base.mountainScattering.scale` = `0.01`
- `mapGenerationParams.base.mountainScattering.sortOrder` = `4`
- `mapGenerationParams.base.mountainScattering.label` = `"Mountain on Grass scattering"`
- `mapGenerationParams.water.waterCattailFrequency.minValue` = `-1`
- `mapGenerationParams.water.waterCattailFrequency.maxValue` = `1`
- `mapGenerationParams.water.waterCattailFrequency.scale` = `0.01`
- `mapGenerationParams.water.waterCattailFrequency.label` = `"Water cattail frequency"`
- `mapGenerationParams.water.waterCattailFrequency.negate` = `true`
- `mapGenerationParams.water.waterCattailFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.water.waterCattailScattering.minValue` = `0`
- `mapGenerationParams.water.waterCattailScattering.maxValue` = `1`
- `mapGenerationParams.water.waterCattailScattering.scale` = `0.01`
- `mapGenerationParams.water.waterCattailScattering.label` = `"Water cattail scattering"`
- `mapGenerationParams.grass.forestTreeFrequency.minValue` = `-1`
- `mapGenerationParams.grass.forestTreeFrequency.maxValue` = `1`
- `mapGenerationParams.grass.forestTreeFrequency.scale` = `0.01`
- `mapGenerationParams.grass.forestTreeFrequency.label` = `"1. Tree frequency"`
- `mapGenerationParams.grass.forestTreeFrequency.negate` = `true`
- `mapGenerationParams.grass.forestTreeFrequency.valueMode` = `"percentage"`
- ... 52 more in `api.json`

</details>

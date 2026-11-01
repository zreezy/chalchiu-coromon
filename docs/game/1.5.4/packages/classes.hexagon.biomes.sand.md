# classes.hexagon.biomes.sand

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[SandHexagonWorldBiome](#sandhexagonworldbiome), [mapGenerationParams](#mapgenerationparams)

### SandHexagonWorldBiome

`classes.hexagon.biomes.sand.SandHexagonWorldBiome`

- returns `SandHexagonWorldBiome`
- requires: `classes.hexagon.biomes.AbstractGeneratedHexagonWorldBiome`, `classes.hexagon.tiles.SandWaterEnvironmentHexagonTile`, `classes.hexagon.tiles.SandEnvironmentHexagonTile`, `classes.hexagon.tiles.SandDirtLinearPathHexagonTile`

- `SandHexagonWorldBiome:new(_mapPreset, _mapGenerationParamValues, _edgeType, _amountOfActionTiles)`

<details><summary>Instance / other functions (8)</summary>

- `class:getBiomeUID()`
- `class:getBattleEnvironment()`
- `class:getBackgroundMusicIntro()`
- `class:getBackgroundMusic()`
- `class:getBackgroundColor()`
- `class:getGrassType()`
- `class:createPathTile(_tileX, _tileY, _yOffset, _isActionTile)`
- `class:createEnvironmentTiles()`

</details>

### mapGenerationParams

`classes.hexagon.biomes.sand.mapGenerationParams`

- returns `mapGenerationParams`

<details><summary>Fields with default values (84)</summary>

- `mapGenerationParams.base.waterFrequency.minValue` = `-1`
- `mapGenerationParams.base.waterFrequency.maxValue` = `1`
- `mapGenerationParams.base.waterFrequency.scale` = `0.01`
- `mapGenerationParams.base.waterFrequency.sortOrder` = `1`
- `mapGenerationParams.base.waterFrequency.label` = `"Sand or Water frequency"`
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
- `mapGenerationParams.base.mountainFrequency.label` = `"Mountain on Sand frequency"`
- `mapGenerationParams.base.mountainFrequency.negate` = `true`
- `mapGenerationParams.base.mountainFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.base.mountainScattering.minValue` = `0`
- `mapGenerationParams.base.mountainScattering.maxValue` = `1`
- `mapGenerationParams.base.mountainScattering.scale` = `0.01`
- `mapGenerationParams.base.mountainScattering.sortOrder` = `4`
- `mapGenerationParams.base.mountainScattering.label` = `"Mountain on Sand scattering"`
- `mapGenerationParams.sand.treeFrequency.minValue` = `-1`
- `mapGenerationParams.sand.treeFrequency.maxValue` = `1`
- `mapGenerationParams.sand.treeFrequency.scale` = `0.01`
- `mapGenerationParams.sand.treeFrequency.label` = `"1. Tree frequency"`
- `mapGenerationParams.sand.treeFrequency.negate` = `true`
- `mapGenerationParams.sand.treeFrequency.valueMode` = `"percentage"`
- `mapGenerationParams.sand.treeScattering.minValue` = `0`
- `mapGenerationParams.sand.treeScattering.maxValue` = `1`
- `mapGenerationParams.sand.treeScattering.scale` = `0.01`
- `mapGenerationParams.sand.treeScattering.label` = `"1. Tree scattering"`
- `mapGenerationParams.sand.sandHeapFrequency.minValue` = `-1`
- `mapGenerationParams.sand.sandHeapFrequency.maxValue` = `1`
- `mapGenerationParams.sand.sandHeapFrequency.scale` = `0.01`
- `mapGenerationParams.sand.sandHeapFrequency.label` = `"2. Big rock frequency"`
- `mapGenerationParams.sand.sandHeapFrequency.negate` = `true`
- `mapGenerationParams.sand.sandHeapFrequency.valueMode` = `"percentage"`
- ... 44 more in `api.json`

</details>

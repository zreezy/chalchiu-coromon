# classes.hexagon.objects

Coromon 1.5.4. 43 module(s). [Back to index](../README.md)

[AbstractHexagonTileFloatingPickupObject](#abstracthexagontilefloatingpickupobject), [AbstractHexagonTileObject](#abstracthexagontileobject), [AbstractHexagonTilePickupObject](#abstracthexagontilepickupobject), [HexagonTileBigGhostRock](#hexagontilebigghostrock), [HexagonTileBigTree](#hexagontilebigtree), [HexagonTileBigTreeEntrance](#hexagontilebigtreeentrance), [HexagonTileBird](#hexagontilebird), [HexagonTileCactus](#hexagontilecactus), [HexagonTileFireGrassFlower](#hexagontilefiregrassflower), [HexagonTileFireGrassPlant](#hexagontilefiregrassplant), [HexagonTileFireGrassRock](#hexagontilefiregrassrock), [HexagonTileFireGrassTree](#hexagontilefiregrasstree), [HexagonTileFireGroundBones](#hexagontilefiregroundbones), [HexagonTileFireGroundPlant](#hexagontilefiregroundplant), [HexagonTileFireGroundRock](#hexagontilefiregroundrock), [HexagonTileFireGroundStones](#hexagontilefiregroundstones), [HexagonTileFloatingMushroom](#hexagontilefloatingmushroom), [HexagonTileFloatingSpaceResource](#hexagontilefloatingspaceresource), [HexagonTileGhostFireflies](#hexagontileghostfireflies), [HexagonTileGhostFlower](#hexagontileghostflower), [HexagonTileGhostMushrooms](#hexagontileghostmushrooms), [HexagonTileGhostWaterCattails](#hexagontileghostwatercattails), [HexagonTileGhostWaterPlant](#hexagontileghostwaterplant), [HexagonTileGrassFlower](#hexagontilegrassflower), [HexagonTileGrassMushrooms](#hexagontilegrassmushrooms), [HexagonTileGrassRock](#hexagontilegrassrock), [HexagonTileGrassTree](#hexagontilegrasstree), [HexagonTileGrassTreeStump](#hexagontilegrasstreestump), [HexagonTilePlatform](#hexagontileplatform), [HexagonTileRoadSign](#hexagontileroadsign), [HexagonTileRoadblock](#hexagontileroadblock), [HexagonTileSandBush](#hexagontilesandbush), [HexagonTileSandCactus](#hexagontilesandcactus), [HexagonTileSandHeap](#hexagontilesandheap), [HexagonTileSandTree](#hexagontilesandtree), [HexagonTileSandVase](#hexagontilesandvase), [HexagonTileSmallFireGroundRock](#hexagontilesmallfiregroundrock), [HexagonTileSmallGhostRock](#hexagontilesmallghostrock), [HexagonTileSmallGrassRock](#hexagontilesmallgrassrock), [HexagonTileSmallSandRock](#hexagontilesmallsandrock), [HexagonTileSwampMushroom](#hexagontileswampmushroom), [HexagonTileSwampTree](#hexagontileswamptree), [HexagonTileWaterCattails](#hexagontilewatercattails)

### AbstractHexagonTileFloatingPickupObject

`classes.hexagon.objects.AbstractHexagonTileFloatingPickupObject`

- returns `AbstractHexagonTileFloatingPickupObject`
- requires: `classes.hexagon.objects.AbstractHexagonTilePickupObject`

- `AbstractHexagonTileFloatingPickupObject:new()`

<details><summary>Instance / other functions (3)</summary>

- `class:createFloatingSprite(_spriteContainer)`
- `class:createShadowSprite(_spriteContainer)`
- `class:createSprite()`

</details>

### AbstractHexagonTileObject

`classes.hexagon.objects.AbstractHexagonTileObject`

- returns `AbstractHexagonTileObject`

- `AbstractHexagonTileObject:new()`

<details><summary>Instance / other functions (5)</summary>

- `class:createSprite()`
- `class:getSprite()`
- `class:destroySprite()`
- `class:getTile()`
- `class:spawnSpriteOnTile(_tile)`

</details>

### AbstractHexagonTilePickupObject

`classes.hexagon.objects.AbstractHexagonTilePickupObject`

- returns `AbstractHexagonTilePickupObject`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `AbstractHexagonTilePickupObject:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:onPickup()`

</details>

### HexagonTileBigGhostRock

`classes.hexagon.objects.HexagonTileBigGhostRock`

- returns `HexagonTileGhostBigRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileBigGhostRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileBigTree

`classes.hexagon.objects.HexagonTileBigTree`

- returns `HexagonTileGrassTreeStump`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileBigTree:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileBigTreeEntrance

`classes.hexagon.objects.HexagonTileBigTreeEntrance`

- returns `HexagonTileGrassTreeStump`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileBigTreeEntrance:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileBird

`classes.hexagon.objects.HexagonTileBird`

- returns `HexagonTileBird`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`, `classes.sprites.Bird`

- `HexagonTileBird:new()`

<details><summary>Instance / other functions (2)</summary>

- `class:createSprite()`
- `class:spawnSpriteOnTile(_tile)`

</details>

### HexagonTileCactus

`classes.hexagon.objects.HexagonTileCactus`

- returns `HexagonTileCactus`
- requires: `classes.hexagon.objects.AbstractHexagonTilePickupObject`

- `HexagonTileCactus:new()`

<details><summary>Instance / other functions (3)</summary>

- `class:createSprite()`
- `class:doPlayerGotHurtAnimation(_onComplete)`
- `class:onPickup()`

</details>

### HexagonTileFireGrassFlower

`classes.hexagon.objects.HexagonTileFireGrassFlower`

- returns `HexagonTileFireGrassFlower`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGrassFlower:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGrassPlant

`classes.hexagon.objects.HexagonTileFireGrassPlant`

- returns `HexagonTileFireGrassPlant`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGrassPlant:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGrassRock

`classes.hexagon.objects.HexagonTileFireGrassRock`

- returns `HexagonTileFireGrassRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGrassRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGrassTree

`classes.hexagon.objects.HexagonTileFireGrassTree`

- returns `HexagonTileFireGrassTree`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGrassTree:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGroundBones

`classes.hexagon.objects.HexagonTileFireGroundBones`

- returns `HexagonTileFireGroundBones`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGroundBones:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGroundPlant

`classes.hexagon.objects.HexagonTileFireGroundPlant`

- returns `HexagonTileFireGroundPlant`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGroundPlant:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGroundRock

`classes.hexagon.objects.HexagonTileFireGroundRock`

- returns `HexagonTileFireGroundRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGroundRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFireGroundStones

`classes.hexagon.objects.HexagonTileFireGroundStones`

- returns `HexagonTileFireGroundStones`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileFireGroundStones:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileFloatingMushroom

`classes.hexagon.objects.HexagonTileFloatingMushroom`

- returns `HexagonTileFloatingMushroom`
- requires: `classes.hexagon.objects.AbstractHexagonTileFloatingPickupObject`

- `HexagonTileFloatingMushroom:new()`

<details><summary>Instance / other functions (3)</summary>

- `class:createFloatingSprite(_spriteContainer)`
- `class:createShadowSprite(_spriteContainer)`
- `class:onPickup()`

</details>

### HexagonTileFloatingSpaceResource

`classes.hexagon.objects.HexagonTileFloatingSpaceResource`

- returns `HexagonTileFloatingSpaceResource`
- requires: `classes.hexagon.objects.AbstractHexagonTileFloatingPickupObject`

- `HexagonTileFloatingSpaceResource:new()`

<details><summary>Instance / other functions (3)</summary>

- `class:createFloatingSprite(_spriteContainer)`
- `class:createShadowSprite(_spriteContainer)`
- `class:onPickup()`

</details>

### HexagonTileGhostFireflies

`classes.hexagon.objects.HexagonTileGhostFireflies`

- returns `HexagonTileGhostFireflies`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGhostFireflies:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGhostFlower

`classes.hexagon.objects.HexagonTileGhostFlower`

- returns `HexagonTileGhostFlower`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGhostFlower:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGhostMushrooms

`classes.hexagon.objects.HexagonTileGhostMushrooms`

- returns `HexagonTileGhostMushrooms`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGhostMushrooms:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGhostWaterCattails

`classes.hexagon.objects.HexagonTileGhostWaterCattails`

- returns `HexagonTileGhostWaterCattails`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGhostWaterCattails:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGhostWaterPlant

`classes.hexagon.objects.HexagonTileGhostWaterPlant`

- returns `HexagonTileGhostWaterPlant`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGhostWaterPlant:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGrassFlower

`classes.hexagon.objects.HexagonTileGrassFlower`

- returns `HexagonTileGrassFlower`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGrassFlower:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGrassMushrooms

`classes.hexagon.objects.HexagonTileGrassMushrooms`

- returns `HexagonTileGrassMushrooms`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGrassMushrooms:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGrassRock

`classes.hexagon.objects.HexagonTileGrassRock`

- returns `HexagonTileGrassRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGrassRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGrassTree

`classes.hexagon.objects.HexagonTileGrassTree`

- returns `HexagonTileGrassTree`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGrassTree:new(_distanceFromEdge)`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileGrassTreeStump

`classes.hexagon.objects.HexagonTileGrassTreeStump`

- returns `HexagonTileGrassTreeStump`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileGrassTreeStump:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTilePlatform

`classes.hexagon.objects.HexagonTilePlatform`

- returns `HexagonTilePlatform`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTilePlatform:new(_tile)`

<details><summary>Instance / other functions (14)</summary>

- `class:getTile()`
- `class:getTileX()`
- `class:getTileY()`
- `class:setPlatformAction(_platformAction)`
- `class:getPlatformAction()`
- `class:setPlatformDotDirections(_platformDotDirections)`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:spawnSpriteOnTile(_tile)`
- `class:playPlatformAnimation(_onComplete, _onPlatformCovered)`
- `class:alignAndInsertPlatformHighlight(_platformHighlight)`
- `class:onDisable(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:destroy()`

</details>

### HexagonTileRoadSign

`classes.hexagon.objects.HexagonTileRoadSign`

- returns `HexagonRoadSign`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileRoadSign:new(_roadSignImagePath)`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileRoadblock

`classes.hexagon.objects.HexagonTileRoadblock`

- returns `HexagonTileRoadblock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileRoadblock:new(_direction)`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSandBush

`classes.hexagon.objects.HexagonTileSandBush`

- returns `HexagonTileSandBush`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSandBush:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSandCactus

`classes.hexagon.objects.HexagonTileSandCactus`

- returns `HexagonTileSandCactus`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSandCactus:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSandHeap

`classes.hexagon.objects.HexagonTileSandHeap`

- returns `HexagonTileSandHeap`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSandHeap:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSandTree

`classes.hexagon.objects.HexagonTileSandTree`

- returns `HexagonTileSandTree`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSandTree:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSandVase

`classes.hexagon.objects.HexagonTileSandVase`

- returns `HexagonTileSandVase`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSandVase:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSmallFireGroundRock

`classes.hexagon.objects.HexagonTileSmallFireGroundRock`

- returns `HexagonTileSmallFireGroundRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSmallFireGroundRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSmallGhostRock

`classes.hexagon.objects.HexagonTileSmallGhostRock`

- returns `HexagonTileSmallGhostRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSmallGhostRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSmallGrassRock

`classes.hexagon.objects.HexagonTileSmallGrassRock`

- returns `HexagonTileSmallGrassRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSmallGrassRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSmallSandRock

`classes.hexagon.objects.HexagonTileSmallSandRock`

- returns `HexagonTileSmallSandRock`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSmallSandRock:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSwampMushroom

`classes.hexagon.objects.HexagonTileSwampMushroom`

- returns `HexagonTileSwampMushroom`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSwampMushroom:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileSwampTree

`classes.hexagon.objects.HexagonTileSwampTree`

- returns `HexagonTileSwampTree`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileSwampTree:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

### HexagonTileWaterCattails

`classes.hexagon.objects.HexagonTileWaterCattails`

- returns `HexagonTileWaterCattails`
- requires: `classes.hexagon.objects.AbstractHexagonTileObject`

- `HexagonTileWaterCattails:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:createSprite()`

</details>

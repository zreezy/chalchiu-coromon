# classes.modules.mte

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[mte](#mte), [mteHelper](#mtehelper), [tiledAnimationProxyBuilder](#tiledanimationproxybuilder), [tiledDebugTextsBuilder](#tileddebugtextsbuilder), [tiledWorldBuilder](#tiledworldbuilder)

### mte

`classes.modules.mte.mte`

- returns `M`
- requires: `classes.modules.mte.mteHelper`, `classes.modules.mte.mapLoaders.luaMapLoader`, `classes.modules.mte.mapLoaders.jsonMapLoader`, `classes.modules.mte.tiledWorldBuilder`, `classes.modules.mte.tiledDebugTextsBuilder`, `classes.modules.mte.tiledAnimationProxyBuilder`, `classes.modules.mte.collisions.init`

- `mte.setBasePath(_path)`
- `mte.loadTiledProject(_projectFilePath)`
- `mte.setInitialValues()`
- `mte.registerSprite(_sprite)`
- `mte.addSprite(_sprite, _layerIndex, _options)`
- `mte.addSpriteBelow(_sprite, _otherSprite, _options)`
- `mte.addSpriteAbove(_sprite, _otherSprite, _options)`
- `mte.addSpriteAtLayer(_mode, _sprite, _otherSprite, _options)`
- `mte.finalizeSprite(event)`
- `mte.sortSprite(_sprite)`
- `mte.changeSpriteLayer(_sprite, _layerIndex)`
- `mte.attachChildSprite(_parent, _child)`
- `mte.unattachChildSprite(_parent, _child)`
- `mte.pauseSprites()`
- `mte.resumeSprites()`
- `mte.addObject(_layerIndex, _object)`
- `mte.editObject(_objectOrName, _changes)`
- `mte.removeObject(_objectOrName)`
- `mte.findObjectsInGrid(_options)`
- `mte.getObject(_name)`
- `mte.getObjects()`
- `mte.getObjectsAtTile(_tileX, _tileY)`
- `mte.getObjectsByFunction(_function)`
- `mte.getCollisionDetector()`
- `mte.getLayers()`
- `mte.getUnflattenedLayers()`
- `mte.getLevelByLayerIndex(_index)`
- `mte.getLayerIndexByName(_name)`
- `mte.getLayerIndexByFunction(_function)`
- `mte.getLayerNameByIndex(_index)`
- `mte.getLayerPropertiesByIndex(_index)`
- `mte.getMap()`
- `mte.getBasePath()`
- `mte.getFullPath()`
- `mte.getTileAtBoundary(_direction)`
- `mte.getTileOutsideBoundary(_direction)`
- `mte.getTiledWorld()`
- `mte.loadMap(_path, _file, _onComplete)`
- `mte.reloadTilesets()`
- `mte.enableLayer(_layerIndex)`
- `mte.enableLayersByFunction(_function)`
- `mte.disableLayer(_layerIndex)`
- `mte.disableLayersByFunction(_function)`
- `mte.update()`
- `mte.setSpriteLocation(_sprite, _options)`
- `mte.moveSprite(_sprite, _options)`
- `mte.getMagnetTile(_tileX, _tileY)`
- `mte.getCameraPositionForSprite(_sprite)`
- `mte.getCameraPositionObjectForSprite(_sprite)`
- `mte.setCameraTo(_x, _y)`
- `mte.translateCamera(_deltaX, _deltaY)`
- `mte.setCameraToBoundary(_direction)`
- `mte.setCameraFocus(_sprite)`
- `mte.setCameraBoundariesForSprite(_sprite)`
- `mte.setCameraBoundaryAdjustments(_adjustments)`
- `mte.getCameraFocus()`
- `mte.getCamera()`
- `mte.getConstrainedDistanceOfCamera()`
- `mte.createCullableObject()`
- `mte.addCullable(_cullableObject)`
- `mte.removeCullable(_cullableObject)`
- `mte.destroy()`

<details><summary>Fields with default values (3)</summary>

- `mte.transition` = `{}`
- `mte.transitionCamera` = `{}`
- `mte.magnet` = `{}`

</details>

### mteHelper

`classes.modules.mte.mteHelper`

- returns `t`

- `mteHelper:getTilesetByGid(_map, _gid)`
- `mteHelper:isValidTile(_map, _tileX, _tileY)`
- `mteHelper:isInsidePolygon(_polygonObjects, _x, _y)`

### tiledAnimationProxyBuilder

`classes.modules.mte.tiledAnimationProxyBuilder`

- returns `t`

- `tiledAnimationProxyBuilder:new(_frameDurations, _shouldStartWithRandomFrame, _optionalIntervalFunction)`

<details><summary>Instance / other functions (3)</summary>

- `proxy:addSprite(_sprite)`
- `proxy:removeSprite(_sprite)`
- `proxy:update()`

</details>

### tiledDebugTextsBuilder

`classes.modules.mte.tiledDebugTextsBuilder`

- returns `t`

- `tiledDebugTextsBuilder:new()`

<details><summary>Instance / other functions (1)</summary>

- `tiledDebug:update()`

</details>

### tiledWorldBuilder

`classes.modules.mte.tiledWorldBuilder`

- returns `t`

- `tiledWorldBuilder:new(_options)`

<details><summary>Instance / other functions (15)</summary>

- `tiledWorld:getLayersWhichStickToScreen()`
- `tiledWorld:addLayer(_options)`
- `tiledWorld:addTile(_sprite, _layerIndex)`
- `tiledWorld:addSprite(_sprite, _layerIndex)`
- `tiledWorld:setLayer(_sprite, _layerIndex)`
- `tiledWorld:moveSprite(_sprite, _deltaX, _deltaY)`
- `tiledWorld:getTileAtBoundary(_direction)`
- `tiledWorld:setCameraBoundaries(_left, _right, _top, _bottom)`
- `tiledWorld:isTileRendered(_tileX, _tileY)`
- `tiledWorld:debugGetAmountOfRenderedTiles()`
- `tiledWorld:moveCamera(_deltaX, _deltaY)`
- `tiledWorld:getCamera()`
- `tiledWorld:getNonConstrainedCamera()`
- `tiledWorld:getConstrainedDistanceOfCamera()`
- `tiledWorld:getNonConstrainedCameraObject()`

</details>

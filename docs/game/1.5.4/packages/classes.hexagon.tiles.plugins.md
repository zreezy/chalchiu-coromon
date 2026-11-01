# classes.hexagon.tiles.plugins

Coromon 1.5.4. 1 module(s). [Back to index](../README.md)

[LinearActionTilePlugin](#linearactiontileplugin)

### LinearActionTilePlugin

`classes.hexagon.tiles.plugins.LinearActionTilePlugin`

- returns `t`
- requires: `classes.hexagon.RogueWorldInterface`

- `LinearActionTilePlugin:install(_tile)`

<details><summary>Instance / other functions (37)</summary>

- `class:setActionTileGridPosition(_row, _column)`
- `class:getActionTileGridRow()`
- `class:getActionTileGridColumn()`
- `class:isFirstActionTile()`
- `class:isPenultimateTile()`
- `class:isLastActionTile()`
- `class:setIsRestingTile()`
- `class:isRestingTile()`
- `class:getDirectionToActionTileMap(_adjacencyDirection)`
- `class:addDirectionToActionTile(_adjacencyDirection, _directionToActionTile)`
- `class:hasDirectionToActionTile(_adjacencyDirection, _directionToActionTile)`
- `class:resolveDirectionToActionTile(_adjacencyDirection, _actionTile)`
- `class:tryGetActionTileInDirection(_directionToActionTile)`
- `class:getActionTilesInAllDirections(_adjacencyDirection)`
- `class:resolveReachableActionTilesUntil(_adjacencyDirection, _actionTilesToStopAt)`
- `class:resolveReachableActionTilesUntilAndIncludingRestingTile(_adjacencyDirection, _optionalFirstDirection)`
- `class:resolveReachablePathTilesUntilAndIncludingRestingTile(_adjacencyDirection, _optionalFirstActionTile)`
- `class:setPathDirectionsToActionTile(_actionTile, _hexagonDirections)`
- `class:getPathDirectionsToActionTile(_actionTile)`
- `class:getPathTilesToActionTile(_actionTile)`
- `class:setArrowsToActionTiles(_arrowType, _actionTiles)`
- `class:clearArrowsToNextActionTiles()`
- `class:setPlatform(_platform)`
- `class:getPlatform()`
- `class:onDisable(_instant, _chosenPathTileMap)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:overtakePlatform(_newPlatform, _onComplete)`
- `class:alignFocusSelector(_focusSelector)`
- `class:onConfirmedAsUpcomingTile()`
- `class:isUpcomingActionTile()`
- `class:getUpcomingActionTileIndicator()`
- `class:getUpcomingActionTileIndicatorButton()`
- `class:showUpcomingActionTileIndicator()`
- `class:hideUpcomingActionTileIndicator()`
- `class:setUpcomingActionTileIndicatorFocused(_isFocused)`
- `class:getPlatformTouchRect()`
- `class:spawnSpriteAndAddToHexagonWorld()`

</details>

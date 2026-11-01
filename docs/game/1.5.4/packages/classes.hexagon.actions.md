# classes.hexagon.actions

Coromon 1.5.4. 14 module(s). [Back to index](../README.md)

[AbstractBattleHexagonTileAction](#abstractbattlehexagontileaction), [AbstractEventHexagonTileAction](#abstracteventhexagontileaction), [AbstractHexagonTileAction](#abstracthexagontileaction), [AbstractShopHexagonTileAction](#abstractshophexagontileaction), [AbstractTrainerHubHexagonTileAction](#abstracttrainerhubhexagontileaction), [BossBattleHexagonTileAction](#bossbattlehexagontileaction), [ItemChestHexagonTileAction](#itemchesthexagontileaction), [RandomEventHexagonTileAction](#randomeventhexagontileaction), [RecallHexagonTileAction](#recallhexagontileaction), [RestHexagonTileAction](#resthexagontileaction), [SelectTeleporterDiskLocationHexagonTileAction](#selectteleporterdisklocationhexagontileaction), [ShopHexagonTileAction](#shophexagontileaction), [TrainerBattleHexagonTileAction](#trainerbattlehexagontileaction), [WildEncounterBattleHexagonTileAction](#wildencounterbattlehexagontileaction)

### AbstractBattleHexagonTileAction

`classes.hexagon.actions.AbstractBattleHexagonTileAction`

- returns `AbstractBattleHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`, `classes.hexagon.RogueWorldInterface`

- `AbstractBattleHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (6)</summary>

- `class:onAfterBattleHexagonTileActionCompleted(_onComplete)`
- `class:getTallMonsterButtonOverlayContextText(_enemyParticipant)`
- `class:getPlatformColor()`
- `class:getOpponentMonsterLevel()`
- `class:getRandomMonster()`
- `class:executeBattle(_enemyParticipant, _onComplete)`

</details>

### AbstractEventHexagonTileAction

`classes.hexagon.actions.AbstractEventHexagonTileAction`

- returns `AbstractEventHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`

- `AbstractEventHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (1)</summary>

- `class:getPlatformColor()`

</details>

### AbstractHexagonTileAction

`classes.hexagon.actions.AbstractHexagonTileAction`

- returns `AbstractHexagonTileAction`

- `AbstractHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (17)</summary>

- `class:getPlatform()`
- `class:setHexed(_hexed)`
- `class:getHexed()`
- `class:getActionType()`
- `class:getPlatformColor()`
- `class:createSprite()`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:createSpriteSmall(_parent)`
- `class:initiateAndRegisterToActionTileHistory(_onComplete)`
- `class:onRegisterToActionTileHistory()`
- `class:onInitiate(_onComplete)`
- `class:getSprite()`
- `class:setSpriteDisabled(_instant)`
- `class:spawnSpriteOnTile(_tile, _tileX, _tileY)`
- `class:destroySprite()`

</details>

### AbstractShopHexagonTileAction

`classes.hexagon.actions.AbstractShopHexagonTileAction`

- returns `AbstractShopHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`

- `AbstractShopHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (1)</summary>

- `class:getPlatformColor()`

</details>

### AbstractTrainerHubHexagonTileAction

`classes.hexagon.actions.AbstractTrainerHubHexagonTileAction`

- returns `AbstractTrainerHubHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`

- `AbstractTrainerHubHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (1)</summary>

- `class:getPlatformColor()`

</details>

### BossBattleHexagonTileAction

`classes.hexagon.actions.BossBattleHexagonTileAction`

- returns `BossBattleHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractBattleHexagonTileAction`

- `BossBattleHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (9)</summary>

- `class:getPlatformColor()`
- `class:getActionType()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:getTallMonsterButtonOverlayContextText(_enemyParticipant)`
- `class:onInitiate(_onComplete)`

</details>

### ItemChestHexagonTileAction

`classes.hexagon.actions.ItemChestHexagonTileAction`

- returns `ItemChestHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`, `classes.interface.overlays.ArtifactItemChestPopup`, `classes.hexagon.RogueWorldInterface`

- `ItemChestHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (8)</summary>

- `class:getActionType()`
- `class:getPlatformColor()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:onInitiate(_onComplete)`

</details>

### RandomEventHexagonTileAction

`classes.hexagon.actions.RandomEventHexagonTileAction`

- returns `RandomEventHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`, `classes.interface.overlays.HexagonTileEventOverlay`, `classes.hexagon.RogueWorldInterface`

- `RandomEventHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (8)</summary>

- `class:getActionType()`
- `class:getPlatformColor()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:onInitiate(_onComplete)`

</details>

### RecallHexagonTileAction

`classes.hexagon.actions.RecallHexagonTileAction`

- returns `RecallHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`

- `RecallHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (8)</summary>

- `class:getActionType()`
- `class:getPlatformColor()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:onInitiate(_onComplete)`

</details>

### RestHexagonTileAction

`classes.hexagon.actions.RestHexagonTileAction`

- returns `RestHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`, `classes.hexagon.RogueWorldInterface`

- `RestHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (8)</summary>

- `class:getActionType()`
- `class:getPlatformColor()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:onInitiate(_onComplete)`

</details>

### SelectTeleporterDiskLocationHexagonTileAction

`classes.hexagon.actions.SelectTeleporterDiskLocationHexagonTileAction`

- returns `SelectTeleporterDiskLocationHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractHexagonTileAction`

- `SelectTeleporterDiskLocationHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (8)</summary>

- `class:getActionType()`
- `class:getPlatformColor()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:onInitiate(_onComplete)`

</details>

### ShopHexagonTileAction

`classes.hexagon.actions.ShopHexagonTileAction`

- returns `ShopHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractShopHexagonTileAction`, `classes.hexagon.RogueWorldInterface`, `classes.modules.utilities.itemUtility`

- `ShopHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (7)</summary>

- `class:getActionType()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:onInitiate(_onComplete)`

</details>

### TrainerBattleHexagonTileAction

`classes.hexagon.actions.TrainerBattleHexagonTileAction`

- returns `TrainerBattleHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractBattleHexagonTileAction`, `classes.hexagon.RogueWorldInterface`

- `TrainerBattleHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (9)</summary>

- `class:getActionType()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:getTallMonsterButtonOverlayContextText(_enemyParticipant)`
- `class:onInitiate(_onComplete)`
- `class:onAfterBattleHexagonTileActionCompleted(_onComplete)`

</details>

### WildEncounterBattleHexagonTileAction

`classes.hexagon.actions.WildEncounterBattleHexagonTileAction`

- returns `WildEncounterBattleHexagonTileAction`
- requires: `classes.hexagon.actions.AbstractBattleHexagonTileAction`, `classes.hexagon.RogueWorldInterface`

- `WildEncounterBattleHexagonTileAction:new(_platform)`

<details><summary>Instance / other functions (9)</summary>

- `class:getActionType()`
- `class:createSprite()`
- `class:createSpriteSmall(_parent)`
- `class:onSpriteDisabled(_instant)`
- `class:onSoftDisabledStateChanged(_isSoftDisabled)`
- `class:getTopContextText()`
- `class:getTallMonsterButtonOverlayContextText(_enemyParticipant)`
- `class:onInitiate(_onComplete)`
- `class:onAfterBattleHexagonTileActionCompleted(_onComplete)`

</details>

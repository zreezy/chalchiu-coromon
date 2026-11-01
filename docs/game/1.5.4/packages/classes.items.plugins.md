# classes.items.plugins

Coromon 1.5.4. 14 module(s). [Back to index](../README.md)

[activatableWorldEffectWearableItemPlugin](#activatableworldeffectwearableitemplugin), [auctionableItemPlugin](#auctionableitemplugin), [buyableBattleDomeShopItemPlugin](#buyablebattledomeshopitemplugin), [buyableShopItemPlugin](#buyableshopitemplugin), [combinedConsumableEffectPlugin](#combinedconsumableeffectplugin), [consumableUsablePlugin](#consumableusableplugin), [directWorldEffectItemPlugin](#directworldeffectitemplugin), [onlineCharacterWearableItemPlugin](#onlinecharacterwearableitemplugin), [scentItemPlugin](#scentitemplugin), [sellableShopItemPlugin](#sellableshopitemplugin), [sparklingItemIconPlugin](#sparklingitemiconplugin), [staticCharacterSpriteItemPlugin](#staticcharacterspriteitemplugin), [usableWorldEffectItemPlugin](#usableworldeffectitemplugin), [worldEffectItemPlugin](#worldeffectitemplugin)

### activatableWorldEffectWearableItemPlugin

`classes.items.plugins.activatableWorldEffectWearableItemPlugin`

- returns `t`

- `activatableWorldEffectWearableItemPlugin:install(_item)`

<details><summary>Instance / other functions (4)</summary>

- `item:onReactivatedByOtherWearable()`
- `item:onDeactivatedByOtherWearable()`
- `item:onActivate(_onOtherItemAffected)`
- `item:onDeactivate(_onOtherItemAffected)`

</details>

### auctionableItemPlugin

`classes.items.plugins.auctionableItemPlugin`

- returns `t`

- `auctionableItemPlugin:install(_item)`

<details><summary>Instance / other functions (1)</summary>

- `item:getAuctionPrice()`

</details>

### buyableBattleDomeShopItemPlugin

`classes.items.plugins.buyableBattleDomeShopItemPlugin`

- returns `t`

- `buyableBattleDomeShopItemPlugin:install(_item)`

<details><summary>Instance / other functions (6)</summary>

- `item:getMinimumBattleDomeShopLevel()`
- `item:canBeInitiallySelected()`
- `item:getActionButtonState(_mode)`
- `item:getGridBoxStyle()`
- `item:createItemGridBox(_gridBox, _mode, _glowMode)`
- `item:createDescriptionContent(_descriptionContainer)`

</details>

### buyableShopItemPlugin

`classes.items.plugins.buyableShopItemPlugin`

- returns `t`
- requires: `classes.interface.overlays.ShopItemStepperPopup`, `classes.interface.overlays.MessageToast`

- `buyableShopItemPlugin:install(_item)`

<details><summary>Instance / other functions (7)</summary>

- `item:getGoldCost()`
- `item:getMutatedGoldCost()`
- `item:onBeforeBuy()`
- `item:createItemGridBox(_gridBox, _mode, _glowMode)`
- `item:createDescriptionTopContextRow(_refreshableDescriptionGroup, _itemScreenContentContainer, _mode)`
- `item:getActionButtonState(_mode)`
- `item:onActionButton(_screenParams, _mode, _onItemUpdate)`

</details>

### combinedConsumableEffectPlugin

`classes.items.plugins.combinedConsumableEffectPlugin`

- returns `t`

- `combinedConsumableEffectPlugin:install(_item)`

<details><summary>Instance / other functions (2)</summary>

- `item:shouldShowOnBeforeMonsterUseNotEffectiveMessage(_mode, _monster)`
- `item:onBeforeMonsterUseMessage(_mode, _monster)`

</details>

### consumableUsablePlugin

`classes.items.plugins.consumableUsablePlugin`

- returns `t`

- `consumableUsablePlugin:install(_item)`

<details><summary>Instance / other functions (3)</summary>

- `item:onUse(_mode)`
- `item:onConsume(_mode)`
- `item:onAfterUseInInventoryScreen(_screenParams, _mode, _onItemUpdate)`

</details>

### directWorldEffectItemPlugin

`classes.items.plugins.directWorldEffectItemPlugin`

- returns `t`

- `directWorldEffectItemPlugin:install(_item)`

<details><summary>Instance / other functions (5)</summary>

- `item:getMaxAmount()`
- `item:shouldShowEnabledIndicator()`
- `item:createItemGridBoxBottomSide(_gridBox, _mode)`
- `item:onAddToInventory(_inventory, _amount)`
- `item:onRemoveFromInventory(_inventory, _amount)`

</details>

### onlineCharacterWearableItemPlugin

`classes.items.plugins.onlineCharacterWearableItemPlugin`

- returns `t`
- requires: `classes.items.plugins.buyableShopItemPlugin`

- `onlineCharacterWearableItemPlugin:install(_item)`

<details><summary>Instance / other functions (3)</summary>

- `item:getGoldCost()`
- `item:getOnlineCharacterWearableUID()`
- `item:shouldBeListedForCoromon1IfNotInInventory()`

</details>

### scentItemPlugin

`classes.items.plugins.scentItemPlugin`

- returns `t`

- `scentItemPlugin:install(_item)`

<details><summary>Instance / other functions (1)</summary>

- `item:onConsume(_mode)`

</details>

### sellableShopItemPlugin

`classes.items.plugins.sellableShopItemPlugin`

- returns `t`
- requires: `classes.interface.overlays.ShopItemStepperPopup`

- `sellableShopItemPlugin:install(_item)`

<details><summary>Instance / other functions (5)</summary>

- `item:getGoldSellPrice()`
- `item:createItemGridBox(_gridBox, _mode, _glowMode)`
- `item:createDescriptionTopContextRow(_refreshableDescriptionGroup, _itemScreenContentContainer, _mode)`
- `item:getActionButtonState(_mode)`
- `item:onActionButton(_screenParams, _mode, _onItemUpdate)`

</details>

### sparklingItemIconPlugin

`classes.items.plugins.sparklingItemIconPlugin`

- returns `t`

- `sparklingItemIconPlugin:install(_item, _color)`

<details><summary>Instance / other functions (2)</summary>

- `item:getIconUID()`
- `item:createIcon(_parent, _mutator, _mode, _glowMode)`

</details>

### staticCharacterSpriteItemPlugin

`classes.items.plugins.staticCharacterSpriteItemPlugin`

- returns `t`

- `staticCharacterSpriteItemPlugin:install(_item, _allowOnMountedObject)`

<details><summary>Instance / other functions (1)</summary>

- `item:onBeforeUseMessage(_screenParams, _mode)`

</details>

### usableWorldEffectItemPlugin

`classes.items.plugins.usableWorldEffectItemPlugin`

- returns `t`

- `usableWorldEffectItemPlugin:install(_item)`

<details><summary>Instance / other functions (1)</summary>

- `item:onUseInInventoryScreen(_screenParams, _mode, _onItemUpdate)`

</details>

### worldEffectItemPlugin

`classes.items.plugins.worldEffectItemPlugin`

- returns `t`

- `worldEffectItemPlugin:install(_item)`

<details><summary>Instance / other functions (5)</summary>

- `item:createSaveableItemWorldEffect()`
- `item:isSaveableWorldEffect(_battleEffect)`
- `item:getSavedItemWorldEffect()`
- `item:activateSaveableWorldEffect()`
- `item:deactivateSavedWorldEffect()`

</details>

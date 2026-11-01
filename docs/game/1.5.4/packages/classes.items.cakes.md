# classes.items.cakes

Coromon 1.5.4. 7 module(s). [Back to index](../README.md)

[abstractApplyStatBoostCake](#abstractapplystatboostcake), [abstractCake](#abstractcake), [abstractCureConditionCake](#abstractcureconditioncake), [abstractRecoverEnergyCake](#abstractrecoverenergycake), [abstractRecoverHealthAndApplyStatBoostCake](#abstractrecoverhealthandapplystatboostcake), [abstractRecoverHealthAndEnergyCake](#abstractrecoverhealthandenergycake), [abstractRecoverHealthCake](#abstractrecoverhealthcake)

### abstractApplyStatBoostCake

`classes.items.cakes.abstractApplyStatBoostCake`

- returns `t`
- requires: `classes.items.cakes.abstractCake`, `classes.items.plugins.consumableEffects.applyStatBoostsConsumableEffectPlugin`, `classes.items.plugins.buyableShopItemPlugin`, `classes.items.plugins.sellableShopItemPlugin`

- `abstractApplyStatBoostCake:new()`

<details><summary>Instance / other functions (6)</summary>

- `item:getGoldSellPrice()`
- `item:getGoldCost()`
- `item:canBeUsed(_mode)`
- `item:getTargetMode()`
- `item:onBeforeMonsterUseMessage(_mode, _monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`

</details>

### abstractCake

`classes.items.cakes.abstractCake`

- returns `t`
- requires: `classes.items.abstractConsciousMonsterUsable`, `classes.items.plugins.consumableUsablePlugin`

- `abstractCake:new()`

<details><summary>Instance / other functions (5)</summary>

- `item:shouldDisableTallMonsterButtonInOverlay(_monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`
- `item:onBeforeMonsterUseMessage(_mode, _monster)`
- `item:onMonsterUseInBattleText(_participant, _mode, _activeMonsterSprite, _targetMonsterSprites, _onComplete)`
- `item:onMonsterSpriteUse(_monsterSprite, _hideItemIndicator, _onComplete)`

</details>

### abstractCureConditionCake

`classes.items.cakes.abstractCureConditionCake`

- returns `t`
- requires: `classes.items.cakes.abstractCake`, `classes.items.plugins.consumableEffects.cureConditionConsumableEffectPlugin`, `classes.interface.overlays.MessagePopup`, `classes.items.plugins.buyableShopItemPlugin`, `classes.items.plugins.sellableShopItemPlugin`, `classes.items.plugins.buyableBattleDomeShopItemPlugin`

- `abstractCureConditionCake:new()`

<details><summary>Instance / other functions (8)</summary>

- `item:getGoldSellPrice()`
- `item:getGoldCost()`
- `item:getMinimumBattleDomeShopLevel()`
- `item:canBeUsed(_mode)`
- `item:getTargetMode()`
- `item:onBeforeMonsterUseMessage(_mode, _monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`
- `item:onMonsterUseInInventoryPopup(_screenParams, _mode, _tallMonsterButton, _closeTallMonsterButtonOverlay, _closeTallMonsterButtonOverlayIfCantUseAnymore, _unblockInput)`

</details>

### abstractRecoverEnergyCake

`classes.items.cakes.abstractRecoverEnergyCake`

- returns `t`
- requires: `classes.items.cakes.abstractCake`, `classes.items.plugins.consumableEffects.recoverEnergyConsumableEffectPlugin`, `classes.interface.overlays.MessagePopup`

- `abstractRecoverEnergyCake:new()`

<details><summary>Instance / other functions (6)</summary>

- `item:canBeUsed(_mode)`
- `item:getTargetMode()`
- `item:getTallMonsterButtonOverlayMode(_mode)`
- `item:onBeforeMonsterUseMessage(_mode, _monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`
- `item:onMonsterUseInInventoryPopup(_screenParams, _mode, _tallMonsterButton, _closeTallMonsterButtonOverlay, _closeTallMonsterButtonOverlayIfCantUseAnymore, _unblockInput)`

</details>

### abstractRecoverHealthAndApplyStatBoostCake

`classes.items.cakes.abstractRecoverHealthAndApplyStatBoostCake`

- returns `t`
- requires: `classes.items.cakes.abstractCake`, `classes.items.plugins.combinedConsumableEffectPlugin`, `classes.items.plugins.consumableEffects.recoverHealthConsumableEffectPlugin`, `classes.items.plugins.consumableEffects.applyStatBoostsConsumableEffectPlugin`, `classes.interface.overlays.MessagePopup`

- `abstractRecoverHealthAndApplyStatBoostCake:new()`

<details><summary>Instance / other functions (6)</summary>

- `item:canBeUsed(_mode)`
- `item:getTargetMode()`
- `item:getTallMonsterButtonOverlayMode(_mode)`
- `item:shouldShowOnBeforeMonsterUseNotEffectiveMessage(_mode, _monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`
- `item:onMonsterUseInInventoryPopup(_screenParams, _mode, _tallMonsterButton, _closeTallMonsterButtonOverlay, _closeTallMonsterButtonOverlayIfCantUseAnymore, _unblockInput)`

</details>

### abstractRecoverHealthAndEnergyCake

`classes.items.cakes.abstractRecoverHealthAndEnergyCake`

- returns `t`
- requires: `classes.items.cakes.abstractCake`, `classes.items.plugins.combinedConsumableEffectPlugin`, `classes.items.plugins.consumableEffects.recoverHealthConsumableEffectPlugin`, `classes.items.plugins.consumableEffects.recoverEnergyConsumableEffectPlugin`, `classes.interface.overlays.MessagePopup`

- `abstractRecoverHealthAndEnergyCake:new()`

<details><summary>Instance / other functions (6)</summary>

- `item:canBeUsed(_mode)`
- `item:getTargetMode()`
- `item:getTallMonsterButtonOverlayMode(_mode)`
- `item:shouldShowOnBeforeMonsterUseNotEffectiveMessage(_mode, _monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`
- `item:onMonsterUseInInventoryPopup(_screenParams, _mode, _tallMonsterButton, _closeTallMonsterButtonOverlay, _closeTallMonsterButtonOverlayIfCantUseAnymore, _unblockInput)`

</details>

### abstractRecoverHealthCake

`classes.items.cakes.abstractRecoverHealthCake`

- returns `t`
- requires: `classes.items.cakes.abstractCake`, `classes.items.plugins.consumableEffects.recoverHealthConsumableEffectPlugin`

- `abstractRecoverHealthCake:new()`

<details><summary>Instance / other functions (6)</summary>

- `item:canBeUsed(_mode)`
- `item:getTargetMode()`
- `item:getTallMonsterButtonOverlayMode(_mode)`
- `item:onBeforeMonsterUseMessage(_mode, _monster)`
- `item:onMonsterSpriteUseCake(_monsterSprite, _onComplete)`
- `item:onMonsterUseInInventoryPopup(_screenParams, _mode, _tallMonsterButton, _closeTallMonsterButtonOverlay, _closeTallMonsterButtonOverlayIfCantUseAnymore, _unblockInput)`

</details>

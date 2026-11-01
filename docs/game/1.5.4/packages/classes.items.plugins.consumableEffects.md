# classes.items.plugins.consumableEffects

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[applyConditionConsumableEffectPlugin](#applyconditionconsumableeffectplugin), [applyStatBoostsConsumableEffectPlugin](#applystatboostsconsumableeffectplugin), [cureConditionConsumableEffectPlugin](#cureconditionconsumableeffectplugin), [recoverEnergyConsumableEffectPlugin](#recoverenergyconsumableeffectplugin), [recoverHealthConsumableEffectPlugin](#recoverhealthconsumableeffectplugin)

### applyConditionConsumableEffectPlugin

`classes.items.plugins.consumableEffects.applyConditionConsumableEffectPlugin`

- returns `t`

- `applyConditionConsumableEffectPlugin:install(_item)`

<details><summary>Instance / other functions (2)</summary>

- `item:getConditionToApply(_monster)`
- `item:onBeforeMonsterUseMessageForApplyConditionConsumableEffect(_mode, _monster)`

</details>

### applyStatBoostsConsumableEffectPlugin

`classes.items.plugins.consumableEffects.applyStatBoostsConsumableEffectPlugin`

- returns `t`

- `applyStatBoostsConsumableEffectPlugin:install(_item)`

<details><summary>Instance / other functions (5)</summary>

- `item:getApplyStatBoostStatusParamList()`
- `item:onBeforeUseMessage(_screenParams, _mode)`
- `item:getStatBoostStatusesToApply(_monsterSprite)`
- `item:onBeforeMonsterUseMessageForApplyStatBoostsConsumableEffect(_mode, _monster)`
- `item:onMonsterSpriteUseCakeApplyStatBoostStatuses(_monsterSprite, _onComplete)`

</details>

### cureConditionConsumableEffectPlugin

`classes.items.plugins.consumableEffects.cureConditionConsumableEffectPlugin`

- returns `t`

- `cureConditionConsumableEffectPlugin:install(_item)`

<details><summary>Instance / other functions (2)</summary>

- `item:getConditionUIDToCure()`
- `item:onBeforeMonsterUseMessageForCureConditionConsumableEffect(_mode, _monster)`

</details>

### recoverEnergyConsumableEffectPlugin

`classes.items.plugins.consumableEffects.recoverEnergyConsumableEffectPlugin`

- returns `t`

- `recoverEnergyConsumableEffectPlugin:install(_item)`

<details><summary>Instance / other functions (4)</summary>

- `item:getRecoverEnergyValue(_monster)`
- `item:getMaxEnergyOvercharge()`
- `item:onBeforeMonsterUseMessageForRecoverEnergyConsumableEffect(_mode, _monster)`
- `item:doRecoverEnergy(_monster)`

</details>

### recoverHealthConsumableEffectPlugin

`classes.items.plugins.consumableEffects.recoverHealthConsumableEffectPlugin`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`

- `recoverHealthConsumableEffectPlugin:install(_item)`

<details><summary>Instance / other functions (5)</summary>

- `item:getRecoverHealthValue(_monster)`
- `item:onBeforeMonsterUseMessageForRecoverHealthConsumableEffect(_mode, _monster)`
- `item:doRecoverHealth(_monster)`
- `item:onMonsterSpriteUseCakeRecoverHealth(_monsterSprite, _onComplete)`
- `item:onMonsterUseInInventoryPopupRecoverHealth(_tallMonsterButton, _onComplete)`

</details>

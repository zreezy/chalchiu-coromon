# classes.world.effects.plugins

Coromon 1.5.4. 13 module(s). [Back to index](../README.md)

[itemWorldEffectPlugin](#itemworldeffectplugin), [temporaryItemWorldEffectPlugin](#temporaryitemworldeffectplugin), [temporaryWorldEffectPlugin](#temporaryworldeffectplugin), [traitWorldEffectPlugin](#traitworldeffectplugin), [visibleOpenItemPopupWorldEffectPlugin](#visibleopenitempopupworldeffectplugin), [visibleOpenPopupWorldEffectPlugin](#visibleopenpopupworldeffectplugin), [visibleOpenScreenWorldEffectPlugin](#visibleopenscreenworldeffectplugin), [visibleOpenTraitPopupWorldEffectPlugin](#visibleopentraitpopupworldeffectplugin), [visibleOpenUsableItemPopupWorldEffectPlugin](#visibleopenusableitempopupworldeffectplugin), [visibleOpenWearableUsableItemPopupWorldEffectPlugin](#visibleopenwearableusableitempopupworldeffectplugin), [visibleTemporaryOpenPopupWorldEffectPlugin](#visibletemporaryopenpopupworldeffectplugin), [visibleWorldEffectPlugin](#visibleworldeffectplugin), [worldEffectPlugin](#worldeffectplugin)

### itemWorldEffectPlugin

`classes.world.effects.plugins.itemWorldEffectPlugin`

- returns `t`

- `itemWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `worldEffect:getItem()`
- `worldEffect:getItemUID()`

</details>

### temporaryItemWorldEffectPlugin

`classes.world.effects.plugins.temporaryItemWorldEffectPlugin`

- returns `t`

- `temporaryItemWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (1)</summary>

- `worldEffect:onDepletion()`

</details>

### temporaryWorldEffectPlugin

`classes.world.effects.plugins.temporaryWorldEffectPlugin`

- returns `t`

- `temporaryWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (9)</summary>

- `worldEffect.decreaseRemainingSecondsWrapper()`
- `worldEffect:shouldDecreaseWhenPaused()`
- `worldEffect:onActivatedInWorld()`
- `worldEffect:onDeactivatedInWorld()`
- `worldEffect:onDepletion()`
- `worldEffect:onDecreasedRemainingSecond()`
- `worldEffect:decreaseRemainingSeconds()`
- `worldEffect:getRemainingSeconds()`
- `worldEffect:getMaxSeconds()`

</details>

### traitWorldEffectPlugin

`classes.world.effects.plugins.traitWorldEffectPlugin`

- returns `t`

- `traitWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `worldEffect:getMonsterIdentifier()`
- `worldEffect:getMonsterInSquad()`

</details>

### visibleOpenItemPopupWorldEffectPlugin

`classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`

- returns `t`

- `visibleOpenItemPopupWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (4)</summary>

- `worldEffect:createWorldEffectButtonIcon(_parent)`
- `worldEffect:createPopupIcon(_parent)`
- `worldEffect:getPopupTitle()`
- `worldEffect:getPopupDescription()`

</details>

### visibleOpenPopupWorldEffectPlugin

`classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`

- returns `t`
- requires: `classes.interface.overlays.worldEffectPopupBuilder`

- `visibleOpenPopupWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (9)</summary>

- `worldEffect:createPopupIcon(_parent)`
- `worldEffect:getPopupTitle()`
- `worldEffect:getPopupDescription()`
- `worldEffect:getActionButtonLabel()`
- `worldEffect:canBeUsedInPopup()`
- `worldEffect:onUseInPopup(_closeWorldEffectPopup, _infoMessageToastOptions, _warningMessageToastOptions)`
- `worldEffect:canBeDisabledInPopup()`
- `worldEffect:onDisableInPopup()`
- `worldEffect:onWorldEffectButtonPress(_activeWorldEffects)`

</details>

### visibleOpenScreenWorldEffectPlugin

`classes.world.effects.plugins.visibleOpenScreenWorldEffectPlugin`

- returns `t`

- `visibleOpenScreenWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `worldEffect:getScreenParams()`
- `worldEffect:onWorldEffectButtonPress()`

</details>

### visibleOpenTraitPopupWorldEffectPlugin

`classes.world.effects.plugins.visibleOpenTraitPopupWorldEffectPlugin`

- returns `t`

- `visibleOpenTraitPopupWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (4)</summary>

- `worldEffect:createWorldEffectButtonIcon(_parent)`
- `worldEffect:createPopupIcon(_parent)`
- `worldEffect:getPopupTitle()`
- `worldEffect:getPopupDescription()`

</details>

### visibleOpenUsableItemPopupWorldEffectPlugin

`classes.world.effects.plugins.visibleOpenUsableItemPopupWorldEffectPlugin`

- returns `t`

- `visibleOpenUsableItemPopupWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (3)</summary>

- `worldEffect:getActionButtonLabel()`
- `worldEffect:canBeUsedInPopup()`
- `worldEffect:onUseInPopup(_closeWorldEffectPopup, _infoMessageToastOptions, _warningMessageToastOptions)`

</details>

### visibleOpenWearableUsableItemPopupWorldEffectPlugin

`classes.world.effects.plugins.visibleOpenWearableUsableItemPopupWorldEffectPlugin`

- returns `t`

- `visibleOpenWearableUsableItemPopupWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (1)</summary>

- `worldEffect:getActionButtonLabel()`

</details>

### visibleTemporaryOpenPopupWorldEffectPlugin

`classes.world.effects.plugins.visibleTemporaryOpenPopupWorldEffectPlugin`

- returns `t`

- `visibleTemporaryOpenPopupWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (8)</summary>

- `worldEffect:createWorldEffectButton(_parent)`
- `worldEffectButton:setProgression(_progression)`
- `worldEffect:updateWorldEffectButtonProgression()`
- `worldEffect:registerWorldEffectButton(_worldEffectButton)`
- `worldEffect:getActionButtonLabel()`
- `worldEffect:canBeDisabledInPopup()`
- `worldEffect:onDisableInPopup()`
- `worldEffect:onDecreasedRemainingSecond()`

</details>

### visibleWorldEffectPlugin

`classes.world.effects.plugins.visibleWorldEffectPlugin`

- returns `t`

- `visibleWorldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (7)</summary>

- `worldEffect:createWorldEffectButtonIcon(_parent)`
- `worldEffect:shouldShowWorldEffectButton()`
- `worldEffect:onWorldEffectButtonPress(_activeWorldEffects)`
- `worldEffect:getWorldEffectButtonPriority()`
- `worldEffect:createWorldEffectButton(_parent)`
- `worldEffect:registerWorldEffectButton(_worldEffectButton)`
- `worldEffect:hasRegisteredWorldEffectButton()`

</details>

<details><summary>Fields with default values (3)</summary>

- `visibleWorldEffectPlugin.priorities.last` = `2`
- `visibleWorldEffectPlugin.priorities.default` = `1`
- `visibleWorldEffectPlugin.priorities.first` = `0`

</details>

### worldEffectPlugin

`classes.world.effects.plugins.worldEffectPlugin`

- returns `t`

- `worldEffectPlugin:install(_worldEffect, _saveableOptions)`

<details><summary>Instance / other functions (5)</summary>

- `worldEffect:onActivatedInWorld()`
- `worldEffect:onDeactivatedInWorld()`
- `worldEffect:onWorldInit()`
- `worldEffect:onWorldDestroy()`
- `worldEffect:onWorldUnload()`

</details>

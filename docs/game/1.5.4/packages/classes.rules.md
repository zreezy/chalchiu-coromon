# classes.rules

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[christmas](#christmas), [difficulty](#difficulty), [encounter](#encounter), [fruitDrone](#fruitdrone), [perks](#perks)

### christmas

`classes.rules.christmas`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `christmas:new()`

### difficulty

`classes.rules.difficulty`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `difficulty:new()`

<details><summary>Instance / other functions (7)</summary>

- `effect:onBeforePlayerForfeitConfirmPopupText()`
- `effect:onBeforePlayerEscapeButtonMessage()`
- `effect:mutateGoldCost(_value)`
- `effect:onEnterBattle(_onComplete)`
- `effect:onAfterUsableItemUsed(_onComplete, _participant, _item)`
- `effect:onAfterMonsterUsableItemUsed(_onComplete, _participant, _item)`
- `effect:onBeforeUseItemMessage(_item, _mode)`

</details>

### encounter

`classes.rules.encounter`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `encounter:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:mutateZoneEncounter(_monsters)`
- `effect:shouldBlockZoneEncounter(_rolledMonsters)`

</details>

### fruitDrone

`classes.rules.fruitDrone`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`, `classes.world.effects.plugins.worldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.interface.overlays.MessagePopup`, `classes.interface.MilestoneAchievedPopup`, `classes.interface.overlays.FruitDroneDeliveryOverlay`

- `fruitDrone:new()`

<details><summary>Instance / other functions (9)</summary>

- `effect:createPopupIcon(_parent)`
- `effect:getPopupTitle()`
- `effect:getPopupDescription()`
- `effect:getActionButtonLabel()`
- `effect:canBeUsedInPopup()`
- `effect:onUseInPopup(_closeWorldEffectPopup)`
- `effect:createWorldEffectButtonIcon(_parent)`
- `effect:shouldShowWorldEffectButton()`
- `effect:onPlayerStepped()`

</details>

### perks

`classes.rules.perks`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `perks:new()`

<details><summary>Instance / other functions (1)</summary>

- `effect:mutateGoldCost(_value)`

</details>

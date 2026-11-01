# classes.world.effects.items

Coromon 1.5.4. 11 module(s). [Back to index](../README.md)

[goldBoosterItemWorldEffect](#goldboosteritemworldeffect), [headgearMagnetItemWorldEffect](#headgearmagnetitemworldeffect), [headgearWorkerItemWorldEffect](#headgearworkeritemworldeffect), [itemFinderItemWorldEffect](#itemfinderitemworldeffect), [luxLureItemWorldEffect](#luxlureitemworldeffect), [outfitWaldoItemWorldEffect](#outfitwaldoitemworldeffect), [swampMushroomHeadgearItemWorldEffect](#swampmushroomheadgearitemworldeffect), [temporaryBlockZoneEncounterItemWorldEffect](#temporaryblockzoneencounteritemworldeffect), [temporaryMutateAmountOfPotentialRollsItemWorldEffect](#temporarymutateamountofpotentialrollsitemworldeffect), [temporaryMutateZoneEncounterItemWorldEffect](#temporarymutatezoneencounteritemworldeffect), [xpBoosterItemWorldEffect](#xpboosteritemworldeffect)

### goldBoosterItemWorldEffect

`classes.world.effects.items.goldBoosterItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`

- `goldBoosterItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:mutateTrainerBattleGoldBounty(_payingParticipant, _value)`

</details>

### headgearMagnetItemWorldEffect

`classes.world.effects.items.headgearMagnetItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenUsableItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenWearableUsableItemPopupWorldEffectPlugin`

- `headgearMagnetItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (3)</summary>

- `effect:getClassPath()`
- `effect:getPopupDescription()`
- `effect:mutateTrainerBattleGoldBounty(_payingParticipant, _value)`

</details>

### headgearWorkerItemWorldEffect

`classes.world.effects.items.headgearWorkerItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenUsableItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenWearableUsableItemPopupWorldEffectPlugin`

- `headgearWorkerItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (4)</summary>

- `effect:getClassPath()`
- `effect:getPopupDescription()`
- `effect:shouldShowWorldEffectButton()`
- `effect:shouldShowWorldDarknessFlashlight()`

</details>

### itemFinderItemWorldEffect

`classes.world.effects.items.itemFinderItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`

- `itemFinderItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:shouldShowHiddenItemSparkle()`

</details>

### luxLureItemWorldEffect

`classes.world.effects.items.luxLureItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenUsableItemPopupWorldEffectPlugin`

- `luxLureItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:shouldShowWorldEffectButton()`

</details>

### outfitWaldoItemWorldEffect

`classes.world.effects.items.outfitWaldoItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenUsableItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenWearableUsableItemPopupWorldEffectPlugin`

- `outfitWaldoItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (3)</summary>

- `effect:getClassPath()`
- `effect:getPopupDescription()`
- `effect:shouldBlockZoneEncounter(_rolledMonsters)`

</details>

### swampMushroomHeadgearItemWorldEffect

`classes.world.effects.items.swampMushroomHeadgearItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenUsableItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenWearableUsableItemPopupWorldEffectPlugin`

- `swampMushroomHeadgearItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (3)</summary>

- `effect:getClassPath()`
- `effect:getPopupDescription()`
- `effect:mutateAmountOfSwampMushroomsHarvested(_swampMushroom, _value)`

</details>

### temporaryBlockZoneEncounterItemWorldEffect

`classes.world.effects.items.temporaryBlockZoneEncounterItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.temporaryWorldEffectPlugin`, `classes.world.effects.plugins.temporaryItemWorldEffectPlugin`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleTemporaryOpenPopupWorldEffectPlugin`

- `temporaryBlockZoneEncounterItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:shouldBlockZoneEncounter(_rolledMonsters)`

</details>

### temporaryMutateAmountOfPotentialRollsItemWorldEffect

`classes.world.effects.items.temporaryMutateAmountOfPotentialRollsItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.temporaryWorldEffectPlugin`, `classes.world.effects.plugins.temporaryItemWorldEffectPlugin`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleTemporaryOpenPopupWorldEffectPlugin`

- `temporaryMutateAmountOfPotentialRollsItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (3)</summary>

- `effect:getClassPath()`
- `effect:mutateAmountOfMonsterRolls(_value)`
- `effect:mutateAmountOfPotentialRolls(_value)`

</details>

### temporaryMutateZoneEncounterItemWorldEffect

`classes.world.effects.items.temporaryMutateZoneEncounterItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.temporaryWorldEffectPlugin`, `classes.world.effects.plugins.temporaryItemWorldEffectPlugin`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleTemporaryOpenPopupWorldEffectPlugin`

- `temporaryMutateZoneEncounterItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:mutateZoneEncounter(_monsters)`

</details>

### xpBoosterItemWorldEffect

`classes.world.effects.items.xpBoosterItemWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.temporaryWorldEffectPlugin`, `classes.world.effects.plugins.temporaryItemWorldEffectPlugin`, `classes.world.effects.plugins.itemWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenItemPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleTemporaryOpenPopupWorldEffectPlugin`

- `xpBoosterItemWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`

</details>

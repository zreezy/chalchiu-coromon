# classes.world.effects.world

Coromon 1.5.4. 9 module(s). [Back to index](../README.md)

[abstractGauntletModuleIntervalWorldEffect](#abstractgauntletmoduleintervalworldeffect), [abstractUpgradeMonsterAfterPlayerStepsWorldEffect](#abstractupgrademonsterafterplayerstepsworldeffect), [attractModuleIntervalWorldEffect](#attractmoduleintervalworldeffect), [potentialRerollWorldEffect](#potentialrerollworldeffect), [potentialStatSoftResetWorldEffect](#potentialstatsoftresetworldeffect), [recallBlockerWorldEffect](#recallblockerworldeffect), [repelModuleIntervalWorldEffect](#repelmoduleintervalworldeffect), [spinnerSwapWorldEffect](#spinnerswapworldeffect), [traitRerollWorldEffect](#traitrerollworldeffect)

### abstractGauntletModuleIntervalWorldEffect

`classes.world.effects.world.abstractGauntletModuleIntervalWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`, `classes.world.effects.plugins.temporaryWorldEffectPlugin`

- `abstractGauntletModuleIntervalWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (5)</summary>

- `effect:shouldDecreaseWhenPaused()`
- `effect:getGauntletModuleUID()`
- `effect:updateGauntletModuleButtonCoolDownOverlayScale()`
- `effect:onActivatedInWorld()`
- `effect:onDecreasedRemainingSecond()`

</details>

### abstractUpgradeMonsterAfterPlayerStepsWorldEffect

`classes.world.effects.world.abstractUpgradeMonsterAfterPlayerStepsWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`

- `abstractUpgradeMonsterAfterPlayerStepsWorldEffect:new(_saveableOptions, _monster, _amountOfPlayerStepsRequired)`

<details><summary>Instance / other functions (7)</summary>

- `effect:getReachedTargetPlayerStepsPhoneMessageUID()`
- `effect:getTargetPlayerSteps()`
- `effect:getMonster()`
- `effect:releaseMonsterFromHiddenMonsterStorage()`
- `effect:hasReachedTargetPlayerSteps()`
- `effect:getTargetPlayerStepsPercentage()`
- `effect:onPlayerStepped()`

</details>

### attractModuleIntervalWorldEffect

`classes.world.effects.world.attractModuleIntervalWorldEffect`

- returns `t`
- requires: `classes.world.effects.world.abstractGauntletModuleIntervalWorldEffect`

- `attractModuleIntervalWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:getGauntletModuleUID()`

</details>

### potentialRerollWorldEffect

`classes.world.effects.world.potentialRerollWorldEffect`

- returns `t`
- requires: `classes.world.effects.world.abstractUpgradeMonsterAfterPlayerStepsWorldEffect`

- `potentialRerollWorldEffect:new(_saveableOptions, _monster)`

<details><summary>Instance / other functions (3)</summary>

- `effect:getClassPath()`
- `effect:getReachedTargetPlayerStepsPhoneMessageUID()`
- `effect:getOriginalPotential()`

</details>

### potentialStatSoftResetWorldEffect

`classes.world.effects.world.potentialStatSoftResetWorldEffect`

- returns `t`
- requires: `classes.world.effects.world.abstractUpgradeMonsterAfterPlayerStepsWorldEffect`

- `potentialStatSoftResetWorldEffect:new(_saveableOptions, _monster)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getReachedTargetPlayerStepsPhoneMessageUID()`
- `effect:getClassPath()`

</details>

### recallBlockerWorldEffect

`classes.world.effects.world.recallBlockerWorldEffect`

- returns `t`
- requires: `classes.world.effects.abstractSaveableWorldEffect`

- `recallBlockerWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:onBeforeUseItemMessage(_item, _mode)`

</details>

### repelModuleIntervalWorldEffect

`classes.world.effects.world.repelModuleIntervalWorldEffect`

- returns `t`
- requires: `classes.world.effects.world.abstractGauntletModuleIntervalWorldEffect`

- `repelModuleIntervalWorldEffect:new(_saveableOptions)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getClassPath()`
- `effect:getGauntletModuleUID()`

</details>

### spinnerSwapWorldEffect

`classes.world.effects.world.spinnerSwapWorldEffect`

- returns `t`
- requires: `classes.world.effects.world.abstractUpgradeMonsterAfterPlayerStepsWorldEffect`

- `spinnerSwapWorldEffect:new(_saveableOptions, _monster)`

<details><summary>Instance / other functions (2)</summary>

- `effect:getReachedTargetPlayerStepsPhoneMessageUID()`
- `effect:getClassPath()`

</details>

### traitRerollWorldEffect

`classes.world.effects.world.traitRerollWorldEffect`

- returns `t`
- requires: `classes.world.effects.world.abstractUpgradeMonsterAfterPlayerStepsWorldEffect`

- `traitRerollWorldEffect:new(_saveableOptions, _monster, _selectedTraitUID)`

<details><summary>Instance / other functions (3)</summary>

- `effect:getClassPath()`
- `effect:getReachedTargetPlayerStepsPhoneMessageUID()`
- `effect:getOriginalTraitUID()`

</details>

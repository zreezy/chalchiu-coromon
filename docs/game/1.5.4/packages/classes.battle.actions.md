# classes.battle.actions

Coromon 1.5.4. 3 module(s). [Back to index](../README.md)

[DepleteEnergyAction](#depleteenergyaction), [RecoverEnergyAction](#recoverenergyaction), [RecoverHealthAction](#recoverhealthaction)

### DepleteEnergyAction

`classes.battle.actions.DepleteEnergyAction`

- returns `t`
- requires: `classes.battle.AbstractMonsterSpriteAction`

- `DepleteEnergyAction:new(_monsterSprite, _energyToDeplete)`

<details><summary>Instance / other functions (2)</summary>

- `effect:onApplyEffect(_onComplete)`
- `effect:onBeforeApplyMessage()`

</details>

### RecoverEnergyAction

`classes.battle.actions.RecoverEnergyAction`

- returns `t`
- requires: `classes.battle.AbstractMonsterSpriteAction`

- `RecoverEnergyAction:new(_monsterSprite, _energyToRecover)`

<details><summary>Instance / other functions (2)</summary>

- `effect:onApplyEffect(_onComplete)`
- `effect:onBeforeApplyMessage()`

</details>

### RecoverHealthAction

`classes.battle.actions.RecoverHealthAction`

- returns `t`
- requires: `classes.battle.AbstractMonsterSpriteAction`

- `RecoverHealthAction:new(_monsterSprite, _healthToRecover)`

<details><summary>Instance / other functions (2)</summary>

- `effect:onApplyEffect(_onComplete)`
- `effect:onBeforeApplyMessage()`

</details>

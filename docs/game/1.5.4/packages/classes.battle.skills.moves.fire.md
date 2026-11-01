# classes.battle.skills.moves.fire

Coromon 1.5.4. 21 module(s). [Back to index](../README.md)

[BLAZE_FEATHERS](#blaze_feathers), [BLAZING_COALS](#blazing_coals), [CINDER](#cinder), [CONSTRICTING_FLAMES](#constricting_flames), [DETONATE](#detonate), [FEINT_BURSTS](#feint_bursts), [FIERY_BREATH](#fiery_breath), [FIRESTORM](#firestorm), [FIRE_UP](#fire_up), [FLAMING_TACKLE](#flaming_tackle), [HEATED_HORNS](#heated_horns), [HEATWAVE](#heatwave), [HEAT_BEAM](#heat_beam), [IGNITE](#ignite), [LAVA_BOULDER](#lava_boulder), [LOOSE_CANNON](#loose_cannon), [MAGMA_PUNCH](#magma_punch), [PIERCING_HORNS](#piercing_horns), [PYRE_PECK](#pyre_peck), [SMOKESCREEN](#smokescreen), [STAMPEDE](#stampede)

### BLAZE_FEATHERS

`classes.battle.skills.moves.fire.BLAZE_FEATHERS`

- returns `t`
- requires: `classes.battle.skills.skills.fire.BLAZE_FEATHERS`

- `BLAZE_FEATHERS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### BLAZING_COALS

`classes.battle.skills.moves.fire.BLAZING_COALS`

- returns `t`
- requires: `classes.battle.skills.skills.fire.BLAZING_COALS`

- `BLAZING_COALS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CINDER

`classes.battle.skills.moves.fire.CINDER`

- returns `t`
- requires: `classes.battle.skills.skills.fire.CINDER`

- `CINDER:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CONSTRICTING_FLAMES

`classes.battle.skills.moves.fire.CONSTRICTING_FLAMES`

- returns `t`
- requires: `classes.battle.skills.skills.fire.CONSTRICTING_FLAMES`

- `CONSTRICTING_FLAMES:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### DETONATE

`classes.battle.skills.moves.fire.DETONATE`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.fire.DETONATE`

- `DETONATE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FEINT_BURSTS

`classes.battle.skills.moves.fire.FEINT_BURSTS`

- returns `t`
- requires: `classes.battle.skills.skills.fire.FEINT_BURSTS`, `classes.battle.skills.moves.plugins.feintSpoutSkillMovePlugin`

- `FEINT_BURSTS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `skill:getSmallWaterJetSound()`
- `skill:createSmallWaterJetSprite(_parent)`
- `skill:getWaterJetSound()`
- `skill:createWaterJetSprite(_parent)`

</details>

### FIERY_BREATH

`classes.battle.skills.moves.fire.FIERY_BREATH`

- returns `t`
- requires: `classes.battle.skills.skills.fire.FIERY_BREATH`

- `FIERY_BREATH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FIRESTORM

`classes.battle.skills.moves.fire.FIRESTORM`

- returns `t`
- requires: `classes.battle.skills.skills.fire.FIRESTORM`

- `FIRESTORM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FIRE_UP

`classes.battle.skills.moves.fire.FIRE_UP`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.fire.FIRE_UP`

- `FIRE_UP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FLAMING_TACKLE

`classes.battle.skills.moves.fire.FLAMING_TACKLE`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.fire.FLAMING_TACKLE`

- `FLAMING_TACKLE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HEATED_HORNS

`classes.battle.skills.moves.fire.HEATED_HORNS`

- returns `t`
- requires: `classes.battle.skills.skills.fire.HEATED_HORNS`

- `HEATED_HORNS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HEATWAVE

`classes.battle.skills.moves.fire.HEATWAVE`

- returns `t`
- requires: `classes.battle.skills.skills.fire.HEATWAVE`

- `HEATWAVE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HEAT_BEAM

`classes.battle.skills.moves.fire.HEAT_BEAM`

- returns `t`
- requires: `classes.battle.skills.skills.fire.HEAT_BEAM`

- `HEAT_BEAM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### IGNITE

`classes.battle.skills.moves.fire.IGNITE`

- returns `t`
- requires: `classes.battle.skills.skills.fire.IGNITE`

- `IGNITE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### LAVA_BOULDER

`classes.battle.skills.moves.fire.LAVA_BOULDER`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.fire.LAVA_BOULDER`

- `LAVA_BOULDER:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### LOOSE_CANNON

`classes.battle.skills.moves.fire.LOOSE_CANNON`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.fire.LOOSE_CANNON`

- `LOOSE_CANNON:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### MAGMA_PUNCH

`classes.battle.skills.moves.fire.MAGMA_PUNCH`

- returns `t`
- requires: `classes.battle.skills.skills.fire.MAGMA_PUNCH`

- `MAGMA_PUNCH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PIERCING_HORNS

`classes.battle.skills.moves.fire.PIERCING_HORNS`

- returns `t`
- requires: `classes.battle.skills.skills.fire.PIERCING_HORNS`

- `PIERCING_HORNS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PYRE_PECK

`classes.battle.skills.moves.fire.PYRE_PECK`

- returns `t`
- requires: `classes.battle.skills.skills.fire.PYRE_PECK`

- `PYRE_PECK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SMOKESCREEN

`classes.battle.skills.moves.fire.SMOKESCREEN`

- returns `t`
- requires: `classes.battle.skills.skills.fire.SMOKESCREEN`

- `SMOKESCREEN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### STAMPEDE

`classes.battle.skills.moves.fire.STAMPEDE`

- returns `t`
- requires: `classes.battle.skills.skills.fire.STAMPEDE`

- `STAMPEDE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

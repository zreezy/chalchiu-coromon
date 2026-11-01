# classes.battle.skills.moves.normal

Coromon 1.5.4. 63 module(s). [Back to index](../README.md)

[AGILITY_TRAINING](#agility_training), [ALL_IN](#all_in), [BERSERK](#berserk), [BLESSED_GROUNDS](#blessed_grounds), [BURROW](#burrow), [COIN_SNATCH](#coin_snatch), [CONCENTRATE](#concentrate), [CONFUSION](#confusion), [CONSTRICT](#constrict), [CUTE_POSE](#cute_pose), [DISTRACT](#distract), [DOUBLE_STING](#double_sting), [EMP](#emp), [EMPATHY](#empathy), [EMPOWERING_GROUNDS](#empowering_grounds), [EPIPHANY](#epiphany), [FACE_SLAP](#face_slap), [FACTORY_RESET](#factory_reset), [FAST_STRIKE](#fast_strike), [FEELERS](#feelers), [FINAL_GIFT](#final_gift), [FLYING_KICK](#flying_kick), [GLASS_CANNON](#glass_cannon), [IGNORE_PAIN](#ignore_pain), [ILLUSION_BURST](#illusion_burst), [IMMITATE](#immitate), [INNER_PEACE](#inner_peace), [INSPECT_SCENT](#inspect_scent), [LAST_STAND](#last_stand), [MIGHTY_ROAR](#mighty_roar), [NINJA_STANCE](#ninja_stance), [OOZE_ARMOR](#ooze_armor), [OVERDRIVE](#overdrive), [PECK](#peck), [POWER_NAP](#power_nap), [PRECISION_PUNCH](#precision_punch), [PROPELLOR_PUNCH](#propellor_punch), [PUMMEL_OUT](#pummel_out), [PURIFYING_GROUNDS](#purifying_grounds), [QUICK_CHARGE](#quick_charge), [RAGE](#rage), [REPLENISH](#replenish), [RETALIATION](#retaliation), [REVENGE](#revenge), [RUBBER_WEB](#rubber_web), [SANDMAN](#sandman), [SCREAM](#scream), [SLAM](#slam), [SPIKE_TRAP](#spike_trap), [STICKY_SALIVA](#sticky_saliva), [STREAMLINE](#streamline), [SUMO_STANCE](#sumo_stance), [TACTICAL_SLAM](#tactical_slam), [TAIL_SPIN](#tail_spin), [TAIL_SWEEP](#tail_sweep), [TOUGHEN_UP](#toughen_up), [TRAIT_SCENT](#trait_scent), [TRANSCENDING](#transcending), [TRICKY_BONE](#tricky_bone), [TURN_TAIL](#turn_tail), [UPSHIFT](#upshift), [WITHDRAW](#withdraw), [ZEN_CURE](#zen_cure)

### AGILITY_TRAINING

`classes.battle.skills.moves.normal.AGILITY_TRAINING`

- returns `t`
- requires: `classes.battle.skills.skills.normal.AGILITY_TRAINING`

- `AGILITY_TRAINING:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### ALL_IN

`classes.battle.skills.moves.normal.ALL_IN`

- returns `t`
- requires: `classes.battle.skills.skills.normal.ALL_IN`

- `ALL_IN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### BERSERK

`classes.battle.skills.moves.normal.BERSERK`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.BERSERK`

- `BERSERK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### BLESSED_GROUNDS

`classes.battle.skills.moves.normal.BLESSED_GROUNDS`

- returns `t`
- requires: `classes.battle.skills.skills.normal.BLESSED_GROUNDS`

- `BLESSED_GROUNDS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### BURROW

`classes.battle.skills.moves.normal.BURROW`

- returns `t`
- requires: `classes.battle.skills.skills.normal.BURROW`

- `BURROW:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### COIN_SNATCH

`classes.battle.skills.moves.normal.COIN_SNATCH`

- returns `t`
- requires: `classes.battle.skills.skills.normal.COIN_SNATCH`

- `COIN_SNATCH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CONCENTRATE

`classes.battle.skills.moves.normal.CONCENTRATE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.CONCENTRATE`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `CONCENTRATE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### CONFUSION

`classes.battle.skills.moves.normal.CONFUSION`

- returns `t`
- requires: `classes.battle.skills.skills.normal.CONFUSION`

- `CONFUSION:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CONSTRICT

`classes.battle.skills.moves.normal.CONSTRICT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.CONSTRICT`

- `CONSTRICT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CUTE_POSE

`classes.battle.skills.moves.normal.CUTE_POSE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.CUTE_POSE`

- `CUTE_POSE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### DISTRACT

`classes.battle.skills.moves.normal.DISTRACT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.DISTRACT`

- `DISTRACT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### DOUBLE_STING

`classes.battle.skills.moves.normal.DOUBLE_STING`

- returns `t`
- requires: `classes.battle.skills.skills.normal.DOUBLE_STING`

- `DOUBLE_STING:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### EMP

`classes.battle.skills.moves.normal.EMP`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.EMP`

- `EMP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### EMPATHY

`classes.battle.skills.moves.normal.EMPATHY`

- returns `t`
- requires: `classes.battle.skills.skills.normal.EMPATHY`, `classes.battle.skills.moves.plugins.giveAbilityOrbSkillMovePlugin`

- `EMPATHY:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createAbilityOrbSprite(_skillTargetLayer)`

</details>

### EMPOWERING_GROUNDS

`classes.battle.skills.moves.normal.EMPOWERING_GROUNDS`

- returns `t`
- requires: `classes.battle.skills.skills.normal.EMPOWERING_GROUNDS`

- `EMPOWERING_GROUNDS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### EPIPHANY

`classes.battle.skills.moves.normal.EPIPHANY`

- returns `t`
- requires: `classes.battle.skills.skills.normal.EPIPHANY`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `EPIPHANY:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### FACE_SLAP

`classes.battle.skills.moves.normal.FACE_SLAP`

- returns `t`
- requires: `classes.battle.skills.skills.normal.FACE_SLAP`

- `FACE_SLAP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FACTORY_RESET

`classes.battle.skills.moves.normal.FACTORY_RESET`

- returns `t`
- requires: `classes.battle.skills.skills.normal.FACTORY_RESET`

- `FACTORY_RESET:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FAST_STRIKE

`classes.battle.skills.moves.normal.FAST_STRIKE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.FAST_STRIKE`

- `FAST_STRIKE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FEELERS

`classes.battle.skills.moves.normal.FEELERS`

- returns `t`
- requires: `classes.battle.skills.skills.normal.FEELERS`

- `FEELERS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FINAL_GIFT

`classes.battle.skills.moves.normal.FINAL_GIFT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.FINAL_GIFT`, `classes.battle.skills.moves.plugins.infectionSkillMovePlugin`

- `FINAL_GIFT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createSpriteOptions()`
- `skill:createOverlayMonsterSpriteEffect(overlayMonsterSprite)`

</details>

### FLYING_KICK

`classes.battle.skills.moves.normal.FLYING_KICK`

- returns `t`
- requires: `classes.battle.skills.skills.normal.FLYING_KICK`

- `FLYING_KICK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### GLASS_CANNON

`classes.battle.skills.moves.normal.GLASS_CANNON`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.GLASS_CANNON`

- `GLASS_CANNON:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### IGNORE_PAIN

`classes.battle.skills.moves.normal.IGNORE_PAIN`

- returns `t`
- requires: `classes.battle.skills.skills.normal.IGNORE_PAIN`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `IGNORE_PAIN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### ILLUSION_BURST

`classes.battle.skills.moves.normal.ILLUSION_BURST`

- returns `t`
- requires: `classes.battle.skills.skills.normal.ILLUSION_BURST`

- `ILLUSION_BURST:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### IMMITATE

`classes.battle.skills.moves.normal.IMMITATE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.IMMITATE`

- `IMMITATE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### INNER_PEACE

`classes.battle.skills.moves.normal.INNER_PEACE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.INNER_PEACE`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `INNER_PEACE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### INSPECT_SCENT

`classes.battle.skills.moves.normal.INSPECT_SCENT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.INSPECT_SCENT`

- `INSPECT_SCENT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### LAST_STAND

`classes.battle.skills.moves.normal.LAST_STAND`

- returns `t`
- requires: `classes.battle.skills.skills.normal.LAST_STAND`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `LAST_STAND:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### MIGHTY_ROAR

`classes.battle.skills.moves.normal.MIGHTY_ROAR`

- returns `t`
- requires: `classes.battle.skills.skills.normal.MIGHTY_ROAR`

- `MIGHTY_ROAR:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### NINJA_STANCE

`classes.battle.skills.moves.normal.NINJA_STANCE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.NINJA_STANCE`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `NINJA_STANCE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### OOZE_ARMOR

`classes.battle.skills.moves.normal.OOZE_ARMOR`

- returns `t`
- requires: `classes.battle.skills.skills.normal.OOZE_ARMOR`

- `OOZE_ARMOR:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### OVERDRIVE

`classes.battle.skills.moves.normal.OVERDRIVE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.OVERDRIVE`

- `OVERDRIVE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PECK

`classes.battle.skills.moves.normal.PECK`

- returns `t`
- requires: `classes.battle.skills.skills.normal.PECK`

- `PECK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### POWER_NAP

`classes.battle.skills.moves.normal.POWER_NAP`

- returns `t`
- requires: `classes.battle.skills.skills.normal.POWER_NAP`

- `POWER_NAP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PRECISION_PUNCH

`classes.battle.skills.moves.normal.PRECISION_PUNCH`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.PRECISION_PUNCH`

- `PRECISION_PUNCH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PROPELLOR_PUNCH

`classes.battle.skills.moves.normal.PROPELLOR_PUNCH`

- returns `t`
- requires: `classes.battle.skills.skills.normal.PROPELLOR_PUNCH`

- `PROPELLOR_PUNCH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PUMMEL_OUT

`classes.battle.skills.moves.normal.PUMMEL_OUT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.PUMMEL_OUT`

- `PUMMEL_OUT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PURIFYING_GROUNDS

`classes.battle.skills.moves.normal.PURIFYING_GROUNDS`

- returns `t`
- requires: `classes.battle.skills.skills.normal.PURIFYING_GROUNDS`

- `PURIFYING_GROUNDS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### QUICK_CHARGE

`classes.battle.skills.moves.normal.QUICK_CHARGE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.QUICK_CHARGE`

- `QUICK_CHARGE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### RAGE

`classes.battle.skills.moves.normal.RAGE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.RAGE`

- `RAGE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### REPLENISH

`classes.battle.skills.moves.normal.REPLENISH`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.REPLENISH`

- `REPLENISH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### RETALIATION

`classes.battle.skills.moves.normal.RETALIATION`

- returns `t`
- requires: `classes.battle.skills.skills.normal.RETALIATION`

- `RETALIATION:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### REVENGE

`classes.battle.skills.moves.normal.REVENGE`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.REVENGE`

- `REVENGE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### RUBBER_WEB

`classes.battle.skills.moves.normal.RUBBER_WEB`

- returns `t`
- requires: `classes.battle.skills.skills.normal.RUBBER_WEB`, `classes.battle.skills.moves.plugins.magicShieldSkillMovePlugin`

- `RUBBER_WEB:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMagicShieldSpriteOptions()`

</details>

### SANDMAN

`classes.battle.skills.moves.normal.SANDMAN`

- returns `t`
- requires: `classes.battle.skills.skills.normal.SANDMAN`

- `SANDMAN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SCREAM

`classes.battle.skills.moves.normal.SCREAM`

- returns `t`
- requires: `classes.battle.skills.skills.normal.SCREAM`

- `SCREAM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SLAM

`classes.battle.skills.moves.normal.SLAM`

- returns `t`
- requires: `classes.battle.skills.skills.normal.SLAM`

- `SLAM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SPIKE_TRAP

`classes.battle.skills.moves.normal.SPIKE_TRAP`

- returns `t`
- requires: `classes.battle.skills.skills.normal.SPIKE_TRAP`

- `SPIKE_TRAP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### STICKY_SALIVA

`classes.battle.skills.moves.normal.STICKY_SALIVA`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.STICKY_SALIVA`

- `STICKY_SALIVA:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### STREAMLINE

`classes.battle.skills.moves.normal.STREAMLINE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.STREAMLINE`

- `STREAMLINE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SUMO_STANCE

`classes.battle.skills.moves.normal.SUMO_STANCE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.SUMO_STANCE`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `SUMO_STANCE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

### TACTICAL_SLAM

`classes.battle.skills.moves.normal.TACTICAL_SLAM`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.TACTICAL_SLAM`

- `TACTICAL_SLAM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TAIL_SPIN

`classes.battle.skills.moves.normal.TAIL_SPIN`

- returns `t`
- requires: `classes.battle.skills.skills.normal.TAIL_SPIN`

- `TAIL_SPIN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TAIL_SWEEP

`classes.battle.skills.moves.normal.TAIL_SWEEP`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.TAIL_SWEEP`

- `TAIL_SWEEP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TOUGHEN_UP

`classes.battle.skills.moves.normal.TOUGHEN_UP`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.TOUGHEN_UP`

- `TOUGHEN_UP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TRAIT_SCENT

`classes.battle.skills.moves.normal.TRAIT_SCENT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.TRAIT_SCENT`, `classes.interface.overlays.TraitDetailsPopup`

- `TRAIT_SCENT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TRANSCENDING

`classes.battle.skills.moves.normal.TRANSCENDING`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.TRANSCENDING`

- `TRANSCENDING:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TRICKY_BONE

`classes.battle.skills.moves.normal.TRICKY_BONE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.TRICKY_BONE`

- `TRICKY_BONE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TURN_TAIL

`classes.battle.skills.moves.normal.TURN_TAIL`

- returns `t`
- requires: `classes.battle.skills.skills.normal.TURN_TAIL`

- `TURN_TAIL:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### UPSHIFT

`classes.battle.skills.moves.normal.UPSHIFT`

- returns `t`
- requires: `classes.battle.skills.skills.normal.UPSHIFT`

- `UPSHIFT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### WITHDRAW

`classes.battle.skills.moves.normal.WITHDRAW`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.normal.WITHDRAW`

- `WITHDRAW:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### ZEN_CURE

`classes.battle.skills.moves.normal.ZEN_CURE`

- returns `t`
- requires: `classes.battle.skills.skills.normal.ZEN_CURE`, `classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- `ZEN_CURE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createInnerEnergySprite(_skillTargetLayer)`

</details>

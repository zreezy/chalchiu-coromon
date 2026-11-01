# classes.battle.skills.moves.crimsonite

Coromon 1.5.4. 8 module(s). [Back to index](../README.md)

[CORRUPT](#corrupt), [CORRUPTED_STORM](#corrupted_storm), [DISRUPTION](#disruption), [DISTORT](#distort), [ENVELOPING_DARKNESS](#enveloping_darkness), [MUTILATION_BEAM](#mutilation_beam), [SHADOW_FURY](#shadow_fury), [SHADOW_REND](#shadow_rend)

### CORRUPT

`classes.battle.skills.moves.crimsonite.CORRUPT`

- returns `t`
- requires: `classes.battle.skills.skills.crimsonite.CORRUPT`, `classes.battle.skills.moves.plugins.infectionSkillMovePlugin`

- `CORRUPT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createSpriteOptions()`
- `skill:createOverlayMonsterSpriteEffect(overlayMonsterSprite)`

</details>

### CORRUPTED_STORM

`classes.battle.skills.moves.crimsonite.CORRUPTED_STORM`

- returns `t`
- requires: `classes.battle.skills.skills.crimsonite.CORRUPTED_STORM`

- `CORRUPTED_STORM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### DISRUPTION

`classes.battle.skills.moves.crimsonite.DISRUPTION`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.crimsonite.DISRUPTION`

- `DISRUPTION:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### DISTORT

`classes.battle.skills.moves.crimsonite.DISTORT`

- returns `t`
- requires: `classes.battle.skills.skills.crimsonite.DISTORT`, `classes.battle.skills.moves.plugins.infectionSkillMovePlugin`

- `DISTORT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createSpriteOptions()`
- `skill:createOverlayMonsterSpriteEffect(overlayMonsterSprite)`

</details>

### ENVELOPING_DARKNESS

`classes.battle.skills.moves.crimsonite.ENVELOPING_DARKNESS`

- returns `t`
- requires: `classes.battle.skills.skills.crimsonite.ENVELOPING_DARKNESS`

- `ENVELOPING_DARKNESS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### MUTILATION_BEAM

`classes.battle.skills.moves.crimsonite.MUTILATION_BEAM`

- returns `t`
- requires: `classes.battle.skills.skills.crimsonite.MUTILATION_BEAM`

- `MUTILATION_BEAM:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SHADOW_FURY

`classes.battle.skills.moves.crimsonite.SHADOW_FURY`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.crimsonite.SHADOW_FURY`

- `SHADOW_FURY:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SHADOW_REND

`classes.battle.skills.moves.crimsonite.SHADOW_REND`

- returns `t`
- requires: `classes.battle.skills.skills.crimsonite.SHADOW_REND`

- `SHADOW_REND:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

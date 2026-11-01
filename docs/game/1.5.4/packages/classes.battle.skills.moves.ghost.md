# classes.battle.skills.moves.ghost

Coromon 1.5.4. 26 module(s). [Back to index](../README.md)

[ARTIFICIAL_NIGHT](#artificial_night), [BALL_OF_DARKNESS](#ball_of_darkness), [BALL_OF_LIGHT](#ball_of_light), [CAT_SCRATCH](#cat_scratch), [CURSED_GROUNDS](#cursed_grounds), [FRANTIC_MASK](#frantic_mask), [GHASTLY_NAP](#ghastly_nap), [HAUNTED_GROUNDS](#haunted_grounds), [HORROR_MASK](#horror_mask), [HOWL](#howl), [HYPNOTIZE](#hypnotize), [HYPNO_WAVE](#hypno_wave), [KITTY_CLAWS](#kitty_claws), [MOONLIGHT](#moonlight), [MOON_DISC](#moon_disc), [PHANTOM_SPIKE](#phantom_spike), [POLTER_CRUSH](#polter_crush), [PREMONITION](#premonition), [SACRIFICE](#sacrifice), [SHADEWALKER](#shadewalker), [SHADOWRUNNER](#shadowrunner), [SHARED_FATE](#shared_fate), [SOUL_SWAP](#soul_swap), [SPECTRAL_LATTICE](#spectral_lattice), [SPECTRAL_TIDE](#spectral_tide), [TIME_WARP](#time_warp)

### ARTIFICIAL_NIGHT

`classes.battle.skills.moves.ghost.ARTIFICIAL_NIGHT`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.ARTIFICIAL_NIGHT`

- `ARTIFICIAL_NIGHT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### BALL_OF_DARKNESS

`classes.battle.skills.moves.ghost.BALL_OF_DARKNESS`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.BALL_OF_DARKNESS`

- `BALL_OF_DARKNESS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### BALL_OF_LIGHT

`classes.battle.skills.moves.ghost.BALL_OF_LIGHT`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.BALL_OF_LIGHT`

- `BALL_OF_LIGHT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CAT_SCRATCH

`classes.battle.skills.moves.ghost.CAT_SCRATCH`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.CAT_SCRATCH`

- `CAT_SCRATCH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### CURSED_GROUNDS

`classes.battle.skills.moves.ghost.CURSED_GROUNDS`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.CURSED_GROUNDS`

- `CURSED_GROUNDS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### FRANTIC_MASK

`classes.battle.skills.moves.ghost.FRANTIC_MASK`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.FRANTIC_MASK`, `classes.battle.skills.moves.plugins.oscillatingMaskSkillMovePlugin`

- `FRANTIC_MASK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (5)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:maskShouldTargetMonsterSprite()`
- `skill:getMaskSound()`
- `skill:getMaskTransitionDuration()`
- `skill:createMaskSpriteOptions()`

</details>

### GHASTLY_NAP

`classes.battle.skills.moves.ghost.GHASTLY_NAP`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.GHASTLY_NAP`

- `GHASTLY_NAP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HAUNTED_GROUNDS

`classes.battle.skills.moves.ghost.HAUNTED_GROUNDS`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.HAUNTED_GROUNDS`

- `HAUNTED_GROUNDS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HORROR_MASK

`classes.battle.skills.moves.ghost.HORROR_MASK`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.HORROR_MASK`, `classes.battle.skills.moves.plugins.oscillatingMaskSkillMovePlugin`

- `HORROR_MASK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (6)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`
- `skill:maskShouldTargetMonsterSprite()`
- `skill:getMaskSound()`
- `skill:getMaskTransitionDuration()`
- `skill:createMaskSpriteOptions()`

</details>

### HOWL

`classes.battle.skills.moves.ghost.HOWL`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.HOWL`

- `HOWL:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HYPNOTIZE

`classes.battle.skills.moves.ghost.HYPNOTIZE`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.HYPNOTIZE`

- `HYPNOTIZE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HYPNO_WAVE

`classes.battle.skills.moves.ghost.HYPNO_WAVE`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.HYPNO_WAVE`

- `HYPNO_WAVE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### KITTY_CLAWS

`classes.battle.skills.moves.ghost.KITTY_CLAWS`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.KITTY_CLAWS`

- `KITTY_CLAWS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### MOONLIGHT

`classes.battle.skills.moves.ghost.MOONLIGHT`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.MOONLIGHT`

- `MOONLIGHT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### MOON_DISC

`classes.battle.skills.moves.ghost.MOON_DISC`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.MOON_DISC`

- `MOON_DISC:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PHANTOM_SPIKE

`classes.battle.skills.moves.ghost.PHANTOM_SPIKE`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.PHANTOM_SPIKE`

- `PHANTOM_SPIKE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### POLTER_CRUSH

`classes.battle.skills.moves.ghost.POLTER_CRUSH`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.POLTER_CRUSH`

- `POLTER_CRUSH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### PREMONITION

`classes.battle.skills.moves.ghost.PREMONITION`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.PREMONITION`

- `PREMONITION:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SACRIFICE

`classes.battle.skills.moves.ghost.SACRIFICE`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.SACRIFICE`, `classes.battle.skills.moves.plugins.oscillatingMaskSkillMovePlugin`

- `SACRIFICE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (6)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`
- `skill:maskShouldTargetMonsterSprite()`
- `skill:getMaskSound()`
- `skill:getMaskTransitionDuration()`
- `skill:createMaskSpriteOptions()`

</details>

### SHADEWALKER

`classes.battle.skills.moves.ghost.SHADEWALKER`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.SHADEWALKER`

- `SHADEWALKER:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SHADOWRUNNER

`classes.battle.skills.moves.ghost.SHADOWRUNNER`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.SHADOWRUNNER`

- `SHADOWRUNNER:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SHARED_FATE

`classes.battle.skills.moves.ghost.SHARED_FATE`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.SHARED_FATE`, `classes.battle.skills.moves.plugins.infectionSkillMovePlugin`

- `SHARED_FATE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createSpriteOptions()`
- `skill:createOverlayMonsterSpriteEffect(_overlayMonsterSprite)`

</details>

### SOUL_SWAP

`classes.battle.skills.moves.ghost.SOUL_SWAP`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.ghost.SOUL_SWAP`

- `SOUL_SWAP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SPECTRAL_LATTICE

`classes.battle.skills.moves.ghost.SPECTRAL_LATTICE`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.SPECTRAL_LATTICE`, `classes.battle.skills.moves.plugins.magicShieldSkillMovePlugin`

- `SPECTRAL_LATTICE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMagicShieldSpriteOptions()`

</details>

### SPECTRAL_TIDE

`classes.battle.skills.moves.ghost.SPECTRAL_TIDE`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.SPECTRAL_TIDE`

- `SPECTRAL_TIDE:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### TIME_WARP

`classes.battle.skills.moves.ghost.TIME_WARP`

- returns `t`
- requires: `classes.battle.skills.skills.ghost.TIME_WARP`

- `TIME_WARP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

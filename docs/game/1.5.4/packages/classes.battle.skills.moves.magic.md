# classes.battle.skills.moves.magic

Coromon 1.5.4. 15 module(s). [Back to index](../README.md)

[BEWITCH](#bewitch), [DISABLE_HEAL](#disable_heal), [DISABLE_SKILL](#disable_skill), [DRAIN](#drain), [ENERGY_DRAIN](#energy_drain), [HEALTH_LINK](#health_link), [HOCUS_POCUS](#hocus_pocus), [INVERSAL](#inversal), [MYSTIC_MESH](#mystic_mesh), [SIDE_SWAP](#side_swap), [SOUL_CRUSH](#soul_crush), [STAT_COPYCAT](#stat_copycat), [SUPER_DRAIN](#super_drain), [SUPER_ENERGY_DRAIN](#super_energy_drain), [VOODOO](#voodoo)

### BEWITCH

`classes.battle.skills.moves.magic.BEWITCH`

- returns `t`
- requires: `classes.battle.skills.skills.magic.BEWITCH`

- `BEWITCH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### DISABLE_HEAL

`classes.battle.skills.moves.magic.DISABLE_HEAL`

- returns `t`
- requires: `classes.battle.skills.skills.magic.DISABLE_HEAL`, `classes.battle.skills.moves.plugins.disableAbilityOrbSkillMovePlugin`

- `DISABLE_HEAL:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createAbilityOrbSprite(_skillTargetLayer)`

</details>

### DISABLE_SKILL

`classes.battle.skills.moves.magic.DISABLE_SKILL`

- returns `t`
- requires: `classes.battle.skills.skills.magic.DISABLE_SKILL`, `classes.battle.skills.moves.plugins.disableAbilityOrbSkillMovePlugin`

- `DISABLE_SKILL:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createAbilityOrbSprite(_skillTargetLayer)`

</details>

### DRAIN

`classes.battle.skills.moves.magic.DRAIN`

- returns `t`
- requires: `classes.battle.skills.skills.magic.DRAIN`, `classes.battle.skills.moves.plugins.absorbSkillMovePlugin`

- `DRAIN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:isMegaAbsorb()`
- `skill:createAbsorbSprite(_skillTargetLayer)`

</details>

### ENERGY_DRAIN

`classes.battle.skills.moves.magic.ENERGY_DRAIN`

- returns `t`
- requires: `classes.battle.skills.skills.magic.ENERGY_DRAIN`, `classes.battle.skills.moves.plugins.absorbSkillMovePlugin`

- `ENERGY_DRAIN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:isMegaAbsorb()`
- `skill:createAbsorbSprite(_skillTargetLayer)`

</details>

### HEALTH_LINK

`classes.battle.skills.moves.magic.HEALTH_LINK`

- returns `t`
- requires: `classes.battle.skills.skills.magic.HEALTH_LINK`, `classes.battle.skills.moves.plugins.swapAbilityOrbSkillMovePlugin`

- `HEALTH_LINK:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createAbilityOrbSprite(_skillTargetLayer)`

</details>

### HOCUS_POCUS

`classes.battle.skills.moves.magic.HOCUS_POCUS`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.magic.HOCUS_POCUS`

- `HOCUS_POCUS:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### INVERSAL

`classes.battle.skills.moves.magic.INVERSAL`

- returns `t`
- requires: `classes.battle.skills.skills.magic.INVERSAL`

- `INVERSAL:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### MYSTIC_MESH

`classes.battle.skills.moves.magic.MYSTIC_MESH`

- returns `t`
- requires: `classes.battle.skills.skills.magic.MYSTIC_MESH`, `classes.battle.skills.moves.plugins.magicShieldSkillMovePlugin`

- `MYSTIC_MESH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMagicShieldSpriteOptions()`

</details>

### SIDE_SWAP

`classes.battle.skills.moves.magic.SIDE_SWAP`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.magic.SIDE_SWAP`

- `SIDE_SWAP:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SOUL_CRUSH

`classes.battle.skills.moves.magic.SOUL_CRUSH`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.magic.SOUL_CRUSH`

- `SOUL_CRUSH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### STAT_COPYCAT

`classes.battle.skills.moves.magic.STAT_COPYCAT`

- returns `t`
- requires: `classes.battle.skills.skills.magic.STAT_COPYCAT`, `classes.battle.skills.moves.plugins.stealAbilityOrbSkillMovePlugin`

- `STAT_COPYCAT:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:createAbilityOrbSprite(_skillTargetLayer)`

</details>

### SUPER_DRAIN

`classes.battle.skills.moves.magic.SUPER_DRAIN`

- returns `t`
- requires: `classes.battle.skills.skills.magic.SUPER_DRAIN`, `classes.battle.skills.moves.plugins.absorbSkillMovePlugin`

- `SUPER_DRAIN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:isMegaAbsorb()`
- `skill:createAbsorbSprite(_skillTargetLayer)`

</details>

### SUPER_ENERGY_DRAIN

`classes.battle.skills.moves.magic.SUPER_ENERGY_DRAIN`

- returns `t`
- requires: `classes.battle.skills.skills.magic.SUPER_ENERGY_DRAIN`, `classes.battle.skills.moves.plugins.absorbSkillMovePlugin`

- `SUPER_ENERGY_DRAIN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `skill:isMegaAbsorb()`
- `skill:createAbsorbSprite(_skillTargetLayer)`

</details>

### VOODOO

`classes.battle.skills.moves.magic.VOODOO`

- returns `t`
- requires: `classes.battle.skills.skills.magic.VOODOO`, `classes.battle.skills.moves.plugins.oscillatingMaskSkillMovePlugin`

- `VOODOO:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (5)</summary>

- `skill:maskShouldTargetMonsterSprite()`
- `skill:getMaskSound()`
- `skill:getMaskTransitionDuration()`
- `skill:createMaskSpriteOptions()`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

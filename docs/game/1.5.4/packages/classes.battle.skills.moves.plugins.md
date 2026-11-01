# classes.battle.skills.moves.plugins

Coromon 1.5.4. 10 module(s). [Back to index](../README.md)

[absorbSkillMovePlugin](#absorbskillmoveplugin), [disableAbilityOrbSkillMovePlugin](#disableabilityorbskillmoveplugin), [feintSpoutSkillMovePlugin](#feintspoutskillmoveplugin), [giveAbilityOrbSkillMovePlugin](#giveabilityorbskillmoveplugin), [infectionSkillMovePlugin](#infectionskillmoveplugin), [innerEnergySkillMovePlugin](#innerenergyskillmoveplugin), [magicShieldSkillMovePlugin](#magicshieldskillmoveplugin), [oscillatingMaskSkillMovePlugin](#oscillatingmaskskillmoveplugin), [stealAbilityOrbSkillMovePlugin](#stealabilityorbskillmoveplugin), [swapAbilityOrbSkillMovePlugin](#swapabilityorbskillmoveplugin)

### absorbSkillMovePlugin

`classes.battle.skills.moves.plugins.absorbSkillMovePlugin`

- returns `t`, uses coroutines

- `absorbSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `_skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `_skill:createAbsorbSprite(_skillTargetLayer)`
- `_skill:isMegaAbsorb()`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### disableAbilityOrbSkillMovePlugin

`classes.battle.skills.moves.plugins.disableAbilityOrbSkillMovePlugin`

- returns `t`

- `disableAbilityOrbSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `_skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `_skill:createAbilityOrbSprite(_parent)`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### feintSpoutSkillMovePlugin

`classes.battle.skills.moves.plugins.feintSpoutSkillMovePlugin`

- returns `t`

- `feintSpoutSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (5)</summary>

- `_skill:createSmallWaterJetSprite(_parent)`
- `_skill:getSmallWaterJetSound()`
- `_skill:createWaterJetSprite(_parent)`
- `_skill:getWaterJetSound()`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### giveAbilityOrbSkillMovePlugin

`classes.battle.skills.moves.plugins.giveAbilityOrbSkillMovePlugin`

- returns `t`

- `giveAbilityOrbSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `_skill:createMonsterSpriteOverlay(_targetMonsterSprite)`
- `_skill:createAbilityOrbSprite(_parent)`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### infectionSkillMovePlugin

`classes.battle.skills.moves.plugins.infectionSkillMovePlugin`

- returns `t`

- `infectionSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (4)</summary>

- `_skill:onDamage()`
- `_skill:createSpriteOptions()`
- `_skill:createOverlayMonsterSpriteEffect(_overlayMonsterSprite)`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### innerEnergySkillMovePlugin

`classes.battle.skills.moves.plugins.innerEnergySkillMovePlugin`

- returns `t`, uses coroutines

- `innerEnergySkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `_skill:createMonsterSpriteOverlay(_skillTargetMonsterSprite)`
- `_skill:createInnerEnergySprite(_skillTargetLayer)`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### magicShieldSkillMovePlugin

`classes.battle.skills.moves.plugins.magicShieldSkillMovePlugin`

- returns `t`, uses coroutines

- `magicShieldSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `_skill:createMagicShieldSpriteOptions()`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### oscillatingMaskSkillMovePlugin

`classes.battle.skills.moves.plugins.oscillatingMaskSkillMovePlugin`

- returns `t`

- `oscillatingMaskSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target, _isSubtle)`

<details><summary>Instance / other functions (5)</summary>

- `_skill:getMaskSound()`
- `_skill:getMaskTransitionDuration()`
- `_skill:createMaskSpriteOptions()`
- `_skill:maskShouldTargetMonsterSprite()`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### stealAbilityOrbSkillMovePlugin

`classes.battle.skills.moves.plugins.stealAbilityOrbSkillMovePlugin`

- returns `t`

- `stealAbilityOrbSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `_skill:createMonsterSpriteOverlay(_targetMonsterSprite)`
- `_skill:createAbilityOrbSprite(_parent)`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### swapAbilityOrbSkillMovePlugin

`classes.battle.skills.moves.plugins.swapAbilityOrbSkillMovePlugin`

- returns `t`

- `swapAbilityOrbSkillMovePlugin:install(_skill, _activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (3)</summary>

- `_skill:createMonsterSpriteOverlay(_targetMonsterSprite)`
- `_skill:createAbilityOrbSprite(_parent)`
- `_skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

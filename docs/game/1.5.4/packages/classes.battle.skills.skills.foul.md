# classes.battle.skills.skills.foul

Coromon 1.5.4. 9 module(s). [Back to index](../README.md)

[BACKSTAB](#backstab), [CHOMP](#chomp), [CHOP](#chop), [CRUNCH](#crunch), [DEATH_GRIP](#death_grip), [FADE_ATTACK](#fade_attack), [REVENGE_JAWS](#revenge_jaws), [SCARY_VISION](#scary_vision), [TRICKY_CLAWS](#tricky_claws)

### BACKSTAB

`classes.battle.skills.skills.foul.BACKSTAB`

- returns `t`
- requires: `classes.battle.skills.generated.foul.BACKSTAB`

- `BACKSTAB:new()`

<details><summary>Instance / other functions (1)</summary>

- `skill:getRequiredSounds()`

</details>

### CHOMP

`classes.battle.skills.skills.foul.CHOMP`

- returns `t`
- requires: `classes.battle.skills.generated.foul.CHOMP`

- `CHOMP:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`
- `skill:getRequiredSounds()`

</details>

### CHOP

`classes.battle.skills.skills.foul.CHOP`

- returns `t`
- requires: `classes.battle.skills.generated.foul.CHOP`

- `CHOP:new()`

<details><summary>Instance / other functions (1)</summary>

- `skill:getRequiredSounds()`

</details>

### CRUNCH

`classes.battle.skills.skills.foul.CRUNCH`

- returns `t`
- requires: `classes.battle.skills.generated.foul.CRUNCH`

- `CRUNCH:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`
- `skill:getRequiredSounds()`

</details>

### DEATH_GRIP

`classes.battle.skills.skills.foul.DEATH_GRIP`

- returns `t`
- requires: `classes.battle.skills.generated.foul.DEATH_GRIP`, `classes.battle.skills.skills.plugins.oneHitKillSkillPlugin`

- `DEATH_GRIP:new()`

<details><summary>Instance / other functions (1)</summary>

- `skill:getRequiredSounds()`

</details>

### FADE_ATTACK

`classes.battle.skills.skills.foul.FADE_ATTACK`

- returns `t`
- requires: `classes.battle.skills.generated.foul.FADE_ATTACK`

- `FADE_ATTACK:new()`

<details><summary>Instance / other functions (1)</summary>

- `skill:getRequiredSounds()`

</details>

### REVENGE_JAWS

`classes.battle.skills.skills.foul.REVENGE_JAWS`

- returns `t`
- requires: `classes.battle.skills.generated.foul.REVENGE_JAWS`

- `REVENGE_JAWS:new()`

<details><summary>Instance / other functions (3)</summary>

- `skill:canCriticalHit()`
- `skill:canGetAffectedByTypeEffectiveness()`
- `skill:rollDamage(_activeMonsterSprite, _targetMonsterSprite, _willCriticalHit)`

</details>

### SCARY_VISION

`classes.battle.skills.skills.foul.SCARY_VISION`

- returns `t`
- requires: `classes.battle.skills.generated.foul.SCARY_VISION`

- `SCARY_VISION:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`
- `skill:getRequiredSounds()`

</details>

### TRICKY_CLAWS

`classes.battle.skills.skills.foul.TRICKY_CLAWS`

- returns `t`
- requires: `classes.battle.skills.generated.foul.TRICKY_CLAWS`

- `TRICKY_CLAWS:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`
- `skill:getRequiredSounds()`

</details>

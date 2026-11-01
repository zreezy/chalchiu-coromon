# classes.battle.skills.skills.air

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[MIST](#mist), [TEMPEST](#tempest), [WHOOSH](#whoosh), [WIND_BLAST](#wind_blast)

### MIST

`classes.battle.skills.skills.air.MIST`

- returns `t`
- requires: `classes.battle.skills.generated.air.MIST`

- `MIST:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScore(_activeMonsterSprite, _targetedMonsterSprites, _score)`
- `skill:getRequiredSounds()`

</details>

### TEMPEST

`classes.battle.skills.skills.air.TEMPEST`

- returns `t`
- requires: `classes.battle.skills.generated.air.TEMPEST`

- `TEMPEST:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`
- `skill:getRequiredSounds()`

</details>

### WHOOSH

`classes.battle.skills.skills.air.WHOOSH`

- returns `t`
- requires: `classes.battle.skills.generated.air.WHOOSH`

- `WHOOSH:new()`

<details><summary>Instance / other functions (3)</summary>

- `skill:mutateSkillPowerPriority()`
- `skill:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `skill:getRequiredSounds()`

</details>

### WIND_BLAST

`classes.battle.skills.skills.air.WIND_BLAST`

- returns `t`
- requires: `classes.battle.skills.generated.air.WIND_BLAST`

- `WIND_BLAST:new()`

<details><summary>Instance / other functions (1)</summary>

- `skill:getRequiredSounds()`

</details>

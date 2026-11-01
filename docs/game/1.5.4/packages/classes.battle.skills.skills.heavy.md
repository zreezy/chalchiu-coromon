# classes.battle.skills.skills.heavy

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[BODY_BLAST](#body_blast), [HEADBASH](#headbash), [HEADCRASH](#headcrash), [SMACKDOWN](#smackdown)

### BODY_BLAST

`classes.battle.skills.skills.heavy.BODY_BLAST`

- returns `t`
- requires: `classes.battle.skills.generated.heavy.BODY_BLAST`

- `BODY_BLAST:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`
- `skill:getRequiredSounds()`

</details>

### HEADBASH

`classes.battle.skills.skills.heavy.HEADBASH`

- returns `t`
- requires: `classes.battle.skills.generated.heavy.HEADBASH`

- `HEADBASH:new()`

<details><summary>Instance / other functions (2)</summary>

- `skill:getRecoilDamagePercentage()`
- `skill:getRequiredSounds()`

</details>

### HEADCRASH

`classes.battle.skills.skills.heavy.HEADCRASH`

- returns `t`
- requires: `classes.battle.skills.generated.heavy.HEADCRASH`

- `HEADCRASH:new()`

### SMACKDOWN

`classes.battle.skills.skills.heavy.SMACKDOWN`

- returns `t`
- requires: `classes.battle.skills.generated.heavy.SMACKDOWN`

- `SMACKDOWN:new()`

<details><summary>Instance / other functions (3)</summary>

- `skill:mutateSkillPowerPriority()`
- `skill:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `skill:getRequiredSounds()`

</details>

# classes.battle.skills.moves.heavy

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[BODY_BLAST](#body_blast), [HEADBASH](#headbash), [HEADCRASH](#headcrash), [SMACKDOWN](#smackdown)

### BODY_BLAST

`classes.battle.skills.moves.heavy.BODY_BLAST`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.heavy.BODY_BLAST`

- `BODY_BLAST:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (2)</summary>

- `skill:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HEADBASH

`classes.battle.skills.moves.heavy.HEADBASH`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.heavy.HEADBASH`

- `HEADBASH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### HEADCRASH

`classes.battle.skills.moves.heavy.HEADCRASH`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.heavy.HEADCRASH`

- `HEADCRASH:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

### SMACKDOWN

`classes.battle.skills.moves.heavy.SMACKDOWN`

- returns `t`, uses coroutines
- requires: `classes.battle.skills.skills.heavy.SMACKDOWN`

- `SMACKDOWN:new(_activeMonsterSprite, _targetMonsterSprites, _target)`

<details><summary>Instance / other functions (1)</summary>

- `skill:executeAnimation(_continue, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _actualTargetMonsterSprites, _onComplete)`

</details>

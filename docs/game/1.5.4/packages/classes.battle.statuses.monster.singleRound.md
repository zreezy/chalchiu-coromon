# classes.battle.statuses.monster.singleRound

Coromon 1.5.4. 6 module(s). [Back to index](../README.md)

[abstractCurrentRoundMonsterSpriteStatus](#abstractcurrentroundmonsterspritestatus), [abstractCurrentTurnMonsterSpriteStatus](#abstractcurrentturnmonsterspritestatus), [darkCoatStatus](#darkcoatstatus), [lastStandStatus](#laststandstatus), [ninjaStanceStatus](#ninjastancestatus), [skillPowerBoostStatus](#skillpowerbooststatus)

### abstractCurrentRoundMonsterSpriteStatus

`classes.battle.statuses.monster.singleRound.abstractCurrentRoundMonsterSpriteStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `abstractCurrentRoundMonsterSpriteStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`

</details>

### abstractCurrentTurnMonsterSpriteStatus

`classes.battle.statuses.monster.singleRound.abstractCurrentTurnMonsterSpriteStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `abstractCurrentTurnMonsterSpriteStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (1)</summary>

- `effect:onAfterTurn(_onComplete, _executedMove)`

</details>

### darkCoatStatus

`classes.battle.statuses.monster.singleRound.darkCoatStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.singleRound.abstractCurrentRoundMonsterSpriteStatus`

- `darkCoatStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (4)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### lastStandStatus

`classes.battle.statuses.monster.singleRound.lastStandStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.singleRound.abstractCurrentRoundMonsterSpriteStatus`

- `lastStandStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:mutateDamagePriority()`
- `effect:mutateDamage(_monster, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### ninjaStanceStatus

`classes.battle.statuses.monster.singleRound.ninjaStanceStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.singleRound.abstractCurrentRoundMonsterSpriteStatus`

- `ninjaStanceStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (4)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### skillPowerBoostStatus

`classes.battle.statuses.monster.singleRound.skillPowerBoostStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.singleRound.abstractCurrentTurnMonsterSpriteStatus`

- `skillPowerBoostStatus:new(_monsterSprite, _skillData)`

<details><summary>Instance / other functions (3)</summary>

- `effect:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

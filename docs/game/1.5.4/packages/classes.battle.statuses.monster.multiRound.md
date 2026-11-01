# classes.battle.statuses.monster.multiRound

Coromon 1.5.4. 16 module(s). [Back to index](../README.md)

[abstractMultiRoundMonsterSpriteStatus](#abstractmultiroundmonsterspritestatus), [berserkStatus](#berserkstatus), [blockHealStatus](#blockhealstatus), [blockNegativeStatBoostStatus](#blocknegativestatbooststatus), [blockNonDamagingSkillStatus](#blocknondamagingskillstatus), [blockNonMostRecentSkillStatus](#blocknonmostrecentskillstatus), [blockStatusStatus](#blockstatusstatus), [frigidBarrierStatus](#frigidbarrierstatus), [neutralizedStatus](#neutralizedstatus), [reflectDamageStatus](#reflectdamagestatus), [regurgitatingStatus](#regurgitatingstatus), [repeatMostRecentSkillStatus](#repeatmostrecentskillstatus), [staticFurStatus](#staticfurstatus), [stayingFrostyStatus](#stayingfrostystatus), [sumoStanceStatus](#sumostancestatus), [trappedStatus](#trappedstatus)

### abstractMultiRoundMonsterSpriteStatus

`classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `abstractMultiRoundMonsterSpriteStatus:new(_class, _statusMonsterSprite, _rounds)`

<details><summary>Instance / other functions (9)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:onMultiRoundMonsterSpriteStatusEnded(_removeStatus)`
- `effect:getRoundsRemaining()`
- `effect:getRoundsActive()`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:onRemoveText()`
- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:doRemoveWithText(_onComplete)`

</details>

### berserkStatus

`classes.battle.statuses.monster.multiRound.berserkStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `berserkStatus:new(_berserkingMonsterSprite, _targetMonsterSprite)`

<details><summary>Instance / other functions (7)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `effect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### blockHealStatus

`classes.battle.statuses.monster.multiRound.blockHealStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `blockHealStatus:new(_statusMonsterSprite, _amountOfRounds)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:mutateHeal(_monster, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### blockNegativeStatBoostStatus

`classes.battle.statuses.monster.multiRound.blockNegativeStatBoostStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `blockNegativeStatBoostStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### blockNonDamagingSkillStatus

`classes.battle.statuses.monster.multiRound.blockNonDamagingSkillStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `blockNonDamagingSkillStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:shouldBlockSkill(_monsterSprite, _skillData)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### blockNonMostRecentSkillStatus

`classes.battle.statuses.monster.multiRound.blockNonMostRecentSkillStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `blockNonMostRecentSkillStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (7)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:onBeforeApplyMessage()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:shouldBlockSkill(_monsterSprite, _skillData)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### blockStatusStatus

`classes.battle.statuses.monster.multiRound.blockStatusStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `blockStatusStatus:new(_statusMonsterSprite, _statusClass)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### frigidBarrierStatus

`classes.battle.statuses.monster.multiRound.frigidBarrierStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `frigidBarrierStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### neutralizedStatus

`classes.battle.statuses.monster.multiRound.neutralizedStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `neutralizedStatus:new(_neutralizingMonsterSprite, _neutralizedMonsterSprite)`

<details><summary>Instance / other functions (8)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:onBeforeApplyMessage()`
- `effect:onIgnoreBattleEffects(_battleEffects)`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`
- `effect:doRemoveWithText(_onComplete)`

</details>

### reflectDamageStatus

`classes.battle.statuses.monster.multiRound.reflectDamageStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `reflectDamageStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### regurgitatingStatus

`classes.battle.statuses.monster.multiRound.regurgitatingStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `regurgitatingStatus:new(_regurgitatingMonsterSprite, _fruit, _amountOfRounds)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:onMultiRoundMonsterSpriteStatusEnded(_removeStatus)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### repeatMostRecentSkillStatus

`classes.battle.statuses.monster.multiRound.repeatMostRecentSkillStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `repeatMostRecentSkillStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (7)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:onBeforeApplyMessage()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:shouldBlockSkill(_monsterSprite, _skillData)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### staticFurStatus

`classes.battle.statuses.monster.multiRound.staticFurStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `staticFurStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (7)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onAfterPartialSkillMovePriority()`
- `effect:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### stayingFrostyStatus

`classes.battle.statuses.monster.multiRound.stayingFrostyStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `stayingFrostyStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### sumoStanceStatus

`classes.battle.statuses.monster.multiRound.sumoStanceStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `sumoStanceStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### trappedStatus

`classes.battle.statuses.monster.multiRound.trappedStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `trappedStatus:new(_trappingMonsterSprite, _trappedMonsterSprite)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getFullMultiRoundMonsterSpriteStatusAIScore()`
- `effect:mutateAIScore(_monsterSprite, _move, _score)`
- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onBeforePlayerEscapeButtonMessage()`
- `effect:onBeforePlayerSwitchMonsterButtonMessage()`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

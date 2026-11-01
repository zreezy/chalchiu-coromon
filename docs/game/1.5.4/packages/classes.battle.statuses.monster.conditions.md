# classes.battle.statuses.monster.conditions

Coromon 1.5.4. 16 module(s). [Back to index](../README.md)

[abstractCondition](#abstractcondition), [abstractConditionStatus](#abstractconditionstatus), [burnCondition](#burncondition), [burnConditionStatus](#burnconditionstatus), [curseCondition](#cursecondition), [curseConditionStatus](#curseconditionstatus), [drowsyCondition](#drowsycondition), [drowsyConditionStatus](#drowsyconditionstatus), [freezeCondition](#freezecondition), [freezeConditionStatus](#freezeconditionstatus), [hazyCondition](#hazycondition), [hazyConditionStatus](#hazyconditionstatus), [poisonCondition](#poisoncondition), [poisonConditionStatus](#poisonconditionstatus), [shockCondition](#shockcondition), [shockConditionStatus](#shockconditionstatus)

### abstractCondition

`classes.battle.statuses.monster.conditions.abstractCondition`

- returns `t`
- requires: `classes.battle.abstractMonsterBattleEffect`

- `abstractCondition:new(_monster, _condition, _conditionConstructor)`

<details><summary>Instance / other functions (22)</summary>

- `condition:createConditionStatus(_monsterSprite)`
- `condition:canApply()`
- `condition:tryApply()`
- `condition:doRemove()`
- `condition:onApplyText()`
- `condition:onRemoveText()`
- `condition:increasePersistentCounter()`
- `condition:getPersistentCounter()`
- `condition:optionallyRemoveCondition(_onComplete)`
- `condition:onAfterParticipantWonPriority()`
- `condition:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`
- `condition:onAfterParticipantEscaped(_onComplete, _escapedParticipant)`
- `condition:getClassPath()`
- `condition:getConditionUID()`
- `condition:getConditionStatusUID()`
- `condition:getConditionName()`
- `condition:getName()`
- `condition:getConstructor()`
- `condition:onBeforeRoundPriority()`
- `condition:onBeforeRound(_onComplete, _battleEffects)`
- `condition:onAfterMonsterSpriteSpawnedPriority()`
- `condition:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`

</details>

### abstractConditionStatus

`classes.battle.statuses.monster.conditions.abstractConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `abstractConditionStatus:new(_monsterSprite, _conditionUID)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:getConditionFromMonster()`
- `effect:createCondition()`
- `effect:onBeforeApplyMessage()`
- `effect:onApplyText()`
- `effect:onRemoveText()`
- `effect:forceApplyOnSpawn(_onComplete)`
- `effect:doRemoveWithText(_onComplete)`
- `effect:onRegister()`
- `effect:onUnregister()`

</details>

### burnCondition

`classes.battle.statuses.monster.conditions.burnCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `burnCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (2)</summary>

- `condition:createConditionStatus(_monsterSprite)`
- `condition:canApply()`

</details>

### burnConditionStatus

`classes.battle.statuses.monster.conditions.burnConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `burnConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `condition:createCondition()`
- `condition:mutateStat(_monsterSprite, _statUID, _statValue)`
- `condition:doBurnIndicationEffect(_onComplete)`
- `condition:onAfterRoundPriority()`
- `condition:onAfterRound(_onComplete)`
- `condition:onApplyEffect(_onComplete)`

</details>

### curseCondition

`classes.battle.statuses.monster.conditions.curseCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `curseCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (2)</summary>

- `condition:createConditionStatus(_monsterSprite)`
- `condition:canApply()`

</details>

### curseConditionStatus

`classes.battle.statuses.monster.conditions.curseConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `curseConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `condition:createCondition()`
- `condition:mutateStatBoostStatusPriority()`
- `condition:mutateStatBoostStatus(_statBoostStatus)`
- `condition:doCurseIndicationEffect(_onComplete)`
- `condition:onApplyEffect(_onComplete)`

</details>

### drowsyCondition

`classes.battle.statuses.monster.conditions.drowsyCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `drowsyCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (1)</summary>

- `condition:createConditionStatus(_monsterSprite)`

</details>

### drowsyConditionStatus

`classes.battle.statuses.monster.conditions.drowsyConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `drowsyConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (9)</summary>

- `condition:createCondition()`
- `condition:mutateStat(_monsterSprite, _statUID, _statValue)`
- `condition:shouldCriticalHitPriority(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `condition:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `condition:onAfterRoundPriority()`
- `condition:onAfterRound(_onComplete)`
- `condition:onApplyEffect(_onComplete)`
- `condition:onRegister()`
- `condition:onUnregister()`

</details>

### freezeCondition

`classes.battle.statuses.monster.conditions.freezeCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `freezeCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (2)</summary>

- `condition:createConditionStatus(_monsterSprite)`
- `condition:canApply()`

</details>

### freezeConditionStatus

`classes.battle.statuses.monster.conditions.freezeConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `freezeConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (12)</summary>

- `condition:createCondition()`
- `condition:mutateStat(_monsterSprite, _statUID, _statValue)`
- `condition:doFreezeIndicationEffect(_onComplete)`
- `condition:onBeforeTurnPriority(_preparedMove)`
- `condition:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `condition:mutateMovePriorityPriority()`
- `condition:mutateMovePriority(_preparedMove, _monsterSprite, _value)`
- `condition:getMainActionButtonReplacementPriority()`
- `condition:getMainActionButtonReplacement(_monsterSprite)`
- `condition:onApplyEffect(_onComplete)`
- `condition:onRegister()`
- `condition:onUnregister()`

</details>

### hazyCondition

`classes.battle.statuses.monster.conditions.hazyCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `hazyCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (1)</summary>

- `condition:createConditionStatus(_monsterSprite)`

</details>

### hazyConditionStatus

`classes.battle.statuses.monster.conditions.hazyConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `hazyConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (7)</summary>

- `condition:createCondition()`
- `condition:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `condition:mutateEnergyCostPriority()`
- `condition:mutateEnergyCost(_skillData, _monster, _value)`
- `condition:onAfterRoundPriority()`
- `condition:onAfterRound(_onComplete)`
- `condition:onApplyEffect(_onComplete)`

</details>

### poisonCondition

`classes.battle.statuses.monster.conditions.poisonCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `poisonCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (2)</summary>

- `condition:createConditionStatus(_monsterSprite)`
- `condition:canApply()`

</details>

### poisonConditionStatus

`classes.battle.statuses.monster.conditions.poisonConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `poisonConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `condition:createCondition()`
- `condition:mutateStat(_monsterSprite, _statUID, _statValue)`
- `condition:doPoisonIndicationEffect(_onComplete)`
- `condition:onAfterRoundPriority()`
- `condition:onAfterRound(_onComplete)`
- `condition:onApplyEffect(_onComplete)`

</details>

### shockCondition

`classes.battle.statuses.monster.conditions.shockCondition`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractCondition`

- `shockCondition:new(_monster, _conditionConstructor)`

<details><summary>Instance / other functions (2)</summary>

- `condition:createConditionStatus(_monsterSprite)`
- `condition:canApply()`

</details>

### shockConditionStatus

`classes.battle.statuses.monster.conditions.shockConditionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.conditions.abstractConditionStatus`

- `shockConditionStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (13)</summary>

- `condition:createCondition()`
- `condition:mutateStat(_monsterSprite, _statUID, _statValue)`
- `condition:startShockIndicationEffect(_onComplete)`
- `condition:stopShockIndicationEffect(_onComplete)`
- `condition:onBeforeRoundPriority()`
- `condition:onBeforeRound(_onComplete, _battleEffects)`
- `condition:onBeforeTurnPriority(_preparedMove)`
- `condition:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `condition:mutateMovePriorityPriority()`
- `condition:mutateMovePriority(_preparedMove, _monsterSprite, _value)`
- `condition:getMainActionButtonReplacementPriority()`
- `condition:getMainActionButtonReplacement(_monsterSprite)`
- `condition:onApplyEffect(_onComplete)`

</details>

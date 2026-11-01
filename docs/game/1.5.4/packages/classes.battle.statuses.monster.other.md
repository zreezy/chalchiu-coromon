# classes.battle.statuses.monster.other

Coromon 1.5.4. 19 module(s). [Back to index](../README.md)

[bleedingStatus](#bleedingstatus), [chargingStatus](#chargingstatus), [delayedPoisonStatus](#delayedpoisonstatus), [electrifiedStatus](#electrifiedstatus), [feelersStatus](#feelersstatus), [finalGiftStatus](#finalgiftstatus), [firedUpStatus](#firedupstatus), [forceRemoveStatus](#forceremovestatus), [fruitXpBoostStatus](#fruitxpbooststatus), [gravityPullStatus](#gravitypullstatus), [increaseEnergyCostStatus](#increaseenergycoststatus), [kindredSoulStatus](#kindredsoulstatus), [knockdownStatus](#knockdownstatus), [overclockerStatus](#overclockerstatus), [premonitionStatus](#premonitionstatus), [rechargingStatus](#rechargingstatus), [sharedFateStatus](#sharedfatestatus), [statBoostStatus](#statbooststatus), [superKnockdownStatus](#superknockdownstatus)

### bleedingStatus

`classes.battle.statuses.monster.other.bleedingStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `bleedingStatus:new(_monsterSprite, _isHeavy)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### chargingStatus

`classes.battle.statuses.monster.other.chargingStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `chargingStatus:new(_monsterSprite, _skillData, _optionalTargetMonsterSprite)`

<details><summary>Instance / other functions (4)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### delayedPoisonStatus

`classes.battle.statuses.monster.other.delayedPoisonStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `delayedPoisonStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:getMonsterSpriteStatusAIScore()`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### electrifiedStatus

`classes.battle.statuses.monster.other.electrifiedStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `electrifiedStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:getMonsterSpriteStatusAIScore()`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### feelersStatus

`classes.battle.statuses.monster.other.feelersStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `feelersStatus:new(_feelingMonsterSprite, _feltMonsterSprite)`

<details><summary>Instance / other functions (9)</summary>

- `effect:getFeelingMonsterSprite()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldCriticalHitPriority(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### finalGiftStatus

`classes.battle.statuses.monster.other.finalGiftStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `finalGiftStatus:new(_monsterSprite, _targetMonsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### firedUpStatus

`classes.battle.statuses.monster.other.firedUpStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `firedUpStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:getMonsterSpriteStatusAIScore()`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### forceRemoveStatus

`classes.battle.statuses.monster.other.forceRemoveStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `forceRemoveStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:onBeforeApplyMessage()`
- `effect:shouldBlockSpawn(_monsterSpriteToSpawn)`
- `effect:onBeforeRound(_onComplete, _battleEffects)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### fruitXpBoostStatus

`classes.battle.statuses.monster.other.fruitXpBoostStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `fruitXpBoostStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (3)</summary>

- `effect:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### gravityPullStatus

`classes.battle.statuses.monster.other.gravityPullStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `gravityPullStatus:new(_monsterSpriteWithMass, _gravityPulledMonsterSprite, _energyPercentageLostEveryTurn)`

<details><summary>Instance / other functions (10)</summary>

- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:getMonsterSpriteStatusAIScore()`
- `effect:mutateAIScore(_monsterSprite, _move, _score)`
- `effect:onBeforePlayerEscapeButtonMessage()`
- `effect:onBeforePlayerSwitchMonsterButtonMessage()`
- `effect:onBeforeRoundPriority()`
- `effect:onBeforeRound(_onComplete, _battleEffects)`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### increaseEnergyCostStatus

`classes.battle.statuses.monster.other.increaseEnergyCostStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `increaseEnergyCostStatus:new(_monsterSprite, _increasedEnergyCost)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getIncreasedEnergyCost()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:mutateEnergyCost(_skillData, _monster, _value)`
- `effect:onBeforeApplyMonsterSpriteStatus(_onSkipMonsterSpriteStatus, _onComplete, _monsterSprite, _status)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### kindredSoulStatus

`classes.battle.statuses.monster.other.kindredSoulStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `kindredSoulStatus:new(_monsterSprite, _enemyMonsterSprite, _statDelta)`

<details><summary>Instance / other functions (3)</summary>

- `effect:mutateBaseStat(_monster, _statUID, _statValue)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### knockdownStatus

`classes.battle.statuses.monster.other.knockdownStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `knockdownStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onBeforeTurnPriority(_preparedMove)`
- `effect:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `effect:mutateMovePriorityPriority()`
- `effect:mutateMovePriority(_preparedMove, _monsterSprite, _value)`
- `effect:getMainActionButtonReplacementPriority()`
- `effect:getMainActionButtonReplacement(_monsterSprite)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### overclockerStatus

`classes.battle.statuses.monster.other.overclockerStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `overclockerStatus:new(_monsterSprite, _enemyMonsterSprite, _targetStatValue)`

<details><summary>Instance / other functions (4)</summary>

- `effect:mutateStatPriority()`
- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### premonitionStatus

`classes.battle.statuses.monster.other.premonitionStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `premonitionStatus:new(_targetMonsterSprite, _activeMonsterSprite)`

<details><summary>Instance / other functions (8)</summary>

- `effect:getActiveMonsterSprite()`
- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:doShadeWalkerAnimationFromOtherSide(_onComplete)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### rechargingStatus

`classes.battle.statuses.monster.other.rechargingStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.multiRound.abstractMultiRoundMonsterSpriteStatus`

- `rechargingStatus:new(_monsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`
- `effect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`
- `effect:onRemoveText()`

</details>

### sharedFateStatus

`classes.battle.statuses.monster.other.sharedFateStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `sharedFateStatus:new(_monsterSprite, _targetMonsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### statBoostStatus

`classes.battle.statuses.monster.other.statBoostStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `statBoostStatus:new(_canReflectToMonsterSprite, _monsterSprite, _statBoostStatUID, _statBoostAmount)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:getMonsterSpriteToReflectTo()`
- `effect:getStat()`
- `effect:getAmount()`
- `effect:setAmount(_newAmount)`
- `effect:onBeforeApplyMessage()`
- `effect:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `effect:onRegister()`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

### superKnockdownStatus

`classes.battle.statuses.monster.other.superKnockdownStatus`

- returns `t`
- requires: `classes.battle.statuses.monster.abstractMonsterSpriteStatus`

- `superKnockdownStatus:new(_statusMonsterSprite)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getMonsterSpriteStatusAIScore()`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:onBeforeTurnPriority(_preparedMove)`
- `effect:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `effect:mutateMovePriorityPriority()`
- `effect:mutateMovePriority(_preparedMove, _monsterSprite, _value)`
- `effect:getMainActionButtonReplacementPriority()`
- `effect:getMainActionButtonReplacement(_monsterSprite)`
- `effect:onApplyEffect(_onComplete)`
- `effect:onApplyText()`

</details>

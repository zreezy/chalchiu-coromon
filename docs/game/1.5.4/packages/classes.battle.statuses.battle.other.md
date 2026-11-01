# classes.battle.statuses.battle.other

Coromon 1.5.4. 9 module(s). [Back to index](../README.md)

[abstractBattleStatus](#abstractbattlestatus), [abstractMultiRoundBattleStatus](#abstractmultiroundbattlestatus), [iceWallStatus](#icewallstatus), [mysticMeshStatus](#mysticmeshstatus), [pollutedStatus](#pollutedstatus), [rockWallStatus](#rockwallstatus), [rubberWebStatus](#rubberwebstatus), [sparkWallStatus](#sparkwallstatus), [spectralLatticeStatus](#spectrallatticestatus)

### abstractBattleStatus

`classes.battle.statuses.battle.other.abstractBattleStatus`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `abstractBattleStatus:new(_team)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getOppositeTeam()`
- `effect:getTeam()`
- `effect:setTeam(_newTeam)`
- `effect:onApply(_onComplete)`
- `effect:getBattleStatusAIScore()`
- `effect:onRemoveText()`
- `effect:canApply()`
- `effect:tryToApply(_optionsOrOnComplete, _onComplete)`
- `effect:doInstantRemove()`
- `effect:doRemoveWithText(_onComplete)`

</details>

### abstractMultiRoundBattleStatus

`classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractBattleStatus`

- `abstractMultiRoundBattleStatus:new(_originalTeam, _amountOfRounds)`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`

</details>

### iceWallStatus

`classes.battle.statuses.battle.other.iceWallStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- `iceWallStatus:new(_originalTeam)`

<details><summary>Instance / other functions (6)</summary>

- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:getBattleStatusAIScore()`
- `effect:onAfterPartialSkillMovePriority()`
- `effect:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

### mysticMeshStatus

`classes.battle.statuses.battle.other.mysticMeshStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- `mysticMeshStatus:new(_originalTeam)`

<details><summary>Instance / other functions (6)</summary>

- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:getBattleStatusAIScore()`
- `effect:mutateStatBoostStatusPriority()`
- `effect:mutateStatBoostStatus(_statBoostStatus)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

### pollutedStatus

`classes.battle.statuses.battle.other.pollutedStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractBattleStatus`

- `pollutedStatus:new(_pollutingMonsterSprite)`

<details><summary>Instance / other functions (9)</summary>

- `effect:getPollutingMonsterSprite()`
- `effect:getPollutingMonsterSpriteTraitEnhancementStage()`
- `effect:getBattleStatusAIScore()`
- `effect:shouldBlockFruitConsumption(_fruit, _monsterSprite)`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

### rockWallStatus

`classes.battle.statuses.battle.other.rockWallStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- `rockWallStatus:new(_originalTeam)`

<details><summary>Instance / other functions (6)</summary>

- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:getBattleStatusAIScore()`
- `effect:onBeforeTurnPriority(_preparedMove)`
- `effect:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

### rubberWebStatus

`classes.battle.statuses.battle.other.rubberWebStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- `rubberWebStatus:new(_originalTeam)`

<details><summary>Instance / other functions (5)</summary>

- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:getBattleStatusAIScore()`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

### sparkWallStatus

`classes.battle.statuses.battle.other.sparkWallStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- `sparkWallStatus:new(_originalTeam)`

<details><summary>Instance / other functions (6)</summary>

- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:getBattleStatusAIScore()`
- `effect:onAfterPartialSkillMovePriority()`
- `effect:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

### spectralLatticeStatus

`classes.battle.statuses.battle.other.spectralLatticeStatus`

- returns `t`
- requires: `classes.battle.statuses.battle.other.abstractMultiRoundBattleStatus`

- `spectralLatticeStatus:new(_originalTeam)`

<details><summary>Instance / other functions (5)</summary>

- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:getBattleStatusAIScore()`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onApply(_onComplete)`
- `effect:onRemoveText()`

</details>

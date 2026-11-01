# classes.battle.statuses.battle.entryHazards

Coromon 1.5.4. 13 module(s). [Back to index](../README.md)

[abstractBlessedEmpoweringOrPurifyingGrounds](#abstractblessedempoweringorpurifyinggrounds), [abstractCursedOrHauntedGroundsEntryHazard](#abstractcursedorhauntedgroundsentryhazard), [abstractEntryHazard](#abstractentryhazard), [blazingCoalsEntryHazard](#blazingcoalsentryhazard), [blessedGroundsEntryHazard](#blessedgroundsentryhazard), [cursedGroundsEntryHazard](#cursedgroundsentryhazard), [electroMinesEntryHazard](#electrominesentryhazard), [empoweringGroundsEntryHazard](#empoweringgroundsentryhazard), [hauntedGroundsEntryHazard](#hauntedgroundsentryhazard), [icyNailsEntryHazard](#icynailsentryhazard), [purifyingGroundsEntryHazard](#purifyinggroundsentryhazard), [sandSkewersEntryHazard](#sandskewersentryhazard), [spikeTrapEntryHazard](#spiketrapentryhazard)

### abstractBlessedEmpoweringOrPurifyingGrounds

`classes.battle.statuses.battle.entryHazards.abstractBlessedEmpoweringOrPurifyingGrounds`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `abstractBlessedEmpoweringOrPurifyingGrounds:new(_originalTeam, _class)`

<details><summary>Instance / other functions (8)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onAfterMonsterSpriteSpawnedApplyEntryHazard(_monsterSprite, _onComplete)`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

### abstractCursedOrHauntedGroundsEntryHazard

`classes.battle.statuses.battle.entryHazards.abstractCursedOrHauntedGroundsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `abstractCursedOrHauntedGroundsEntryHazard:new(_originalTeam, _class, _type)`

<details><summary>Instance / other functions (7)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

### abstractEntryHazard

`classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `abstractEntryHazard:new(_team, _class, _type, _maxAmountOfStacks)`

<details><summary>Instance / other functions (19)</summary>

- `entryHazard:getType()`
- `entryHazard:getOppositeTeam()`
- `entryHazard:getTeam()`
- `entryHazard:isTargetingPlayer()`
- `entryHazard:isTargetingEnemy()`
- `entryHazard:isTargetTeam(_monsterSpriteTeam)`
- `entryHazard:setTeam(_newTeam)`
- `entryHazard:adjustHealthByPercentageNonFatal(_monsterSprite, _percentage)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:increaseAmountOfTimesStacked()`
- `entryHazard:getAmountOfTimesStacked()`
- `entryHazard:getAmountOfTimesStackedInBattle()`
- `entryHazard:canApply()`
- `entryHazard:tryToApply(_optionsOrOnComplete, _onComplete)`
- `entryHazard:isRemoved()`
- `entryHazard:doRemove(_onComplete)`

</details>

### blazingCoalsEntryHazard

`classes.battle.statuses.battle.entryHazards.blazingCoalsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `blazingCoalsEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (10)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onAfterApplyWeatherEffectPriority()`
- `entryHazard:onAfterApplyWeatherEffect(_onComplete, _weatherEffect)`
- `entryHazard:canApply()`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

### blessedGroundsEntryHazard

`classes.battle.statuses.battle.entryHazards.blessedGroundsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractBlessedEmpoweringOrPurifyingGrounds`

- `blessedGroundsEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (1)</summary>

- `entryHazard:onAfterMonsterSpriteSpawnedApplyEntryHazard(_monsterSprite, _onComplete)`

</details>

### cursedGroundsEntryHazard

`classes.battle.statuses.battle.entryHazards.cursedGroundsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractCursedOrHauntedGroundsEntryHazard`

- `cursedGroundsEntryHazard:new(_originalTeam)`

### electroMinesEntryHazard

`classes.battle.statuses.battle.entryHazards.electroMinesEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `electroMinesEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (7)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

### empoweringGroundsEntryHazard

`classes.battle.statuses.battle.entryHazards.empoweringGroundsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractBlessedEmpoweringOrPurifyingGrounds`

- `empoweringGroundsEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (1)</summary>

- `entryHazard:onAfterMonsterSpriteSpawnedApplyEntryHazard(_monsterSprite, _onComplete)`

</details>

### hauntedGroundsEntryHazard

`classes.battle.statuses.battle.entryHazards.hauntedGroundsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractCursedOrHauntedGroundsEntryHazard`

- `hauntedGroundsEntryHazard:new(_originalTeam)`

### icyNailsEntryHazard

`classes.battle.statuses.battle.entryHazards.icyNailsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `icyNailsEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (7)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

### purifyingGroundsEntryHazard

`classes.battle.statuses.battle.entryHazards.purifyingGroundsEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractBlessedEmpoweringOrPurifyingGrounds`

- `purifyingGroundsEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (1)</summary>

- `entryHazard:onAfterMonsterSpriteSpawnedApplyEntryHazard(_monsterSprite, _onComplete)`

</details>

### sandSkewersEntryHazard

`classes.battle.statuses.battle.entryHazards.sandSkewersEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `sandSkewersEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (7)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

### spikeTrapEntryHazard

`classes.battle.statuses.battle.entryHazards.spikeTrapEntryHazard`

- returns `t`
- requires: `classes.battle.statuses.battle.entryHazards.abstractEntryHazard`

- `spikeTrapEntryHazard:new(_originalTeam)`

<details><summary>Instance / other functions (7)</summary>

- `entryHazard:getEntryHazardAIScore()`
- `entryHazard:onBeforeSpawnTrainerMonsterSprite(_onComplete, _monsterSprite)`
- `entryHazard:doRemoveOptionallySpawnedEffects()`
- `entryHazard:onAfterMonsterSpriteSpawnedPriority()`
- `entryHazard:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `entryHazard:onApply(_onComplete)`
- `entryHazard:onRemove(_onComplete)`

</details>

# classes.battle.statuses.battle.weatherEffects

Coromon 1.5.4. 8 module(s). [Back to index](../README.md)

[abstractWeatherEffect](#abstractweathereffect), [crimsoniteWeatherEffect](#crimsoniteweathereffect), [heatwaveWeatherEffect](#heatwaveweathereffect), [rainWeatherEffect](#rainweathereffect), [sandstormWeatherEffect](#sandstormweathereffect), [snowWeatherEffect](#snowweathereffect), [staticHazeWeatherEffect](#statichazeweathereffect), [twilightWeatherEffect](#twilightweathereffect)

### abstractWeatherEffect

`classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `abstractWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (23)</summary>

- `effect:getWeatherEffectAIScore(_team, _oppositeTeam)`
- `effect:getWeatherEffectClass()`
- `effect:getWeatherEffectUID()`
- `effect:getAccentColor()`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:decreaseRoundsIfNecessary(_onComplete)`
- `effect:shouldBlockWeatherEffect(_weatherEffect)`
- `effect:canApply()`
- `effect:tryToApply(_optionsOrOnComplete, _onComplete)`
- `effect:canBeRemoved()`
- `effect:tryRemove(_onComplete)`
- `effect:forceRemove(_onComplete)`
- `effect:getWeatherEffectDescription()`
- `effect:getWeatherEffectOnApplyText()`
- `effect:getWeatherEffectTitle()`
- `effect:getRemainingRounds()`
- `effect:getWeatherEffectIndicator()`
- `effect:createWeatherEffectIcon(_parent, _optionalIsHover)`
- `effect:spawnWeatherEffectIndicator(_onComplete)`
- `weatherEffectIndicator:setHovered(_isHovered)`
- `effect:destroyWeatherEffectIndicator(_onComplete)`

</details>

### crimsoniteWeatherEffect

`classes.battle.statuses.battle.weatherEffects.crimsoniteWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `crimsoniteWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (9)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:onAfterRoundPerMonster(_monsterSprite, _onComplete)`
- `effect:spawnCrimsoniteGlow(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

### heatwaveWeatherEffect

`classes.battle.statuses.battle.weatherEffects.heatwaveWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `heatwaveWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (12)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:optionallyRemoveFreezeConditions(_onComplete)`
- `effect:shouldBlockCondition(_monster, _condition)`
- `effect:mutateEnergyCost(_skillData, _monster, _value)`
- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`
- `effect:spawnHeatwave(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

### rainWeatherEffect

`classes.battle.statuses.battle.weatherEffects.rainWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `rainWeatherEffect:spawnRain(_repeat, _path, _onComplete)`
- `rainWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (12)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:shouldBlockCondition(_monster, _condition)`
- `effect:mutateSkillPowerPriority()`
- `effect:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:optionallySpawnRain(_repeat, _path, _onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

### sandstormWeatherEffect

`classes.battle.statuses.battle.weatherEffects.sandstormWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `sandstormWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (9)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `effect:spawnSandstorm(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

### snowWeatherEffect

`classes.battle.statuses.battle.weatherEffects.snowWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `snowWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:onAfterRoundPerMonster(_monsterSprite, _onComplete)`
- `effect:spawnSnow(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

### staticHazeWeatherEffect

`classes.battle.statuses.battle.weatherEffects.staticHazeWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `staticHazeWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:shouldBlockWeatherEffect(_weatherEffect)`
- `effect:canBeRemoved()`
- `effect:mutateEnergyCost(_skillData, _monster, _value)`
- `effect:spawnStaticHaze(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

### twilightWeatherEffect

`classes.battle.statuses.battle.weatherEffects.twilightWeatherEffect`

- returns `t`
- requires: `classes.battle.statuses.battle.weatherEffects.abstractWeatherEffect`

- `twilightWeatherEffect:new(_optionalSource, _optionalTurns)`

<details><summary>Instance / other functions (11)</summary>

- `effect:getWeatherEffectClass()`
- `effect:getAccentColor()`
- `effect:getWeatherEffectAIScoreForTeam(_team)`
- `effect:mutateStatBoostStatusPriority()`
- `effect:mutateStatBoostStatus(_statBoostStatus)`
- `effect:shouldPreventMakingContact(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:onAfterRoundPriority()`
- `effect:onAfterRound(_onComplete)`
- `effect:spawnTwilight(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

# classes.battle.skills

Coromon 1.5.4. 1 module(s). [Back to index](../README.md)

[abstractSkill](#abstractskill)

### abstractSkill

`classes.battle.skills.abstractSkill`

- returns `t`
- requires: `classes.battle.moves.AIScore`, `classes.battle.abstractBattleEffect`

- `abstractSkill:new()`

<details><summary>Instance / other functions (49)</summary>

- `skill:isBlockedForAI()`
- `skill:shouldTargetFaintedMonster()`
- `skill:canBeInstalledAsSkillFlashOn(_monsterData, _monsterPrimaryType, _monsterSecondaryType)`
- `skill:canBeInstalledAsSkillFlashOnMonster(_monster)`
- `skill:isDamage(_optionalType)`
- `skill:canCriticalHit()`
- `skill:canGetAffectedByTypeEffectiveness()`
- `skill:getMutatedEnergyCost(_monster)`
- `skill:getMutatedPower(_fromMonsterSprite, _toMonsterSprite)`
- `skill:getMutatedStrikes(_fromMonsterSprite)`
- `skill:willMakeContact(_fromMonsterSprite, _toMonsterSprite)`
- `skill:getPriorityInBattle(_fromMonsterSprite)`
- `skill:normaliseWithAccuracyIfReducedRandomness(_power)`
- `skill:getPowerWithOptionallyReducedRandomness()`
- `skill:getPowerMinWithOptionallyReducedRandomness()`
- `skill:getPowerMaxWithOptionallyReducedRandomness()`
- `skill:clampPowerWithOptionallyReducedRandomness(_power)`
- `skill:getAccuracyWithOptionallyReducedRNG()`
- `skill:getStrikesWithOptionallyReducedRNG()`
- `skill:calculateMaxTurnsUntilSideEffect()`
- `skill:isAtMaxSideEffectTurn(_activeMonsterSprite)`
- `skill:shouldTriggerSideEffect(_activeMonsterSprite)`
- `skill:getName()`
- `skill:getNameWithTypeColor()`
- `skill:getDescription()`
- `skill:getShortDescription()`
- `skill:isPhysicalDamage()`
- `skill:isSpecialDamage()`
- `skill:isStatus()`
- `skill:createIcon(_parent)`
- `skill:loadSounds()`
- `skill:unloadSounds()`
- `skill:getRequiredSounds()`
- `skill:createSkillMoveObject(_monsterSprite, skillTargetMonsterSprites, _optionalTargetMonsterSprite)`
- `skill:getValidTargetMonsterSprites(_activeMonsterSprite)`
- `skill:getValidTargetedMonsterSprites(_activeMonsterSprite, _targetData, _targetTeam, _targetIndex)`
- `skill:isValidTargetMonsterSprite(_monsterSprite)`
- `skill:getPriority(_activeMonsterSprite, _targetMonsterSprites)`
- `skill:calculateCriticalHitChance(_fromMonsterSprite, _toMonsterSprite)`
- `skill:calculateCriticalHitCharge(_fromMonsterSprite)`
- `skill:getShouldMissChance(_fromMonsterSprite, _toMonsterSprite)`
- `skill:getMutatedShouldMissChance(_fromMonsterSprite, _toMonsterSprite)`
- `skill:rollMutatedAndClampedDamage(_activeMonsterSprite, _targetMonsterSprite, _willCriticalHit)`
- `skill:rollDamage(_activeMonsterSprite, _targetMonsterSprite, _willCriticalHit)`
- `skill:mutateStatBoostStagePriority()`
- `skill:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `skill:getAIScore(_activeMonsterSprite, _targetedMonsterSprites)`
- `skill:onAIScore(_activeMonsterSprite, _targetedMonsterSprites, _score)`
- `skill:onAIScorePerTarget(_activeMonsterSprite, _targetedMonsterSprite, _score)`

</details>

# classes.battle.BattleEffect

Coromon 1.5.4. 1 module(s). [Back to index](../README.md)

[def](#def)

### def

`classes.battle.BattleEffect.def`

<details><summary>Functions (111)</summary>

- `effect:shouldForceCatch(_monsterSprite)`
- `effect:mutateAmountOfMonsterRolls(_value)`
- `effect:mutateAmountOfPotentialRolls(_value)`
- `effect:mutateAmountOfSwampMushroomsHarvested(_swampMushroom, _value)`
- `effect:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`
- `effect:mutateTrainerBattleGoldBounty(_payingParticipant, _value)`
- `effect:onEnterBattle(_onComplete)`
- `effect:onEnterBattlePriority()`
- `effect:onBeforeRound(_onComplete, _battleEffects)`
- `effect:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `effect:onBeforeTurnPriority(_preparedMove)`
- `effect:onBeforePlayerSquadButtonMessage()`
- `effect:onBeforePlayerSwitchMonsterButtonMessage()`
- `effect:onBeforePlayerEscapeButtonMessage()`
- `effect:onBeforePlayerRestButtonMessage()`
- `effect:onBeforePlayerSkillButtonMessage()`
- `effect:onBeforePlayerInventoryButtonMessage()`
- `effect:onBeforePlayerForfeitConfirmPopupText()`
- `effect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `effect:onBeforeEscapeMoveSuccess(_onComplete, _participant, _monsterSpriteWhichCausedSuccessfulEscape)`
- `effect:onBeforeEscapeMoveSuccessPriority()`
- `effect:onBeforeApplyMonsterSpriteStatus(_onSkipMonsterSpriteStatus, _onContinue, _monsterSprite, _status)`
- `effect:onBeforeMonsterSpriteFainted(_onSkipFaint, _onContinue, _monsterSprite)`
- `effect:onBeforeApplyWeatherEffect(_onSkipWeatherEffect, _onContinue, _weatherEffect)`
- `effect:onBeforeApplyEntryHazardEffect(_onSkipEntryHazardEffect, _onContinue, _entryHazard, _monsterSprite)`
- `effect:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `effect:onAfterUsableItemUsed(_onComplete, _participant, _item)`
- `effect:onAfterMonsterUsableItemUsed(_onComplete, _participant, _item, _targetMonsterSprites)`
- `effect:onAfterFruitConsumed(_onComplete, _item, _monsterSprite)`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `effect:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`
- `effect:onAfterTurn(_onComplete, _executedMove)`
- `effect:onAfterRound(_onComplete)`
- `effect:onAfterRoundPriority(_onComplete)`
- `effect:onAfterAfterRound(_onComplete)`
- `effect:onAfterAfterRoundPriority(_onComplete)`
- `effect:onAfterMonsterSpriteSpawnedInstant(_monsterSprite)`
- `effect:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`
- `effect:onAfterMonsterSpriteSpawnedPriority()`
- `effect:onAfterMonsterSpriteUnspawned(_onComplete, _monsterSprite)`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onAfterApplyMonsterSpriteStatus(_onComplete, _monsterSpriteStatus, _monsterSprite)`
- `effect:onAfterApplyMonsterSpriteStatusPriority()`
- `effect:onAfterApplyTrainerParticipantStatus(_onComplete, _trainerParticipantStatus, _trainerParticipant)`
- `effect:onAfterApplyBattleStatus(_onComplete, _battleStatus)`
- `effect:onAfterApplyWeatherEffect(_onComplete, _weatherEffect)`
- `effect:onAfterApplyWeatherEffectPriority()`
- `effect:onAfterApplyEntryHazard(_onComplete, _entryHazard)`
- `effect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`
- `effect:onAfterParticipantWonPriority()`
- `effect:onAfterParticipantEscaped(_onComplete, _escapedParticipant)`
- `effect:onAfterDamageInBattle(_onComplete, _monsterSprite)`
- `effect:onAfterRecoverHealthInBattle(_onComplete, _monsterSprite, _recoveredHealth)`
- `effect:mutateTraitEnhancementStage(_monster, _value)`
- `effect:mutateLevel(_monster, _level)`
- `effect:mutateBaseStat(_monster, _statUID, _statValue)`
- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`
- `effect:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `effect:mutateStatBoostStagePriority()`
- `effect:mutateEnergyCost(_skillData, _monster, _value)`
- `effect:mutateSkillAccuracy(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `effect:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `effect:mutateMovePriority(_preparedMove, _monsterSprite, _priority)`
- `effect:mutateSkillStrikes(_skillData, _fromMonsterSprite, _strikes)`
- `effect:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:mutateShouldMissChance(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `effect:mutateDamage(_monster, _value)`
- `effect:mutateDamagePriority()`
- `effect:mutateRelativeDamage(_monster, _value)`
- `effect:mutateRecoilDamage(_recoilDamagedMonsterSprite, _value)`
- `effect:mutateHeal(_monster, _value)`
- `effect:mutateRecoverHealthConsumableEffect(_item, _monster, _value)`
- `effect:mutateRecoverEnergyConsumableEffect(_item, _monster, _value)`
- `effect:mutateWeatherEffectTurns(_monsterSprite, _turns)`
- `effect:mutateStatBoostStatus(_statBoostStatus)`
- `effect:mutateStatBoostStatusPriority()`
- `effect:mutateAIScore(_monsterSprite, _move, _score)`
- `effect:mutateZoneEncounter(_monsters)`
- `effect:mutateAfterParticipantWonEnergy(_monster, _value)`
- `effect:shouldAlwaysSucceedEscape(_monsterSprite)`
- `effect:getMainActionButtonReplacement(_monsterSprite)`
- `effect:getMainActionButtonReplacementPriority(_monsterSprite)`
- `effect:getPlayerEscapeButtonMode()`
- `effect:getPlayerEscapeButtonModePriority()`
- `effect:getDamageRandomizer()`
- `effect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:shouldCriticalHitPriority(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:shouldPreventMakingContact(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:shouldBlockFruitConsumption(_fruit, _monsterSprite)`
- `effect:shouldBlockRecoilDamage(_monster, _recoilDamage)`
- `effect:shouldBlockWeatherEffectEffect(_monster, _weatherEffect, _isPositive)`
- `effect:shouldAdaptToPositiveWeatherEffect(_monster, _weatherEffect)`
- `effect:shouldBlockSkill(_monsterSprite, _skillData)`
- `effect:shouldBlockCondition(_monster, _condition)`
- `effect:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `effect:shouldBlockTrainerParticipantStatus(_trainerParticipant, _trainerParticipantStatus)`
- `effect:shouldBlockBattleStatus(_battleStatus)`
- `effect:shouldBlockWeatherEffect(_weatherEffect)`
- `effect:shouldBlockWeatherEffectRemoval(_weatherEffect)`
- `effect:shouldBlockEntryHazard(_entryHazard)`
- `effect:shouldBlockSpawn(_monsterSpriteToSpawn)`
- `effect:shouldBlockForceRemove(_monsterSprite)`
- `effect:shouldBlockZoneEncounter(_rolledMonsters)`
- `effect:onPlayerStepped()`
- `effect:onBeforeUseItemMessage(_item, _mode)`
- `effect:shouldShowHiddenItemSparkle()`
- `effect:mutateGoldCost(_value)`
- `effect:mutateRogueItemSlots(_amountOfRogueItemSlots)`
- `effect:onIgnoreBattleEffects(_battleEffects)`

</details>

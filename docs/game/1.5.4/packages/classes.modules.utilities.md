# classes.modules.utilities

Coromon 1.5.4. 21 module(s). [Back to index](../README.md)

[battleEffectUtility](#battleeffectutility), [characterConfigUtility](#characterconfigutility), [cutsceneUtility](#cutsceneutility), [difficultyUtility](#difficultyutility), [gauntletModuleUtility](#gauntletmoduleutility), [gridMoveDataUtility](#gridmovedatautility), [itemUtility](#itemutility), [monsterDataUtility](#monsterdatautility), [monsterItemSuggestionInBattleUtility](#monsteritemsuggestioninbattleutility), [monsterItemSuggestionUtility](#monsteritemsuggestionutility), [monsterPotentialUtility](#monsterpotentialutility), [monsterUtility](#monsterutility), [skillMoveUtility](#skillmoveutility), [statBoostUtility](#statboostutility), [statUtility](#statutility), [targetingUtility](#targetingutility), [traitDescriptionHighlightUtility](#traitdescriptionhighlightutility), [traitUtility](#traitutility), [typeUtility](#typeutility), [worldLocationUtility](#worldlocationutility), [worldMapDataUtility](#worldmapdatautility)

### battleEffectUtility

`classes.modules.utilities.battleEffectUtility`

- returns `t`

- `battleEffectUtility:speedPriority(_originalPriority, _monsterSprite)`
- `battleEffectUtility:setMainBattleEffects(_battleEffects)`
- `battleEffectUtility:registerBattleEffect(_effect)`
- `battleEffectUtility:unregisterBattleEffect(_effect)`
- `battleEffectUtility:getBattleEffects(_priorityFunctionName, ...)`
- `battleEffectUtility:shouldForceCatch(_monsterSprite)`
- `battleEffectUtility:mutateAmountOfMonsterRolls()`
- `battleEffectUtility:mutateAmountOfPotentialRolls()`
- `battleEffectUtility:mutateAmountOfSwampMushroomsHarvested(_swampMushroom)`
- `battleEffectUtility:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`
- `battleEffectUtility:mutateTrainerBattleGoldBounty(_payingParticipant, _value)`
- `battleEffectUtility:onEnterBattle(_onComplete)`
- `battleEffectUtility:onBeforeRound(_onComplete)`
- `battleEffectUtility:onBeforeTurn(_preparedMove, _onSkipTurn, _onComplete)`
- `battleEffectUtility:onBeforePlayerSquadButtonMessage()`
- `battleEffectUtility:onBeforePlayerSwitchMonsterButtonMessage()`
- `battleEffectUtility:onBeforePlayerEscapeButtonMessage()`
- `battleEffectUtility:onBeforePlayerRestButtonMessage()`
- `battleEffectUtility:onBeforePlayerSkillButtonMessage()`
- `battleEffectUtility:onBeforePlayerInventoryButtonMessage()`
- `battleEffectUtility:onBeforePlayerForfeitConfirmPopupText()`
- `battleEffectUtility:onBeforePrepareMonsterSprite(_participant, _monsterSprite, _onSkipPrepare, _onComplete)`
- `battleEffectUtility:onBeforeSpawnTrainerMonsterSprite(_monsterSprite, _onComplete)`
- `battleEffectUtility:onBeforeEscapeMoveSuccess(_participant, _monsterSpriteWhichCausedSuccessfulEscape, _onComplete)`
- `battleEffectUtility:onBeforeMonsterSpriteFainted(_monsterSprite, _onSkipFaint, _onComplete)`
- `battleEffectUtility:onBeforeApplyMonsterSpriteStatus(_status, _monsterSprite, _onSkipStatus, _onComplete)`
- `battleEffectUtility:onBeforeApplyWeatherEffect(_weatherEffect, _onSkipWeatherEffect, _onComplete)`
- `battleEffectUtility:onBeforeApplyEntryHazardEffect(_entryHazard, _monsterSprite, _onSkipEntryHazardEffect, _onContinue)`
- `battleEffectUtility:onSkillMove(_skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites, _onSkipSkillMove, _onComplete)`
- `battleEffectUtility:onAfterUsableItemUsed(_participant, _item, _onComplete)`
- `battleEffectUtility:onAfterMonsterUsableItemUsed(_participant, _item, _targetMonsterSprites, _onComplete)`
- `battleEffectUtility:onAfterFruitConsumed(_item, _monsterSprite, _onComplete)`
- `battleEffectUtility:onAfterSkillMove(_skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes, _onComplete)`
- `battleEffectUtility:onAfterPartialSkillMove(_skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _onComplete, _onSkipRemaining)`
- `battleEffectUtility:onAfterTurn(_executedMove, _onComplete)`
- `battleEffectUtility:onAfterRound(_onComplete)`
- `battleEffectUtility:onAfterAfterRound(_onComplete)`
- `battleEffectUtility:onAfterDamageInBattle(_monsterSprite, _onComplete)`
- `battleEffectUtility:onAfterRecoverHealthInBattle(_monsterSprite, _recoveredHealth, _onComplete)`
- `battleEffectUtility:onAfterMonsterSpriteSpawnedInstant(_monsterSprite)`
- `battleEffectUtility:onAfterMonsterSpriteSpawned(_monsterSprite, _onComplete)`
- `battleEffectUtility:onAfterMonsterSpriteUnspawned(_monsterSprite, _onComplete)`
- `battleEffectUtility:onAfterMonsterSpritesRemovedFromBattle(_removedMonsterSprites, _onComplete)`
- `battleEffectUtility:onAfterApplyMonsterSpriteStatus(_monsterSpriteStatus, _monsterSprite, _onComplete)`
- `battleEffectUtility:onAfterApplyTrainerParticipantStatus(_trainerParticipantStatus, _trainerParticipant, _onComplete)`
- `battleEffectUtility:onAfterApplyBattleStatus(_status, _onComplete)`
- `battleEffectUtility:onAfterApplyWeatherEffect(_weatherEffect, _onComplete)`
- `battleEffectUtility:onAfterApplyEntryHazard(_entryHazard, _onComplete)`
- `battleEffectUtility:onAfterParticipantWon(_winningParticipant, _losingParticipant, _onComplete)`
- `battleEffectUtility:onAfterParticipantEscaped(_escapedParticipant, _onComplete)`
- `battleEffectUtility:mutateTraitEnhancementStage(_monster, _value)`
- `battleEffectUtility:mutateLevel(_monster, _level)`
- `battleEffectUtility:mutateBaseStat(_monster, _statUID, _statValue)`
- `battleEffectUtility:mutateStat(_monsterSprite, _statUID, _statValue)`
- `battleEffectUtility:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay)`
- `battleEffectUtility:mutateEnergyCost(_skillData, _monster, _energyCostValue)`
- `battleEffectUtility:mutateSkillAccuracy(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `battleEffectUtility:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `battleEffectUtility:mutateMovePriority(_preparedMove, _monsterSprite, _priority)`
- `battleEffectUtility:mutateSkillStrikes(_skillData, _fromMonsterSprite, _strikes)`
- `battleEffectUtility:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `battleEffectUtility:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `battleEffectUtility:mutateShouldMissChance(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `battleEffectUtility:mutateDamage(_monster, _value)`
- `battleEffectUtility:mutateRelativeDamage(_monster, _value)`
- `battleEffectUtility:mutateRecoilDamage(_recoilDamagedMonsterSprite, _value)`
- `battleEffectUtility:mutateHeal(_monster, _value)`
- `battleEffectUtility:mutateRecoverHealthConsumableEffect(_item, _monster, _value)`
- `battleEffectUtility:mutateRecoverEnergyConsumableEffect(_item, _monster, _value)`
- `battleEffectUtility:mutateWeatherEffectTurns(_monsterSprite, _value)`
- `battleEffectUtility:mutateStatBoostStatus(_statBoostStatus)`
- `battleEffectUtility:mutateAIScore(_monsterSprite, _move, _score)`
- `battleEffectUtility:mutateZoneEncounter(_monsters)`
- `battleEffectUtility:mutateAfterParticipantWonEnergy(_monster, _value)`
- `battleEffectUtility:shouldShowOpponentHoldItem()`
- `battleEffectUtility:shouldAlwaysSucceedEscape(_monsterSprite)`
- `battleEffectUtility:getDamageRandomizer()`
- `battleEffectUtility:getMainActionButtonReplacement(_monsterSprite)`
- `battleEffectUtility:getPlayerEscapeButtonMode()`
- `battleEffectUtility:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffectUtility:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffectUtility:shouldPreventMakingContact(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffectUtility:shouldBlockFruitConsumption(_fruit, _monsterSprite)`
- `battleEffectUtility:shouldBlockRecoilDamage(_monsterSprite, _recoilDamage)`
- `battleEffectUtility:shouldBlockWeatherEffectEffect(_monster, _weatherEffect, _isPositive)`
- `battleEffectUtility:shouldAdaptToPositiveWeatherEffect(_monster, _weatherEffect)`
- `battleEffectUtility:shouldBlockSkill(_monsterSprite, _skillData)`
- `battleEffectUtility:shouldBlockCondition(_monster, _condition)`
- `battleEffectUtility:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `battleEffectUtility:shouldBlockTrainerParticipantStatus(_trainerParticipant, _trainerParticipantStatus)`
- `battleEffectUtility:shouldBlockBattleStatus(_battleStatus)`
- `battleEffectUtility:shouldBlockWeatherEffect(_weatherEffect)`
- `battleEffectUtility:shouldBlockWeatherEffectRemoval(_weatherEffect)`
- `battleEffectUtility:shouldBlockEntryHazard(_entryHazard)`
- `battleEffectUtility:shouldBlockSpawn(_monsterSprite)`
- `battleEffectUtility:shouldBlockForceRemove(_monsterSprite)`
- `battleEffectUtility:shouldBlockZoneEncounter(_rolledMonsters)`
- `battleEffectUtility:onPlayerStepped()`
- `battleEffectUtility:onBeforeUseItemMessage(_item, _mode)`
- `battleEffectUtility:shouldShowHiddenItemSparkle()`
- `battleEffectUtility:shouldShowWorldDarknessFlashlight()`
- `battleEffectUtility:shouldShowBigWorldDarknessFlashlight()`
- `battleEffectUtility:mutateGoldCost(_value)`
- `battleEffectUtility:mutateRogueItemSlots(_defaultAmountOfRogueItemSlots)`

### characterConfigUtility

`classes.modules.utilities.characterConfigUtility`

- returns `t`

- `characterConfigUtility:isPartKeyOfType(_partType, _partKey)`
- `characterConfigUtility:isNonSelectablePartKey(_partKey)`
- `characterConfigUtility:getHeadLocation(_characterConfig)`
- `characterConfigUtility:setHeadLocation(_characterConfig, _headLocation)`
- `characterConfigUtility:resolveHeadLocationForBody(_bodyPartKey)`
- `characterConfigUtility:getGauntlet(_characterConfig)`
- `characterConfigUtility:getClothing(_characterConfig)`
- `characterConfigUtility:getBody(_characterConfig)`
- `characterConfigUtility:getEarrings(_characterConfig)`
- `characterConfigUtility:getHeadgear(_characterConfig)`
- `characterConfigUtility:getHair(_characterConfig)`
- `characterConfigUtility:getFacialhair(_characterConfig)`
- `characterConfigUtility:getScar(_characterConfig)`
- `characterConfigUtility:getGlasses(_characterConfig)`
- `characterConfigUtility:getBlush(_characterConfig)`
- `characterConfigUtility:getWrinkle(_characterConfig)`
- `characterConfigUtility:getEyes(_characterConfig)`
- `characterConfigUtility:getHead(_characterConfig)`
- `characterConfigUtility:getSkintone(_characterConfig)`
- `characterConfigUtility:getHairtype(_characterConfig)`
- `characterConfigUtility:getFacialhairtype(_characterConfig)`
- `characterConfigUtility:getHaircolor(_characterConfig)`
- `characterConfigUtility:replace(_characterConfig, _partType, _newPartKey)`
- `characterConfigUtility:replaceGauntlet(_characterConfig, _gauntlet)`
- `characterConfigUtility:replaceClothing(_characterConfig, _clothing)`
- `characterConfigUtility:replaceBody(_characterConfig, _body)`
- `characterConfigUtility:replaceEarrings(_characterConfig, _earrings)`
- `characterConfigUtility:replaceHeadgear(_characterConfig, _headgear)`
- `characterConfigUtility:replaceHair(_characterConfig, _hair)`
- `characterConfigUtility:replaceFacialhair(_characterConfig, _facialhair)`
- `characterConfigUtility:replaceScar(_characterConfig, _scar)`
- `characterConfigUtility:replaceGlasses(_characterConfig, _glasses)`
- `characterConfigUtility:replaceBlush(_characterConfig, _blush)`
- `characterConfigUtility:replaceWrinkle(_characterConfig, _wrinkle)`
- `characterConfigUtility:replaceEyes(_characterConfig, _eyes)`
- `characterConfigUtility:replaceHead(_characterConfig, _head)`
- `characterConfigUtility:replaceSkintone(_characterConfig, _skintone)`
- `characterConfigUtility:replaceHairtype(_characterConfig, _hairtype)`
- `characterConfigUtility:replaceFacialhairtype(_characterConfig, _facialhairType)`
- `characterConfigUtility:replaceHaircolor(_characterConfig, _haircolor)`
- `characterConfigUtility:createBase(_bodyPartKey, _headPartKey)`

<details><summary>Fields with default values (14)</summary>

- `characterConfigUtility.partKeyPrefixes.gauntlet` = `"body_gauntlet_"`
- `characterConfigUtility.partKeyPrefixes.clothing` = `"body_clothing_"`
- `characterConfigUtility.partKeyPrefixes.body` = `"body_skintone_"`
- `characterConfigUtility.partKeyPrefixes.earrings` = `"head_earrings_"`
- `characterConfigUtility.partKeyPrefixes.headgear` = `"head_headgear_"`
- `characterConfigUtility.partKeyPrefixes.hair` = `"head_hair_"`
- `characterConfigUtility.partKeyPrefixes.facialhair` = `"head_facialHair_"`
- `characterConfigUtility.partKeyPrefixes.scar` = `"head_scar_"`
- `characterConfigUtility.partKeyPrefixes.glasses` = `"head_glasses_"`
- `characterConfigUtility.partKeyPrefixes.blush` = `"head_blush_"`
- `characterConfigUtility.partKeyPrefixes.wrinkle` = `"head_wrinkle_"`
- `characterConfigUtility.partKeyPrefixes.eyes` = `"head_eyes_"`
- `characterConfigUtility.partKeyPrefixes.head` = `"head_skintone_"`
- `characterConfigUtility.partKeySuffixExcludes.eyes` = `"normal_trance_overlay"`

</details>

### cutsceneUtility

`classes.modules.utilities.cutsceneUtility`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.battleLostOverlayBuilder`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.interface.battle.monsterEvolutionOverlayBuilder`

- `cutsceneUtility:getBlackScreenOverlay()`
- `cutsceneUtility:getWhiteScreenOverlay()`
- `cutsceneUtility:convertStringOrArrayToWubbonianLanguage(_stringOrArray)`
- `cutsceneUtility:ensureOutfitByOptionallyDeactivatingOutfit(_item)`
- `cutsceneUtility:ensureSingleWearableItemByOptionallyDeactivatingOutfit(_item)`
- `cutsceneUtility:hasRecallBlockerWorldEffect(_key)`
- `cutsceneUtility:startRecallBlockerWorldEffect(_key)`
- `cutsceneUtility:stopRecallBlockerWorldEffect(_key)`
- `cutsceneUtility:installAndSelectGauntletModule(_gauntletModule, _onComplete)`
- `cutsceneUtility:evolveMonsterInMenu(_monster, _monsterUID, _allowSkipEvolution, _onComplete, _onBeforeBlackScreenOutTransition, _evolveMode)`
- `cutsceneUtility:evolveMonster(_monster, _monsterUID, _allowSkipEvolution, _onComplete, _onBeforeBlackScreenOutTransition)`
- `cutsceneUtility:doPlayerGotHurtAnimation(_includeExclamationMark, _onComplete)`
- `cutsceneUtility:onDifficultyModified(_isFromReception, _oldDifficultyObject, _newDifficultyObject, _onComplete)`
- `cutsceneUtility:createFloorQuestionCutscene(_entranceLocation, _maps, _toMap, _floorQuestion, _floorQuestionAnswers)`
- `cutsceneUtility:newTallMonsterButtonOverlayForGivingAway(_mayShowInsaneSpinnerSquad, _onClose, _onSelect, _options)`
- `cutsceneUtility:newTallMonsterButtonOverlayForTrading(_mayShowInsaneSpinnerSquad, _onClose, _onSelect, _options)`
- `cutsceneUtility:newTallMonsterButtonOverlayForOptionallyGivingAway(_willGiveAwayMonster, _mayShowInsaneSpinnerSquad, _onClose, _onSelect, _options)`
- `cutsceneUtility:executeCustomDialogCutscene(_createDialogFunction, endCutscene, cutsceneSpawnable, triggerSpawnable)`
- `cutsceneUtility:executeNpcDialogCutscene(_npcSpawnable, _text, endCutscene)`
- `cutsceneUtility:executePlayerDialogCutscene(_text, endCutscene)`
- `cutsceneUtility:createCustomDialogCutscene(_createDialogFunction)`
- `cutsceneUtility:createNpcDialogCutscene(_textFunction)`
- `cutsceneUtility:createMonsterDialogCutscene(_textFunction)`
- `cutsceneUtility:createMonsterEmojiCutscene(_emojiUID, _loopCount)`
- `cutsceneUtility:createMonsterExpressionCutscene(_expressionUID)`
- `cutsceneUtility:createNpcDialogCutsceneWithoutEmojiWhile(_textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithoutExpressionWhile(_textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithEmojiBefore(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithExpressionBefore(_expressionUID, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithEmojiBefore(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithExpressionBefore(_expressionUID, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithEmojiBefore(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithexpressionBefore(_expressionUID, _textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithEmojiAtStart(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithExpressionAtStart(_expressionUID, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithEmojiAtStart(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithExpressionAtStart(_expressionUID, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithEmojiAtStart(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithExpressionAtStart(_expressionUID, _textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithEmojiWhile(_emojiUID, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithEmojiWhile(_emojiUID, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithEmojiWhile(_emojiUID, _textFunction)`
- `cutsceneUtility:createSpeakerlessDialogCutsceneWithEmojiWhile(_emojiUID, _textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithEmojiAfter(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createMonsterDialogCutsceneWithExpressionAfter(_expressionUID, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithPlayerEmojiAfter(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithEmojiAfter(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createNpcDialogCutsceneWithExpressionAfter(_expressionUID, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithEmojiAfter(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutsceneWithexpressionAfter(_expressionUID, _textFunction)`
- `cutsceneUtility:createSpeakerlessDialogCutsceneWithEmojiAfter(_emojiUID, _loopCount, _textFunction)`
- `cutsceneUtility:createSpeakerlessDialogCutsceneWithExpressionAfter(_expressionUID, _textFunction)`
- `cutsceneUtility:createPlayerDialogCutscene(_textFunction)`
- `cutsceneUtility:createSpeakerlessDialogCutscene(_textFunction)`
- `cutsceneUtility:createNpcInteractCutscene(_cutsceneContent)`
- `cutsceneUtility:createMonsterInteractCutscene(_cutsceneContent)`
- `cutsceneUtility:createObjectInteractCutscene(_cutsceneContent)`
- `cutsceneUtility:createObjectInteractCutsceneWith(...)`
- `cutsceneUtility:createObjectBeforeInteractCutscene(_cutsceneContent)`
- `cutsceneUtility:createCutscene(_cutsceneContent)`
- `cutsceneUtility:createPlayerCutscene(_cutsceneContent)`
- `cutsceneUtility:createCutsceneWith(_spawnable1, _spawnable2, _spawnable3, _cutsceneContent)`
- `cutsceneUtility:createOnloadCutscene(_cutsceneContent)`
- `cutsceneUtility:createOnloadCutsceneWith(...)`
- `cutsceneUtility:createPlayerOnloadCutscene(_cutsceneContent)`
- `cutsceneUtility:playerSteppedOnTile(_triggerSpawnable, _mode)`
- `cutsceneUtility:playerTeleportedOnTile(_triggerSpawnable, _mode)`
- `cutsceneUtility:createTileCutscene(_cutsceneContent)`
- `cutsceneUtility:createTileCutsceneAndDestroyOnTrigger(_cutsceneContent)`
- `cutsceneUtility:createPlayerTileCutscene(_cutsceneContent)`
- `cutsceneUtility:createPlayerTileCutsceneAndDestroyOnTrigger(_cutsceneContent)`
- `cutsceneUtility:createPlayerTileCutsceneIf(_shouldTriggerFunction, _cutsceneContent)`
- `cutsceneUtility:createPlayerTileCutsceneIfAndDestroyOnTrigger(_shouldTriggerFunction, _cutsceneContent)`
- `cutsceneUtility:executeBlockingTileDialogCutscene(_direction, _textOrTexts)`
- `cutsceneUtility:createBlockingTileDialogCutscene(_direction, _textFunction, _shouldTriggerFunction)`
- `cutsceneUtility:createStoryTypewriterText(_text, _onComplete)`
- `cutsceneUtility:createNewStoryTypewriterText(_text, _onComplete)`
- `cutsceneUtility:createStoryTypewriterTextAtCenter(_text, _onComplete)`
- `cutsceneUtility:doCharacterSpin(_character, _onComplete)`
- `cutsceneUtility:executeItemsShowAboveHead(_triggerSpawnable, _obtainableItems, _onItemObtained, _onComplete)`
- `cutsceneUtility:executeItemShowAboveHead(_triggerSpawnable, _obtainableItem, _onComplete)`
- `cutsceneUtility:executeItemsPickup(_triggerSpawnable, _itemPopupMode, _obtainableItems, _onComplete)`
- `cutsceneUtility:executeItemPickup(_triggerSpawnable, _itemPopupMode, _obtainableItem, _onComplete)`
- `cutsceneUtility:wearHeadsetVirtualReality(_player, _vrHeadsetSpawnable, _endCutscene)`
- `cutsceneUtility:createEndOfDemoCutscene(_jochem, _marcel)`
- `cutsceneUtility:createTrainerHubCutscene()`
- `cutsceneUtility:createShopCutscene(_buyBackAnySellableItem, _cassiereSpawnable, _buyableItems, _textFunctions)`
- `cutsceneUtility:executeBattleDomeBattle(_player, _optionalOnComplete, _optionalOnBeforePlayerWon)`
- `cutsceneUtility:createBattleDomeWildGrassOnloadCutscene(_player, _amountOfTilesBelowSpawnLocation)`
- `cutsceneUtility:executeBattle(_options)`
- `cutsceneUtility:executeTrainerBattle(_options)`
- `cutsceneUtility:createSpotCutscene(_cutsceneContent)`
- `cutsceneUtility:createSpotEncounterCutscene(_options)`
- `cutsceneUtility:executeWildEncounter(_playerSpawnable, _options)`
- `cutsceneUtility:executeWildZoneEncounter(_playerSpawnable, _enemyParticipantFunction, _rolledMonsters, _endCutscene)`
- `cutsceneUtility:reloadMap(_unloadTransition, _loadTransition, _options)`
- `cutsceneUtility:fadeToBlack(_time, _options)`

<details><summary>Instance / other functions (1)</summary>

- `_options.onAfterBattleInTransition(_onComplete)`

</details>

### difficultyUtility

`classes.modules.utilities.difficultyUtility`

- returns `t`

- `difficultyUtility:getDifficulties()`
- `difficultyUtility:getDifficultyIndex(_difficulty)`

### gauntletModuleUtility

`classes.modules.utilities.gauntletModuleUtility`

- returns `t`

- `gauntletModuleUtility:getName(_gauntletModule)`
- `gauntletModuleUtility:createIcon(_parent, _gauntletModuleUID, _mutator)`
- `gauntletModuleUtility:getOrderedModules()`

### gridMoveDataUtility

`classes.modules.utilities.gridMoveDataUtility`

- returns `t`

- `gridMoveDataUtility:new(_timeBySpeed, _stepSpeed, _stepDirection, _nextTileX, _nextTileY, _isAlreadyMoving)`

<details><summary>Instance / other functions (20)</summary>

- `gridMoveDataMeta:wasAlreadyMoving()`
- `gridMoveDataMeta:getOnMoving()`
- `gridMoveDataMeta:getTileX()`
- `gridMoveDataMeta:getTileY()`
- `gridMoveDataMeta:getParabolaEasing()`
- `gridMoveDataMeta:getEasing()`
- `gridMoveDataMeta:getSpeed()`
- `gridMoveDataMeta:getDirection()`
- `gridMoveDataMeta:getNoMoveSound()`
- `gridMoveDataMeta:getNoRunSmoke()`
- `gridMoveDataMeta:resolveTime()`
- `gridMoveDataMeta:setOnMoving(_function)`
- `gridMoveDataMeta:setTileX(_tileX)`
- `gridMoveDataMeta:setTileY(_tileY)`
- `gridMoveDataMeta:setParabolaEasing(_height, _easing)`
- `gridMoveDataMeta:setEasing(_easing)`
- `gridMoveDataMeta:setSpeed(_speed)`
- `gridMoveDataMeta:setNoMoveSound(_boolean)`
- `gridMoveDataMeta:setNoRunSmoke(_boolean)`
- `gridMoveDataMeta:modifySpeedArray(_timeModificationBySpeed)`

</details>

### itemUtility

`classes.modules.utilities.itemUtility`

- returns `t`

- `itemUtility:calculatePriceForMode(_item, _mode)`
- `itemUtility:getShopItems(_uniqueItemUIDS)`
- `itemUtility:createOrderedItemArrayWithSubcategories(_itemArray, _filterByCategory, _mode)`

### monsterDataUtility

`classes.modules.utilities.monsterDataUtility`

- returns `t`

- `monsterDataUtility:resolveDefaultSpriteSkinForRandomizableTitan(_randomizableTitanUID)`
- `monsterDataUtility:resolveDefaultSpriteSkinForCrimsoniteMonster()`
- `monsterDataUtility:getSpeakerNameForRandomizableTitan(_randomizableTitanUID)`
- `monsterDataUtility:getSpeakerHeadForRandomizableTitan(_parent, _randomizableTitanUID)`
- `monsterDataUtility:getSpeakerStyleForRandomizableTitan(_randomizableTitanUID)`
- `monsterDataUtility:getSpeakerForRandomizableTitan(_randomizableTitanUID)`
- `monsterDataUtility:getSpeakerForCrimsoniteTitan()`
- `monsterDataUtility:countAmountOfMonsterDataWithNumber(_onlyCountIf)`
- `monsterDataUtility:getSortedMonsterDataListWithNumber()`

<details><summary>Instance / other functions (4)</summary>

- `speakerObject:getSpeakerName()`
- `speakerObject:getSpeakerHead(_parent)`
- `speakerObject:getSpeakerType()`
- `speakerObject:getSpeakerStyle()`

</details>

### monsterItemSuggestionInBattleUtility

`classes.modules.utilities.monsterItemSuggestionInBattleUtility`

- returns `t`

- `monsterItemSuggestionInBattleUtility:createBattleCakeSuggestions()`
- `monsterItemSuggestionInBattleUtility:createBattleSpinnerSuggestions(_preferredTargetMonster)`

### monsterItemSuggestionUtility

`classes.modules.utilities.monsterItemSuggestionUtility`

- returns `t`

- `monsterItemSuggestionUtility:createSuggestions(_monster)`

### monsterPotentialUtility

`classes.modules.utilities.monsterPotentialUtility`

- returns `t`

- `monsterPotentialUtility:createCategoryIcon(_parent, _category, _potential)`
- `monsterPotentialUtility:getCategories()`
- `monsterPotentialUtility:getLowestPotentialForCategory(_monsterPotentialCategory)`
- `monsterPotentialUtility:getHighestPotentialForCategory(_monsterPotentialCategory)`
- `monsterPotentialUtility:isStandard(_potential)`
- `monsterPotentialUtility:isPotent(_potential)`
- `monsterPotentialUtility:isPerfect(_potential)`

### monsterUtility

`classes.modules.utilities.monsterUtility`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.TallMonsterButton`

- `monsterUtility:showMonsterNicknameKeyboardOverlay(_monster, _onAfterClose)`
- `monsterUtility:showMonsterReleaseConfirmPopup(_confirmPopupText, _monster, _onYes, _onNo)`
- `monsterUtility:showMonsterReleaseConfirmPopupWithByeByeMessage(_confirmPopupText, _monster, _onAfterYesAndByeByeMessageClosed, _onNo)`
- `monsterUtility:getMonsterByeByeMessage(_monster)`
- `monsterUtility:getMaxLevel()`
- `monsterUtility:getLevelOfUpcomingTitan()`
- `monsterUtility:rollPotential()`
- `monsterUtility:rollPotentialCategory()`
- `monsterUtility:getPotentialCategoryForPotential(_potential)`
- `monsterUtility:tryRollHoldItemUID(_monster)`

<details><summary>Fields with default values (2)</summary>

- `monsterUtility.MAX_MONSTER_NAME_WIDTH_PLAIN_8` = `46`
- `monsterUtility.AVATAR_HEIGHT` = `24`

</details>

### skillMoveUtility

`classes.modules.utilities.skillMoveUtility`

- returns `t`

- `skillMoveUtility:createSkillMovePerTarget(_participant, _fromMonsterSprite, _skillData)`
- `skillMoveUtility:isConsecutiveSkillUse(_monsterSprite, _skillUID)`
- `skillMoveUtility:canDepleteEnergy(_monsterSprite)`
- `skillMoveUtility:tryDepleteEnergy(_amount, _monsterSprite, _onBeforeShowHealthAndEnergyBar, _onComplete)`
- `skillMoveUtility:tryDepleteEnergyWithDefaultDepletionText(_amount, _monsterSprite, _onComplete)`
- `skillMoveUtility:tryDepleteEnergyIfNotFaintedOfflineEnemy(_amount, _monsterSprite, _onBeforeShowHealthAndEnergyBar, _onComplete)`
- `skillMoveUtility:tryDepleteEnergyIfNotFaintedOfflineEnemyWithDefaultDepletionText(_amount, _monsterSprite, _onComplete)`
- `skillMoveUtility:tryRecoverDrainedEnergy(_amount, _fromMonsterSprite, _targetMonsterSprite, _onComplete)`
- `skillMoveUtility:tryDrainEnergy(_amount, _fromMonsterSprite, _targetMonsterSprite, _onComplete)`
- `skillMoveUtility:tryRecoverEnergy(_amount, _monsterSprite, _onComplete)`
- `skillMoveUtility:tryRecoverHealth(_amount, _monsterSprite, _onComplete)`
- `skillMoveUtility:doRecoverHealthAnimation(_amount, _monsterSprite, _onComplete)`
- `skillMoveUtility:tryDoRecoilDamage(_monsterSprite, _recoilDamage, _onComplete)`
- `skillMoveUtility:tryDoSpecialRecoilDamage(_monsterSprite, _recoilDamage, _onComplete)`
- `skillMoveUtility:rollMissedMonsterSprites(_skillData, _activeMonsterSprite, _targetMonsterSprites)`
- `skillMoveUtility:doSkillDamages(_skillData, _strikeIndex, _activeMonsterSprite, _targetMonsterSprites)`
- `skillMoveUtility:calculateDamageForPower(_skillPower, _monsterLevel, _attackStat, _defenseStat)`
- `skillMoveUtility:calculateDamageForPowerInBattle(_skillPower, _isSpecial, _fromMonsterSprite, _toMonsterSprite)`
- `skillMoveUtility:clampDamageIfNotAtOneHp(_monster, _skillDamage)`
- `skillMoveUtility:setNextHitSound(_didCriticalHit, _didVeryEffectiveDamage, _didNotEffectiveDamage)`
- `skillMoveUtility:doPositionAndFloatObject(_displayObject, _options)`
- `skillMoveUtility:getRandomFloatingTextOffsets()`
- `skillMoveUtility:createHealthIconAndTextGroup(_healthAdjustment)`
- `skillMoveUtility:createEnergyIconAndTextGroup(_energyAdjustment)`
- `skillMoveUtility:doSpawnFloatingDamageText(_skillData, _targetMonsterSprite, _skillDamageByMonsterSprite)`
- `skillMoveUtility:doHalfSecondAnimationInterruption(_targetMonsterSprite, _onComplete)`
- `skillMoveUtility:doDefaultHitWithBlinkWithDamageAndFloatingText(_skillData, _targetMonsterSprite, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _onComplete)`
- `skillMoveUtility:doDefaultHitWithBlinkWithDamage(_targetMonsterSprite, _onComplete)`
- `skillMoveUtility:doDefaultHitWithBlinkWithoutDamage(_targetMonsterSprite, _onComplete)`
- `skillMoveUtility:doSingleBlinkWithoutDamage(_targetMonsterSprite, _onComplete)`
- `skillMoveUtility:doDefaultHitWithoutBlinkWithoutDamage(_targetMonsterSprite)`
- `skillMoveUtility:doDefaultHitWithoutBlinkWithDamage(_targetMonsterSprite, _onComplete)`
- `skillMoveUtility:doDefaultHitWithoutBlinkWithDamageAndFloatingText(_skillData, _targetMonsterSprite, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite, _onComplete)`
- `skillMoveUtility:doDefaultHitMultipleWithBlinkWithDamage(_targetMonsterSprites, _onComplete, _skillData, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`
- `skillMoveUtility:getTransitionableBattleObjects()`
- `skillMoveUtility:getTransitionableBattleObjectsIncludingSkills()`
- `skillMoveUtility:doTiniestShake(_onComplete)`
- `skillMoveUtility:doTinyShake(_onComplete)`
- `skillMoveUtility:doSmallShake(_onComplete)`
- `skillMoveUtility:doMediumShake(_onComplete)`
- `skillMoveUtility:doBigShake(_onComplete)`
- `skillMoveUtility:tryStealFruit(_activeMonsterSprite, _targetMonsterSprite)`
- `skillMoveUtility:optionallyShowOnAfterFruitStolenText(_targetMonsterFruitUIDtoSteal, _targetMonsterSprite, _onComplete)`
- `skillMoveUtility:doInfectionAnimation(_toMonsterSprite, _infectionSpriteOptions, _createOverlayMonsterSpriteEffect, _onComplete, _onDamage)`
- `skillMoveUtility:doConfusionAnimation(_activeMonsterSprite, _onComplete, _optionalOnFifthFrame)`
- `skillMoveUtility:doSplashAnimation(_activeMonsterSprite, _skillTargetMonsterSprite, _onComplete)`

### statBoostUtility

`classes.modules.utilities.statBoostUtility`

- returns `t`

- `statBoostUtility:getFactor(_statUID, _stage)`
- `statBoostUtility:getFactorString(_statUID, _stage)`
- `statBoostUtility:getFactorStringWithColor(_statUID, _stage)`

### statUtility

`classes.modules.utilities.statUtility`

- returns `t`

- `statUtility:getColorForStat(_stat)`
- `statUtility:getOppositeStatForDefenseOrAttackStat(_stat)`
- `statUtility:getLocalised(_stat)`
- `statUtility:getMaxPotentialStat(_stat)`
- `statUtility:getOrderedBaseStatsWithoutEnergy()`
- `statUtility:getOrderedBaseStats()`
- `statUtility:getStatBoostableBaseStats()`
- `statUtility:getOrderedStatBoostableStatsForTwoColumnGrid()`
- `statUtility:getOrderedStatBoostableStatsForThreeColumnGrid()`
- `statUtility:getStatBoostableStats()`

### targetingUtility

`classes.modules.utilities.targetingUtility`

- returns `t`

- `targetingUtility:shouldSelectTargetInMenu(_targetMode)`
- `targetingUtility:shouldSelectTargetInBattle(_targetMode)`
- `targetingUtility:shouldSelectTarget(_targetMode)`
- `targetingUtility:isTargetingEnemy(_targetMode)`
- `targetingUtility:isTargetingPlayer(_targetMode)`
- `targetingUtility:getTargetMonsterSprites(_targetMode, _activeMonsterSprite)`
- `targetingUtility:getTargetMonsters(_targetMode, _activeMonsterSprite)`
- `targetingUtility:getTargetedMonsterSprites(_targetMode, _activeMonsterSprite, _targetData, _targetTeam, _targetIndex)`
- `targetingUtility:isSelf(_targetMode)`
- `targetingUtility:isSelfTarget(_targetMode)`
- `targetingUtility:isSelfTeam(_targetMode)`
- `targetingUtility:isEnemyTarget(_targetMode)`
- `targetingUtility:isEnemyTargetRandom(_targetMode)`
- `targetingUtility:isEnemyTargetInBattle(_targetMode)`
- `targetingUtility:isEnemyTeam(_targetMode)`
- `targetingUtility:isEnemyTeamInBattle(_targetMode)`
- `targetingUtility:isAllInBattle(_targetMode)`
- `targetingUtility:isNoneTarget(_targetMode)`

### traitDescriptionHighlightUtility

`classes.modules.utilities.traitDescriptionHighlightUtility`

- returns `t`

- `traitDescriptionHighlightUtility:createHighlightedDescription(_previousDescription, _currentDescription)`

### traitUtility

`classes.modules.utilities.traitUtility`

- returns `t`
- requires: `classes.lists.traitBaseStatFactorsByEnhancementStageList`

- `traitUtility:hasTraitEnhancement(_traitUID)`
- `traitUtility:getNameForEnhancementStage(_traitUID, _enhancementStage)`
- `traitUtility:getDescriptionForEnhancementStage(_traitUID, _enhancementStage)`

### typeUtility

`classes.modules.utilities.typeUtility`

- returns `t`

- `typeUtility:createTypeIconOrUnknownIcon(_parent, _type)`

### worldLocationUtility

`classes.modules.utilities.worldLocationUtility`

- returns `t`

- `worldLocationUtility:createAnimatedIcon(_parent, _locationUID, _shouldConvertToLocationDot)`
- `worldLocationUtility:createIcon(_parent, _locationUID)`
- `worldLocationUtility:getLocalised(_locationUID)`

### worldMapDataUtility

`classes.modules.utilities.worldMapDataUtility`

- returns `t`

- `worldMapDataUtility:new(_mapPath, _mapFile)`

<details><summary>Instance / other functions (34)</summary>

- `map:getMapPath()`
- `map:getMapFile()`
- `map:extendLayer(_mapFileExtension)`
- `map:extendCutscenes(_mapFileExtension)`
- `map:extend(_mapFileExtension)`
- `map:addSound(_key, _path)`
- `map:getBackgroundMusic()`
- `map:setBackgroundMusic(_filename)`
- `map:getBackgroundIntro()`
- `map:setBackgroundIntro(_filename)`
- `map:getMapName()`
- `map:setMapName(_mapName)`
- `map:getMapType()`
- `map:setMapType(_mapType)`
- `map:getCutscenes()`
- `map:addCutscene(_name, _cutscene)`
- `map:getFunctions()`
- `map:addFunction(_name, _function)`
- `map:load()`
- `map:unload()`
- `map:addOnBeforeSpawnablesSpawned(_function)`
- `map:addOnBeforeLoadTransition(_function)`
- `map:addOnAfterLoadTransition(_function)`
- `map:addOnAfterMapNamePopup(_function)`
- `map:addOnBeforeUnloadTransition(_function)`
- `map:addOnAfterUnloadTransition(_function)`
- `map:addOnDestroy(_function)`
- `map:executeOnBeforeSpawnablesSpawned()`
- `map:executeOnBeforeLoadTransition(_player)`
- `map:executeOnAfterLoadTransition(_player)`
- `map:executeOnAfterMapNamePopup()`
- `map:executeOnBeforeUnloadTransition()`
- `map:executeOnAfterUnloadTransition()`
- `map:executeOnDestroy()`

</details>

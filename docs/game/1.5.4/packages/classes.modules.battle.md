# classes.modules.battle

Coromon 1.5.4. 11 module(s). [Back to index](../README.md)

[AIScoreHelper](#aiscorehelper), [AbstractBattle](#abstractbattle), [Battle](#battle), [BattleBackground](#battlebackground), [NametagManager](#nametagmanager), [OfflineBattle](#offlinebattle), [OnlineBattle](#onlinebattle), [battleAI](#battleai), [battleHelper](#battlehelper), [battleRoundOrderBuilder](#battleroundorderbuilder), [monsterSpriteBuilder](#monsterspritebuilder)

### AIScoreHelper

`classes.modules.battle.AIScoreHelper`

- returns `t`

- `AIScoreHelper:preferStatus(_monsterSprite, _move, _score, _intensity)`
- `AIScoreHelper:preferAttack(_monsterSprite, _move, _score, _intensity)`
- `AIScoreHelper:reflectStatusScore(_oppositeTeam, _createStatusFunction, _willTriggerFunction)`

### AbstractBattle

`classes.modules.battle.AbstractBattle`

- returns `t`
- requires: `classes.modules.battle.BattleBackground`, `classes.modules.battle.battleRoundOrderBuilder`, `classes.modules.battle.NametagManager`, `classes.interface.battle.nametag.MonsterNametag`, `classes.interface.battle.SkillTargetPreviewButton`, `classes.interface.UIContainerBuilder`, `classes.interface.enums.UIContainerStyle`

- `AbstractBattle:new(_destroyInstance, _battleEnvironment)`

<details><summary>Instance / other functions (75)</summary>

- `instance:getEnvironment()`
- `instance:checkBattleEnded(_onDidNotEnd)`
- `instance:getBattleRoundOrder()`
- `instance:setPlayerParticipant(_playerParticipant, _optionalBattleEffectSortIndex)`
- `instance:setEnemyParticipant(_enemyParticipant, _optionalBattleEffectSortIndex)`
- `instance:onBattleClose(_function)`
- `instance:onPlayerWon(_function)`
- `instance:onPlayerLost(_function)`
- `instance:instantPlayerWon()`
- `instance:setParticipantWon(_winningParticipant, _onComplete)`
- `instance:startBattleWonMusic()`
- `instance:startBattleLostMusic()`
- `instance:getAnyMonsterSpriteByData(_monster)`
- `instance:getAllMonsters(_team)`
- `instance:getAllMonsterSprites(_team)`
- `instance:getMonsterSpriteInBattleByData(_monster)`
- `instance:getMonsterSpritesInSquad(_team)`
- `instance:getMonsterSpritesInBattle(_team)`
- `instance:getBattleParticipant(_team)`
- `instance:sortedMonsterSpritesFromLeftToRight(_monsterSprites)`
- `instance:sortedMonsterSpritesFromRightToLeft(_monsterSprites)`
- `instance:getNametagForSquad(_team, _monsterSprite)`
- `instance:showNametagForSquad(_team, _monsterSprite, _onComplete)`
- `instance:hideNametagsForSquad(_team, _onComplete)`
- `instance:refreshNametagsForSquad(_team, _onComplete)`
- `instance:getNametagsForPlayer()`
- `instance:getNametagsForEnemy()`
- `instance:addNametag(_nametag, _onComplete)`
- `instance:removeNametag(_nametag, _onComplete)`
- `instance:showAllNametags(_onComplete)`
- `instance:showAllMonsterSprites(_onComplete)`
- `instance:hideMonsterSpritesForTeamExcept(_team, _monsterSpriteToIgnore, _onComplete)`
- `instance:hideNametagsForTeamExcept(_team, _monsterSpriteToIgnore, _onComplete)`
- `instance:hideNametagsForTeam(_team, _onComplete)`
- `instance:showNametagsForTeam(_team, _onComplete)`
- `instance:getNametagsFromLeftToRight()`
- `instance:getNametagsForPreparedMove()`
- `instance:getPlayerNametagNavigation(_focusSelector)`
- `instance:getEnemyNametagsNavigation(_focusSelector)`
- `instance:destroyMoveTargetPreviews()`
- `instance:getMoveTargetPreviews()`
- `instance:showSkillMoveTargetPreview(_activeMonsterSprite, _skillData, _startBobbing, _skillMove)`
- `instance:showItemMoveTargetPreview(_item, _optionalTarget)`
- `instance:showPreparedMoveTargetPreview(_preparedMove)`
- `moveOrderIndicator:unhighlight()`
- `instance:registerBattleEffect(_effect)`
- `instance:unregisterBattleEffect(_effect)`
- `instance:getBattleEffects()`
- `instance:getWeatherEffect(_optionalClass)`
- `instance:setWeatherEffect(_weatherEffect)`
- `instance:getEntryHazard(_team, _optionalClass)`
- `instance:setEntryHazard(_team, _entryHazard)`
- `instance:swapEntryHazards()`
- `instance:setFaintedMonster(_monster)`
- `instance:unsetFaintedMonster(_monster)`
- `instance:checkFaintedAndBattleEnded(_onDidNotEnd)`
- `instance:getPhase()`
- `instance:getPreparedMoves(_team)`
- `instance:getPreparedMoveFor(_nametag)`
- `instance:addPreparedMove(_team, _preparedMove)`
- `instance:removePreparedMove(_team, _preparedMove)`
- `instance:getCurrentRoundIndex()`
- `instance:doRoundStart()`
- `instance:doRoundEnd()`
- `instance:executeNextTurnOrEndRound()`
- `instance:getCurrentPreparedMove(_optionalClass)`
- `instance:setCurrentPreparedMoveForAI(_move)`
- `instance:executeNextTurn()`
- `instance:onBeforeExecuteTurn(_move, _onComplete)`
- `instance:hasShownInitialNametags()`
- `instance:inTransitionAndPauseWorldHelper(_onBeforeBattleInit)`
- `instance:inTransition(_onBeforeBattleInit)`
- `instance:onEnterBattle()`
- `instance:outTransitionAndResumeWorldHelper(_onComplete)`
- `instance:destroy()`

</details>

### Battle

`classes.modules.battle.Battle`

- returns `t`
- requires: `classes.modules.battle.OnlineBattle`, `classes.modules.battle.OfflineBattle`

- `Battle:get()`
- `Battle:isCreated()`
- `Battle:isCreatedAsOnline()`
- `Battle:isCreatedAsOffline()`
- `Battle:createOnline(_battleEnvironment)`
- `Battle:createOffline()`
- `Battle:asOnline()`
- `Battle:asOffline()`

### BattleBackground

`classes.modules.battle.BattleBackground`

- returns `t`
- requires: `classes.modules.battle.battleHelper`

- `BattleBackground:new(_parent, _environment)`

<details><summary>Instance / other functions (23)</summary>

- `parentGroup:getSkillBackLayer(_monsterSprite)`
- `parentGroup:getSkillMiddleLayer()`
- `parentGroup:getSkillFrontLayer(_monsterSprite)`
- `parentGroup:getMonsterLayer(_monsterSprite)`
- `parentGroup:getFrontLayer(_monsterSprite)`
- `parentGroup:getBackLayer(_monsterSprite)`
- `parentGroup:getBattlePlayerGroup()`
- `parentGroup:getBattleEnemyGroup()`
- `parentGroup:getBelowInterfaceGroup()`
- `parentGroup:getInterfaceGroup()`
- `parentGroup:getAboveInterfaceGroup()`
- `parentGroup:getBattleContainer()`
- `parentGroup:getBattleBackgroundGroup()`
- `parentGroup:getBattleForegroundGroup()`
- `parentGroup:getBattleBackground()`
- `parentGroup:getMonsterSpriteInBattle(_team, _battleLocation)`
- `parentGroup:addMonsterSprite(_monsterSprite, _team, _battleLocation)`
- `parentGroup:removeMonsterSprite(_monsterSprite)`
- `parentGroup:getSpawnPointer(_team)`
- `parentGroup:alignMonsterSpriteWithOffset(_monsterSprite, _offsetX, _offsetY)`
- `parentGroup:alignMonsterSpritesAroundCenter(_team)`
- `parentGroup:addNametag(_nametag, _onComplete)`
- `parentGroup:removeNametag(_nametag, _onComplete)`

</details>

### NametagManager

`classes.modules.battle.NametagManager`

- returns `t`

- `NametagManager:new()`

<details><summary>Instance / other functions (6)</summary>

- `manager:getNametagsForPlayer()`
- `manager:getNametagsForEnemy()`
- `manager:getNametagsFromLeftToRight()`
- `manager:showInitialNametags(_onComplete)`
- `manager:addNametag(_newNametag, _onComplete)`
- `manager:removeNametag(_nametag, _onComplete)`

</details>

### OfflineBattle

`classes.modules.battle.OfflineBattle`

- returns `t`
- requires: `classes.modules.battle.AbstractBattle`

- `OfflineBattle:new(_destroyInstance)`

<details><summary>Instance / other functions (3)</summary>

- `instance:onParticipantEscaped(_function)`
- `instance:setParticipantEscaped(_escapedParticipant)`
- `instance:checkBattleEnded(_onDidNotEnd)`

</details>

### OnlineBattle

`classes.modules.battle.OnlineBattle`

- returns `t`
- requires: `classes.modules.battle.AbstractBattle`, `classes.interface.overlays.OnlineBattleLostOverlay`, `classes.interface.overlays.OnlineBattleWinnerOverlay`

- `OnlineBattle:new(_destroyInstance, _battleEnvironment)`

<details><summary>Instance / other functions (7)</summary>

- `instance:onEnterBattle()`
- `instance:showAjaxLoader()`
- `instance:hideAjaxLoader()`
- `instance:endBattleWithOnlineMatchResult(_onlineMatchResult)`
- `instance:setShouldNotEndBattleOnMatchResult(_memorizationKey)`
- `instance:setShouldEndBattleOnMatchResult(_memorizationKey, _onDidNotAlreadyReceiveMatchResult, _onMatchResult)`
- `instance:checkBattleEnded(_onDidNotEnd)`

</details>

### battleAI

`classes.modules.battle.battleAI`

- returns `t`

- `battleAI:getStrengthAgainstOpponents(_monsterSprite)`

### battleHelper

`classes.modules.battle.battleHelper`

- returns `t`

- `battleHelper:getBattleLocationOrderFromEdgeForTeam(_team)`
- `battleHelper:getBattleLocationOrderFromEdge(_team, _battleLocation)`
- `battleHelper:getBattleCenterOffset()`

### battleRoundOrderBuilder

`classes.modules.battle.battleRoundOrderBuilder`

- returns `t`

- `battleRoundOrderBuilder:new()`

<details><summary>Instance / other functions (6)</summary>

- `class:clearRound()`
- `class:createRound(_preparedMoves)`
- `class:isRoundCreated()`
- `class:isRoundComplete()`
- `class:getNextPreparedMove()`
- `class:getMonsterSpritesInOrderIfRoundStarted(_monsterSpritesFilter)`

</details>

### monsterSpriteBuilder

`classes.modules.battle.monsterSpriteBuilder`

- returns `Obj`
- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.interface.battle.nametag.MonsterNametag`

- `monsterSpriteBuilder:doSpinnerSpawnAnimation(_parent, _team, _monsterSprite, _onMonsterSpriteHidden, _onComplete)`
- `monsterSpriteBuilder:newDebugSpawned(_battleBackground, _participant, _monster, _team, _battleLocation)`
- `monsterSpriteBuilder:new(_battleBackground, _participant, _monster, _team)`

<details><summary>Instance / other functions (109)</summary>

- `parentGroup:setBattleLocation(_battleLocation)`
- `parentGroup:getMonsterData()`
- `parentGroup:getMonsterFamilyData()`
- `parentGroup:refreshMonsterSprite(_shouldStartWithRandomFrame)`
- `parentGroup:getSpawnPointerOffset()`
- `parentGroup:alignShadowSpriteAndStoreSpawnPointerOffset(_spawnPointerOffsetX, _spawnPointerOffsetY)`
- `parentGroup:getMonsterSprite()`
- `parentGroup:getMonsterNametag()`
- `parentGroup:getMonsterShadow()`
- `parentGroup:getMonsterSpriteUIDWithSide()`
- `parentGroup:getSprites()`
- `parentGroup:instantSpawn(_shouldStartWithRandomFrame)`
- `parentGroup:spawnByFade(_onComplete)`
- `parentGroup:spawn(_onComplete)`
- `parentGroup:destroy()`
- `parentGroup:unspawn(_onComplete)`
- `parentGroup:unspawnByFade(_onComplete)`
- `parentGroup:showSparkles()`
- `parentGroup:doSpinnerSpawnAnimation(_onComplete, _onMonsterSpriteHidden)`
- `parentGroup:doSpinnerUnspawnAnimation(_spinnerUID, _unspawnMode, _amountOfShakes, _shouldCatch, _onComplete)`
- `parentGroup:getHeadHitbox()`
- `parentGroup:isInSquad()`
- `parentGroup:isInBattle()`
- `parentGroup:hasAppearedInBattle()`
- `parentGroup:canBeTargeted()`
- `parentGroup:shouldTriggerEarlyEvolveAfterTurn(_executedMove)`
- `parentGroup:calculateStatInBattle(_statUID)`
- `parentGroup:calculateMostProficientStatInBattle()`
- `parentGroup:calculateStatsInBattleSortedByValue()`
- `parentGroup:calculateStatsInBattleReverseSortedByValue()`
- `parentGroup:getExecutableSelectedSkillUIDs()`
- `parentGroup:getExecutableSelectedSkillsData()`
- `parentGroup:isSkillNotDisabledAndHasEnoughEnergy(_skillData)`
- `parentGroup:hasEnergyLeftForSkill(_skillData)`
- `parentGroup:useEnergy(_skillData)`
- `parentGroup:calculateSkillDamage(_fromMonsterSprite, _skillData)`
- `parentGroup:registerBattleEffect(_effect)`
- `parentGroup:unregisterBattleEffect(_effect)`
- `parentGroup:removeActiveBattleEffects()`
- `parentGroup:getBattleEffectByInstanceOf(_class)`
- `parentGroup:getBattleEffectsByInstanceOf(_class)`
- `parentGroup:getBattleEffectsByInstanceOfAnd(_class, _filter)`
- `parentGroup:getBattleEffects()`
- `parentGroup:setLastSwitchMoveRecallRound(_roundIndex)`
- `parentGroup:getLastSwitchMoveRecallRound()`
- `parentGroup:setLastSwitchMoveSendOutRound(_roundIndex)`
- `parentGroup:getLastSwitchMoveSendOutRound()`
- `parentGroup:addFailedCatchAttempt()`
- `parentGroup:getAmountOfFailedCatchAttempts()`
- `parentGroup:onBeforeTryExecuteTurn()`
- `parentGroup:getAmountOfConsecutiveTurnsExecuted()`
- `parentGroup:addMoveToHistory(_executedMove)`
- `parentGroup:getMoveHistory()`
- `parentGroup:getMostRecentMove()`
- `parentGroup:addSkillMoveToHistory(_skillMove)`
- `parentGroup:getSkillMoveHistory()`
- `parentGroup:getMostRecentSkillMove()`
- `parentGroup:getSecondMostRecentSkillMove()`
- `parentGroup:getMostRecentNotMissedSkillMove()`
- `parentGroup:setMostRecentBeforeSkillData(_skillData)`
- `parentGroup:getMostRecentBeforeSkillData()`
- `parentGroup:setFrozen(_bool)`
- `parentGroup:isFrozen()`
- `parentGroup:setHasRegurgitatedHoldItem()`
- `parentGroup:hasRegurgitatedHoldItem()`
- `parentGroup:doSmallDashAnimation(_onComplete)`
- `parentGroup:doDashAnimation(_onComplete)`
- `parentGroup:doFadeDashAnimation(_returnTime, _onHit, _onComplete)`
- `parentGroup:doShrinkHitAnimation(_onComplete)`
- `parentGroup:doFlattenHitAnimation(_onComplete)`
- `parentGroup:doSmallShakeHitAnimation(_onComplete)`
- `parentGroup:doShakeHitAnimation(_onComplete)`
- `parentGroup:doShakeAnimation(_onComplete)`
- `parentGroup:doPsychicShakeAnimation(_onComplete)`
- `parentGroup:doDarkPsychicShakeAnimation(_onComplete)`
- `parentGroup:doChargeAnimation(_duration, _onComplete)`
- `parentGroup:doSingleDamageBlink(_onComplete)`
- `parentGroup:doThreeDamageBlinks(_onComplete)`
- `parentGroup:doDamageBlinkForAmountOfBlinks(_amountOfBlinks, _onComplete)`
- `parentGroup:doRecoverAnimation(_mode, _onComplete)`
- `parentGroup:doLevelUpAnimation(_onComplete)`
- `parentGroup:doPotentialLevelUpAnimation(_onComplete)`
- `parentGroup:doEvolveAnimation(_onComplete)`
- `parentGroup:interruptAnimation(_time, _onComplete)`
- `parentGroup:createAdditionalMonsterSprite(_parent, _mutator)`
- `parentGroup:createMonsterSpriteOverlay(_mutator)`
- `parentGroup:createMonsterSpriteGlow(_mutator, _optionalParent)`
- `parentGroup:createMonsterSpriteDoubleGlow(_mutator)`
- `parentGroup:createMonsterSpriteBorder(_mutator)`
- `parentGroup:setHighlightedByHover(_isHighlightedByHover)`
- `parentGroup:setHighlightedByCode(_isHighlightedByCode)`
- `parentGroup:setCodeHighlightVisible(_isVisible)`
- `parentGroup:applyMonsterSpriteMaskTo(_object)`
- `parentGroup:getDisplayName()`
- `parentGroup:getDisplayNameWithTypeColor()`
- `parentGroup:refreshHealthBar()`
- `parentGroup:refreshHealthBarAndMaxHealth()`
- `parentGroup:refreshHealthBarAnimated(_onComplete)`
- `parentGroup:refreshEnergyBar()`
- `parentGroup:refreshEnergyBarAndMaxEnergy()`
- `parentGroup:refreshEnergyBarAnimated(_onComplete)`
- `parentGroup:refreshXpBarAnimated(_xpRequiredInLevel, _onComplete)`
- `parentGroup:showXpBar(_onComplete)`
- `parentGroup:showEnergyBar(_onComplete)`
- `parentGroup:showHealthAndEnergyBar(_onComplete)`
- `parentGroup:show(_onComplete)`
- `parentGroup:hide(_onComplete)`
- `parentGroup:showNametag(_onComplete)`
- `parentGroup:hideNametag(_onComplete)`

</details>

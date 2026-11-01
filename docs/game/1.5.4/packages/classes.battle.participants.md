# classes.battle.participants

Coromon 1.5.4. 14 module(s). [Back to index](../README.md)

[abstractBattleParticipant](#abstractbattleparticipant), [abstractOpponentTrainerParticipant](#abstractopponenttrainerparticipant), [abstractPlayerTrainerParticipant](#abstractplayertrainerparticipant), [abstractTrainerParticipant](#abstracttrainerparticipant), [abstractWildParticipant](#abstractwildparticipant), [catchableMonsterParticipant](#catchablemonsterparticipant), [catchableTrainerMonsterParticipant](#catchabletrainermonsterparticipant), [monsterParticipant](#monsterparticipant), [offlineOpponentTrainerParticipant](#offlineopponenttrainerparticipant), [offlinePlayerTrainerParticipant](#offlineplayertrainerparticipant), [onlineOpponentTrainerParticipant](#onlineopponenttrainerparticipant), [onlinePlayerTrainerParticipant](#onlineplayertrainerparticipant), [titanParticipant](#titanparticipant), [zoneParticipant](#zoneparticipant)

### abstractBattleParticipant

`classes.battle.participants.abstractBattleParticipant`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`, `classes.modules.battle.monsterSpriteBuilder`, `classes.modules.battle.battleHelper`

- `abstractBattleParticipant:new(_monsters, _team, _teamSize)`

<details><summary>Instance / other functions (44)</summary>

- `participant:getRegisteredBattleEffects()`
- `participant:registerBattleEffect(_effect)`
- `participant:unregisterBattleEffect(_effect)`
- `participant:getBattleEffects()`
- `participant:getBattleLocationsForTeamSize()`
- `participant:getMonsterSpritesInBattle()`
- `participant:getMonsterSpritesInBattleFainted()`
- `participant:getMonsterSpritesInBattleNotFainted()`
- `participant:getMonsterSpritesInSquad()`
- `participant:getMonsterSpritesInSquadFainted()`
- `participant:getMonsterSpritesInSquadNotFainted()`
- `participant:getAllMonsterSprites()`
- `participant:getAllMonsterSpritesFainted()`
- `participant:getAllMonsterSpritesNotFainted()`
- `participant:getAnyMonsterSpriteByData(_monster)`
- `participant:addMonster(_monster, _insertIndex)`
- `participant:removeMonster(_monster)`
- `participant:replaceMonster(_monsterToRemove, _monsterToAdd)`
- `participant:removeMonsterSpriteFromBattle(_monsterSprite, _skipRealigningMonsterSprites)`
- `participant:addMonsterSpriteInBattle(_monsterSprite, _optionalBattleLocation)`
- `participant:onInitialNametagsShown()`
- `participant:prepareTurn(_preparedMove)`
- `participant:onTurnPrepared(_preparedMove)`
- `participant:prepareSkillMove(_monsterSprite, _skillData, _optionalTargetMonsterSprite)`
- `participant:prepareRestMove(_monsterSprite)`
- `participant:prepareSkipMonsterSpriteMove(_monsterSprite)`
- `participant:prepareRechargeMove(_monsterSprite)`
- `participant:findBestAvailableMove(_monsterSprite)`
- `participant:getAvailableMoves(_monsterSprite)`
- `participant:getAvailableSkillMoves(_monsterSprite)`
- `participant:getXpReward(_faintedMonsterSprite)`
- `participant:shouldShowSparklesAfterMonsterSpriteSpawned(_monsterSprite)`
- `participant:onAfterMonsterSpriteSpawnedInstant(_monsterSprite)`
- `participant:addGold(_amount)`
- `participant:removeGold(_amount)`
- `participant:getBattleGoldBounty()`
- `participant:shouldBlockForceRemove(_monsterSprite)`
- `participant:onAfterForceRemoveMonsterSprite(_monsterSprite, _continue)`
- `participant:onMonsterSpriteFainted(_monsterSprite, _onComplete)`
- `participant:onAfterMonsterSpriteFainted(_monsterSprite)`
- `participant:unspawnMonsterSpriteByFade(_monsterSprite, _onComplete)`
- `participant:doPrepareRound(_onComplete)`
- `participant:onRoundCreated()`
- `participant:onDestroy()`

</details>

### abstractOpponentTrainerParticipant

`classes.battle.participants.abstractOpponentTrainerParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractTrainerParticipant`, `classes.battle.participants.plugins.opponentParticipantPlugin`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `abstractOpponentTrainerParticipant:new(_options, _optionalUID)`

<details><summary>Instance / other functions (8)</summary>

- `participant:getPlayerEscapeButtonModePriority()`
- `participant:getPlayerEscapeButtonMode()`
- `participant:sendOutRequestedMonsterSprite(_requestedMonsterSprite, _battleLocation, _onComplete)`
- `participant:getOnSwitchMonsterMoveRecallText(_monsterSprite)`
- `participant:getOnSwitchMonsterMoveSendOutText(_newMonsterSprite)`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onTextShown)`
- `participant:onEnterBattleWithTwoMonsters(_monsterSprite1, _monsterSprite2, _onTextShown)`
- `participant:onShowEncounterOverlay(_onEncounterOverlayShown, _onComplete)`

</details>

### abstractPlayerTrainerParticipant

`classes.battle.participants.abstractPlayerTrainerParticipant`

- returns `t`
- requires: `classes.interface.battle.actionsPanelManager`, `classes.interface.battle.BattleWeatherEffectPopup`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.MessageToast`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.overlays.battleTargetOverlayBuilder`, `classes.battle.participants.abstractTrainerParticipant`, `classes.interface.overlays.monsterSpriteDetailsOverlayBuilder`, `classes.interface.overlays.playerTrainerParticipantMonsterActionMenuOverlayBuilder`

- `abstractPlayerTrainerParticipant:new(_monsters)`

<details><summary>Instance / other functions (29)</summary>

- `participant:createPauseMenuForBattle()`
- `participant:getInputNavigation()`
- `participant:doPrepareRound(_onComplete)`
- `participant:getActionsPanel()`
- `participant:getMonsterSpriteFromActionPanel()`
- `participant:getPlayerMonsterNametagForPreparation()`
- `participant:openMonsterSpriteDetailsOverlay(_monsterSprite)`
- `participant:onTurnPrepared(_preparedMove)`
- `participant:initiatePreparing(_onPreparationComplete)`
- `participant:stopPreparing(_onComplete)`
- `participant:continueOrStopPreparing()`
- `participant:getActionsPanelManagerSecondaryOptions(_monsterSprite)`
- `participant:optionallyHideActionsPanel(_onComplete)`
- `participant:showActionsPanelFor(_nametag, _onComplete)`
- `participant:onForfeitPick()`
- `participant:onRestPick()`
- `participant:onSilentSkipPick()`
- `participant:onSkipMonsterSpritePick()`
- `participant:onSwitchMonsterPick(_monsterSprite)`
- `participant:onSkillPick(_skillData, _optionalTargetMonsterSprite)`
- `participant:prepareSilentSkipMove()`
- `participant:prepareForfeitMove(_monsterSprite)`
- `participant:getOnSwitchMonsterMoveRecallText(_monsterSprite)`
- `participant:getOnSwitchMonsterMoveSendOutText(_newMonsterSprite)`
- `participant:onEnterBattlePriority()`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onTextShown)`
- `participant:onEnterBattleWithTwoMonsters(_monsterSprite1, _monsterSprite2, _onTextShown)`
- `participant:sendOutRequestedMonsterSprite(_requestedMonsterSprite, _battleLocation, _onComplete)`
- `participant:onDestroy()`

</details>

### abstractTrainerParticipant

`classes.battle.participants.abstractTrainerParticipant`

- returns `t`
- requires: `classes.interface.battle.nametag.RogueCharacterNametag`, `classes.battle.participants.abstractBattleParticipant`, `classes.interface.battle.trainerMonsterIndicatorBuilder`

- `abstractTrainerParticipant:new(_monsters, _team)`

<details><summary>Instance / other functions (32)</summary>

- `participant:getDisplayName()`
- `participant:createCharacterSprite(_parent)`
- `participant:shouldShowSparklesAfterMonsterSpriteSpawned(_monsterSprite)`
- `participant:getBattleGoldBounty()`
- `participant:requestInitialMonsterSprites(_selectInitialMonsterSprites)`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onTextShown)`
- `participant:onEnterBattleWithTwoMonsters(_monsterSprite1, _monsterSprite2, _onTextShown)`
- `participant:showTrainerMonsterIndicator(_onComplete)`
- `participant:hideTrainerMonsterIndicator(_onComplete)`
- `participant:shouldDisableMonsterButtonForSendOut(_monster)`
- `participant:spawnMonsterSpriteBeforeBattle(_monsterSprite, _battleLocation, _onComplete)`
- `participant:spawnMonsterSpriteDuringBattle(_monsterSprite, _battleLocation, _onComplete)`
- `participant:unspawnMonsterSpriteByFade(_monsterSprite, _onComplete)`
- `participant:spawnNametag()`
- `participant:getNametag()`
- `participant:findBestAvailableMonsterSprite()`
- `participant:onEnterBattlePriority()`
- `participant:onEnterBattle(_onComplete)`
- `participant:sendOutInitialMonsterSprites(_monsterSprite1, _monsterSprite2, _onComplete)`
- `participant:getOnAfterRoundPriority()`
- `participant:onAfterRoundPriority()`
- `participant:onAfterRound(_onComplete)`
- `participant:onAfterRoundRequestOptionalMonsterSprite(_selectMonsterSprite, _battleLocation)`
- `participant:requestNonLastMonsterSpriteForNewRound(_selectMonsterSprite)`
- `participant:onAfterRoundRequestedOptionalMonsterSprite(_selectedMonsterSprite, _battleLocation, _onComplete)`
- `participant:sendOutRequestedMonsterSprite(_requestedMonsterSprite, _battleLocation, _onComplete)`
- `participant:shouldBlockForceRemove(_monsterSprite)`
- `participant:prepareSwitchMonsterMove(_monsterSprite, _newMonsterSprite)`
- `participant:onSwitchMonsterMoveRecall(_monsterSprite, _onComplete)`
- `participant:onSwitchMonsterMoveSendOut(_newMonsterSprite, _newMonsterSpriteBattleLocation, _onComplete)`
- `participant:getOnSwitchMonsterMoveRecallText(_monsterSprite)`
- `participant:getOnSwitchMonsterMoveSendOutText(_newMonsterSprite)`

</details>

### abstractWildParticipant

`classes.battle.participants.abstractWildParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractBattleParticipant`, `classes.battle.participants.plugins.opponentParticipantPlugin`, `classes.battle.AI.regularMonsterAI`, `classes.battle.AI.smarterMonsterAI`

- `abstractWildParticipant:new(_monsters, _optionalUID)`

<details><summary>Instance / other functions (14)</summary>

- `participant:getXpReward(_faintedMonsterSprite)`
- `participant:getBattleGoldBounty()`
- `participant:onAfterMonsterSpriteFainted(_monsterSprite)`
- `participant:unspawnMonsterSpriteByFade(_monsterSprite, _onComplete)`
- `participant:onEncounterOverlayShown()`
- `participant:onAfterEncounterOverlayHidden(_onComplete)`
- `participant:shouldSpawnOnEncounterOverlayShown(_monsterSprite)`
- `participant:onEnterBattleWithThreeMonsters(_monsterSprite1, _monsterSprite2, _monsterSprite3, _onComplete)`
- `participant:onEnterBattleWithTwoMonsters(_monsterSprite1, _monsterSprite2, _onComplete)`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onComplete)`
- `participant:onEnterBattlePriority()`
- `participant:onEnterBattle(_onComplete)`
- `participant:onAfterParticipantWonPriority()`
- `participant:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### catchableMonsterParticipant

`classes.battle.participants.catchableMonsterParticipant`

- returns `t`
- requires: `classes.battle.participants.monsterParticipant`, `classes.battle.participants.plugins.catchableParticipantPlugin`, `classes.battle.participants.plugins.catchableWildParticipantPlugin`

- `catchableMonsterParticipant:new(_UID, _monsters)`

### catchableTrainerMonsterParticipant

`classes.battle.participants.catchableTrainerMonsterParticipant`

- returns `t`
- requires: `classes.battle.participants.catchableMonsterParticipant`, `classes.battle.participants.plugins.catchableParticipantPlugin`, `classes.battle.participants.plugins.catchableTrainerParticipantPlugin`

- `catchableTrainerMonsterParticipant:new(_UID, _monsters)`

### monsterParticipant

`classes.battle.participants.monsterParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractWildParticipant`

- `monsterParticipant:new(_UID, _allowEscape, _monsters)`

<details><summary>Instance / other functions (7)</summary>

- `participant:getBattleMusic()`
- `participant:onShowEncounterOverlay(_onEncounterOverlayShown, _onComplete)`
- `participant:getPlayerEscapeButtonModePriority()`
- `participant:getPlayerEscapeButtonMode()`
- `participant:onEnterBattleWithThreeMonsters(_monsterSprite1, _monsterSprite2, _monsterSprite3, _onComplete)`
- `participant:onEnterBattleWithTwoMonsters(_monsterSprite1, _monsterSprite2, _onComplete)`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onComplete)`

</details>

### offlineOpponentTrainerParticipant

`classes.battle.participants.offlineOpponentTrainerParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractOpponentTrainerParticipant`, `classes.battle.participants.plugins.catchableParticipantPlugin`, `classes.battle.participants.plugins.catchableTrainerParticipantPlugin`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `offlineOpponentTrainerParticipant:new(_spawnable, _options)`

<details><summary>Instance / other functions (14)</summary>

- `participant:getSpawnable()`
- `participant:createCharacterSprite(_parent)`
- `participant:getDisplayName()`
- `participant:getBattleMusic()`
- `participant:getBattleGoldBounty()`
- `participant:getXpReward(_faintedMonsterSprite)`
- `participant:getOnAfterRoundPriority()`
- `participant:requestNonLastMonsterSpriteForNewRound(_selectMonsterSprite)`
- `participant:onEnterBattlePriority()`
- `participant:requestInitialMonsterSprites(_selectInitialMonsterSprites)`
- `participant:getAvailableMoves(_monsterSprite)`
- `participant:getAvailableSwitchMonsterMoves(_monsterSprite)`
- `participant:onAfterParticipantWonPriority()`
- `participant:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### offlinePlayerTrainerParticipant

`classes.battle.participants.offlinePlayerTrainerParticipant`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.MessageToast`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.battle.participants.abstractPlayerTrainerParticipant`, `classes.modules.utilities.monsterItemSuggestionInBattleUtility`

- `offlinePlayerTrainerParticipant:new(_shouldHideCharacterConfig)`

<details><summary>Instance / other functions (27)</summary>

- `participant:createPauseMenuForBattle()`
- `participant:getDisplayName()`
- `participant:createCharacterSprite(_parent)`
- `participant:getBattleGoldBounty()`
- `participant:addGold(_amount)`
- `participant:removeGold(_amount)`
- `participant:onAfterMonsterSpriteSpawnedInstant(_monsterSprite)`
- `participant:getOpponentMonsterSpritesFaced(_monsterSprite)`
- `participant:getOpponentMonsterSpritesFacedArray(_monsterSprite)`
- `participant:addMonster(_monster, _insertIndex)`
- `participant:removeMonster(_monster)`
- `participant:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`
- `participant:onMonsterSpriteFainted(_monsterSprite, _onComplete)`
- `participant:getActionsPanelManagerSecondaryOptions(_monsterSprite)`
- `participant:onItemPick(_item, _optionalTargetMonster)`
- `participant:prepareItemMove(_monsterSprite, _item, _optionalTargetMonsterSprite)`
- `participant:onEscapePick()`
- `participant:prepareEscapeMove()`
- `participant:onBeforeEscapeMoveSuccessPriority()`
- `participant:onBeforeEscapeMoveSuccess(_onComplete, _participant, _monsterSprite)`
- `participant:onBeforeEscapeMoveFail(_onComplete)`
- `participant:requestInitialMonsterSprites(_selectInitialMonsterSprites)`
- `participant:getOnAfterRoundPriority()`
- `participant:onAfterRound(_onComplete)`
- `participant:requestNonLastMonsterSpriteForNewRound(_selectMonsterSprite)`
- `participant:onAfterParticipantWonPriority()`
- `participant:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### onlineOpponentTrainerParticipant

`classes.battle.participants.onlineOpponentTrainerParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractOpponentTrainerParticipant`, `classes.battle.participants.plugins.onlineParticipantPlugin`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `onlineOpponentTrainerParticipant:new(_options)`

<details><summary>Instance / other functions (8)</summary>

- `participant:createCharacterSprite(_parent)`
- `participant:getDisplayName()`
- `participant:getBattleMusic()`
- `participant:doPrepareRound(_onComplete)`
- `participant:onAfterRound(_onComplete)`
- `participant:onAfterAfterRoundPriority()`
- `participant:onAfterAfterRound(_onComplete)`
- `participant:requestInitialMonsterSprites(_selectMonsterSprite)`

</details>

### onlinePlayerTrainerParticipant

`classes.battle.participants.onlinePlayerTrainerParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractPlayerTrainerParticipant`, `classes.battle.participants.plugins.onlineParticipantPlugin`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.overlays.baseOverlayBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `onlinePlayerTrainerParticipant:new(_monsters)`

<details><summary>Instance / other functions (16)</summary>

- `participant:createCharacterSprite(_parent)`
- `participant:getDisplayName()`
- `participant:getOpponent()`
- `participant:onTurnPrepared(_preparedMove)`
- `participant:onRoundCreated()`
- `participant:forceClosePauseMenuAndOverlays()`
- `participant:onBeforeRoundPriority()`
- `participant:onBeforeRound(_onComplete, _battleEffects)`
- `participant:requestInitialMonsterSprites(_selectMonsterSprite)`
- `participant:getOnAfterRoundPriority()`
- `participant:onAfterRound(_onComplete)`
- `participant:requestNonLastMonsterSpriteForNewRound(_selectMonsterSprite)`
- `participant:onAfterRoundRequestedOptionalMonsterSprite(_selectedMonsterSprite, _battleLocation, _onComplete)`
- `participant:onAfterAfterRoundPriority()`
- `participant:onAfterAfterRound(_onComplete)`
- `participant:getActionsPanelManagerSecondaryOptions(_monsterSprite)`

</details>

### titanParticipant

`classes.battle.participants.titanParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractWildParticipant`

- `titanParticipant:new(_monsters, _optionalUID)`

<details><summary>Instance / other functions (11)</summary>

- `participant:getDisplayName()`
- `participant:getBattleMusic()`
- `participant:getPlayerEscapeButtonModePriority()`
- `participant:getPlayerEscapeButtonMode()`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onComplete)`
- `participant:onShowEncounterOverlay(_onEncounterOverlayShown, _onComplete)`
- `participant:shouldSpawnOnEncounterOverlayShown(_monsterSprite)`
- `participant:recallMainMonster(_onComplete)`
- `participant:sendOutMainMonster(_onComplete)`
- `participant:sendOutSecondaryMonsters(_onComplete)`
- `participant:spawnMonsterSpriteByFade(_monsterSprite, _battleLocation, _onComplete)`

</details>

### zoneParticipant

`classes.battle.participants.zoneParticipant`

- returns `t`
- requires: `classes.battle.participants.abstractWildParticipant`, `classes.battle.participants.plugins.catchableParticipantPlugin`, `classes.battle.participants.plugins.catchableWildParticipantPlugin`

- `zoneParticipant:new(_monsters, _optionalUID)`

<details><summary>Instance / other functions (9)</summary>

- `participant:getPlayerEscapeButtonMode()`
- `participant:getBattleMusic()`
- `participant:onShowEncounterOverlay(_onEncounterOverlayShown, _onComplete)`
- `participant:getXpReward(_faintedMonsterSprite)`
- `participant:shouldBlockForceRemove(_monsterSprite)`
- `participant:onAfterForceRemoveMonsterSprite(_monsterSprite, _continue)`
- `participant:onEnterBattleWithThreeMonsters(_monsterSprite1, _monsterSprite2, _monsterSprite3, _onComplete)`
- `participant:onEnterBattleWithTwoMonsters(_monsterSprite1, _monsterSprite2, _onComplete)`
- `participant:onEnterBattleWithOneMonster(_monsterSprite, _onComplete)`

</details>

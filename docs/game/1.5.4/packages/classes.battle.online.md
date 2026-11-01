# classes.battle.online

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[OnlineBattleData](#onlinebattledata), [OnlineBattleRules](#onlinebattlerules), [OnlineBattleSocket](#onlinebattlesocket), [OnlineMatchmakingSocket](#onlinematchmakingsocket), [OnlineSquad](#onlinesquad)

### OnlineBattleData

`classes.battle.online.OnlineBattleData`

- returns `t`
- requires: `classes.interface.battle.battleIndicatorBuilder`

- `OnlineBattleData:isCreated()`
- `OnlineBattleData:destroy()`
- `OnlineBattleData:rollRandomRankedBattleRewardItemUID()`
- `OnlineBattleData:new(_guessedServerAheadTime, _matchmakingTicket, _opponent, _playerMonsters, _matchmakingMode, _randomizationSeed, _decisionTimerDuration, _battleRules)`
- `OnlineBattleData:getOpponentCharacterConfig()`
- `OnlineBattleData:getOpponentId()`
- `OnlineBattleData:getOpponentName()`
- `OnlineBattleData:getOpponentAvatar()`
- `OnlineBattleData:getOpponentBattleEnvironmentUID()`
- `OnlineBattleData:getOpponentWinBattleTauntUID()`
- `OnlineBattleData:getMatchmakingTicket()`
- `OnlineBattleData:getBattleRules()`
- `OnlineBattleData:getMatchmakingMode()`
- `OnlineBattleData:getRandomizationSeed()`
- `OnlineBattleData:sendAnomalyAnalyticsEvent(_anomalyCategory, _anomalyDetails, _optionalStackTrace)`
- `OnlineBattleData:setServerDecisionTimerTimestamp(_serverDecisionTimertimestamp)`
- `OnlineBattleData:reloadServerDecisionTimerTimestamp()`
- `OnlineBattleData:hasDecisionTimerLessThanTwoSecondsLeft()`
- `OnlineBattleData:setOnDecisionTimerDepleted(_onDecisionTimerDepleted)`
- `OnlineBattleData:setOnDecisionTimerDepletedOrNilled(_onDecisionTimerDepletedOrNilled)`
- `OnlineBattleData:createDecisionTimerText(_parent, _fontUID, _options)`
- `OnlineBattleData:setFirstPlayerMonsterIndex(_playerMonsterIndex)`
- `OnlineBattleData:setFirstOpponentMonsterIndex(_opponentMonsterIndex)`
- `OnlineBattleData:setNextOpponentMonsterIndex(_opponentMonsterIndex)`
- `OnlineBattleData:filterPlayerMonsters(_playerMonsterChoices)`
- `OnlineBattleData:filterOpponentMonsters(_opponentMonsterChoices)`
- `OnlineBattleData:getOpponentMonsters()`
- `OnlineBattleData:getUnfilteredOpponentMonsters()`
- `OnlineBattleData:getPlayerMonsters()`
- `OnlineBattleData:getUnfilteredPlayerMonsters()`
- `OnlineBattleData:getFirstPlayerMonster()`
- `OnlineBattleData:getFirstOpponentMonster()`
- `OnlineBattleData:getNextOpponentMonster()`
- `OnlineBattleData:calculateAndGiveRewardsToPlayer(_playerWon)`
- `OnlineBattleData:showRewardIndicators(_parent)`
- `OnlineBattleData:hideRewardIndicators()`
- `OnlineBattleData:getTeamForProfileId(_playerId)`
- `OnlineBattleData:resolveTeamChosenByServer()`

### OnlineBattleRules

`classes.battle.online.OnlineBattleRules`

- returns `t`

- `OnlineBattleRules:new(_allowDuplicateMonsters, _allowDuplicateHoldItems, _setMonstersToLevel50, _squadSize)`
- `OnlineBattleRules:fromQueuePreferences(_queuePreference)`
- `OnlineBattleRules:forOnlineMatchmakingMode(_onlineMatchmakingMode)`
- `OnlineBattleRules:forBattleDome(_battleDomeDifficulty)`

### OnlineBattleSocket

`classes.battle.online.OnlineBattleSocket`

- returns `t`

- `OnlineBattleSocket:getWebsocket()`
- `OnlineBattleSocket:setOnRoundActionProposedEvent(_onRoundActionProposedEvent)`
- `OnlineBattleSocket:setOnMatchEndedEvent(_onMatchEndedEvent)`
- `OnlineBattleSocket:connect(_onAuthorizationFailed, _onAuthorizationSucceeded)`
- `OnlineBattleSocket:disconnect(_onDisconnect)`
- `OnlineBattleSocket:sendSyncTimeRequest(_onSyncTimeResponse, _requestCount)`
- `OnlineBattleSocket:sendJoinMatchRequest(_matchmakingTicket, _playerOnlineSquadMonsters, _onJoinMatchError, _onJoinMatchSuccess)`
- `OnlineBattleSocket:sendReconnectToMatchRequest(_matchmakingTicket, _onReconnectToMatchError, _onReconnectToMatchSuccess)`
- `OnlineBattleSocket:sendReadyToStartMatchSignal(_firstPlayerMonsterIndex, _playerMonsterIndices, _onMatchStartedEvent)`
- `OnlineBattleSocket:sendReadyToStartNextRoundSignal(_playerMonsterSprite, _onNextRoundStartedEvent)`
- `OnlineBattleSocket:sendRoundReadySignal(_onRoundEndedEvent)`
- `OnlineBattleSocket:sendRoundPreparationReadySignal(_onRoundTimerStartedEvent)`
- `OnlineBattleSocket:sendReadySignal()`
- `OnlineBattleSocket:sendSubmitRoundActionCommand(_preparedMove)`

### OnlineMatchmakingSocket

`classes.battle.online.OnlineMatchmakingSocket`

- returns `t`

- `OnlineMatchmakingSocket:getWebsocket()`
- `OnlineMatchmakingSocket:setOnJoinQueueResponse(_onJoinQueueResponse)`
- `OnlineMatchmakingSocket:setOnLeaveQueueResponse(_onLeaveQueueResponse)`
- `OnlineMatchmakingSocket:setOnQueuePopEvent(_onQueuePopEvent)`
- `OnlineMatchmakingSocket:setOnQueuePopResultEvent(_onQueuePopResultEvent)`
- `OnlineMatchmakingSocket:setOnQueueSearchingEvent(_onQueueSearchingEvent)`
- `OnlineMatchmakingSocket:connect(_onAuthorizationFailed, _onAuthorizationSucceeded)`
- `OnlineMatchmakingSocket:disconnect(_onDisconnect)`
- `OnlineMatchmakingSocket:sendJoinQueueRequest(_onlineMatchmakingMode, _optionalMatchmakingCode, _onJoinQueueResponse)`
- `OnlineMatchmakingSocket:sendLeaveQueueRequestAndClearOtherListeners(_onLeaveQueueResponse)`
- `OnlineMatchmakingSocket:sendAcceptQueuePopCommand()`
- `OnlineMatchmakingSocket:sendDenyQueuePopCommand()`

### OnlineSquad

`classes.battle.online.OnlineSquad`

- returns `t`

- `OnlineSquad:cast(_onlineSquadProperties)`
- `OnlineSquad:uncast(_onlineSquad)`
- `OnlineSquad:new(_name, _category)`
- `OnlineSquad:newWithPlayerSquad(_category)`
- `OnlineSquad:newWithPlayerOnlineLoanSquad(_category)`
- `OnlineSquad:resolveOptionallyModifiedMonsterForEntry(_entry)`

<details><summary>Instance / other functions (7)</summary>

- `onlineSquadMeta:setName(_name)`
- `onlineSquadMeta:getName()`
- `onlineSquadMeta:isPlayerSquad()`
- `onlineSquadMeta:isPlayerOnlineLoanSquad()`
- `onlineSquadMeta:isCustomSquad()`
- `onlineSquadMeta:getEntries()`
- `onlineSquadMeta:resolveErrorsFor(_onlineMatchmakingModeOrBattleDomeDifficulty)`

</details>

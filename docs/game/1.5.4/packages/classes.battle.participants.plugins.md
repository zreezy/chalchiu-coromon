# classes.battle.participants.plugins

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[catchableParticipantPlugin](#catchableparticipantplugin), [catchableTrainerParticipantPlugin](#catchabletrainerparticipantplugin), [catchableWildParticipantPlugin](#catchablewildparticipantplugin), [onlineParticipantPlugin](#onlineparticipantplugin), [opponentParticipantPlugin](#opponentparticipantplugin)

### catchableParticipantPlugin

`classes.battle.participants.plugins.catchableParticipantPlugin`

- returns `t`

- `catchableParticipantPlugin:install(_participant)`

<details><summary>Instance / other functions (4)</summary>

- `participant:shouldShowSparklesAfterMonsterSpriteSpawned(_monsterSprite)`
- `participant:onAfterMonsterSpriteSpawnedInstant(_monsterSprite)`
- `participant:forEachCatchablePotentOrPerfectShowPotentialCategoryIconOnMonsterSprite()`
- `participant:showPotentialCategoryIconOnNametag(_monsterSprite)`

</details>

### catchableTrainerParticipantPlugin

`classes.battle.participants.plugins.catchableTrainerParticipantPlugin`

- returns `t`

- `catchableTrainerParticipantPlugin:install(_participant)`

<details><summary>Instance / other functions (2)</summary>

- `participant:onBeforeCatchMessage(_spinner)`
- `participant:onBeforeCatchMonsterMessage(_monster, _spinner)`

</details>

### catchableWildParticipantPlugin

`classes.battle.participants.plugins.catchableWildParticipantPlugin`

- returns `t`

- `catchableWildParticipantPlugin:install(_participant)`

<details><summary>Instance / other functions (4)</summary>

- `participant:onBeforePlayerEscapeButtonMessage()`
- `participant:onBeforeCatchMessage(_spinner)`
- `participant:onBeforeCatchMonsterMessage(_monster, _spinner)`
- `participant:onEncounterOverlayShown()`

</details>

### onlineParticipantPlugin

`classes.battle.participants.plugins.onlineParticipantPlugin`

- returns `t`
- requires: `classes.interface.battle.battleIndicatorBuilder`

- `onlineParticipantPlugin:install(_participant)`

<details><summary>Instance / other functions (3)</summary>

- `participant:showDecisionTimer(_memorizationKey)`
- `participant:hideDecisionTimer(_memorizationKey)`
- `participant:optionallyHideDecisionTimer(_memorizationKey)`

</details>

### opponentParticipantPlugin

`classes.battle.participants.plugins.opponentParticipantPlugin`

- returns `t`

- `opponentParticipantPlugin:install(_participant, _optionalUID)`

<details><summary>Instance / other functions (14)</summary>

- `participant:getOptionalUID()`
- `participant:onBeforeCatchMessage(_spinner)`
- `participant:onBeforeCatchMonsterMessage(_monster, _spinner)`
- `participant:getBattleMusic()`
- `participant:addMonsterSpriteInBattle(_monsterSprite, _optionalBattleLocation)`
- `participant:getXpReward(_faintedMonsterSprite)`
- `participant:addGold(_amount)`
- `participant:removeGold(_amount)`
- `participant:getBattleGoldBounty()`
- `participant:onShowEncounterOverlay(_onEncounterOverlayShown, _onComplete)`
- `participant:onEncounterOverlayShown()`
- `participant:onAfterEncounterOverlayHidden(_onComplete)`
- `participant:startBattleMusic()`
- `participant:onStartFightWithPlayer(_onBeforeBattleInit, _onComplete)`

</details>

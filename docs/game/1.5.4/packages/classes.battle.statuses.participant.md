# classes.battle.statuses.participant

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[abstractTrainerParticipantStatus](#abstracttrainerparticipantstatus), [robbedStatus](#robbedstatus)

### abstractTrainerParticipantStatus

`classes.battle.statuses.participant.abstractTrainerParticipantStatus`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `abstractTrainerParticipantStatus:new(_statusParticipant)`

<details><summary>Instance / other functions (10)</summary>

- `effect:getTeam()`
- `effect:isSelf(_participant)`
- `effect:isOpponent(_participant)`
- `effect:onRemove(_onComplete)`
- `effect:onApply(_onComplete)`
- `effect:getTrainerParticipantStatusAIScore()`
- `effect:canApply()`
- `effect:tryToApply(_optionsOrOnComplete, _onComplete)`
- `effect:doInstantRemove()`
- `effect:doRemove(_onComplete)`

</details>

### robbedStatus

`classes.battle.statuses.participant.robbedStatus`

- returns `t`
- requires: `classes.battle.statuses.participant.abstractTrainerParticipantStatus`

- `robbedStatus:new(_robbedParticipant, _robbingMonsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `effect:getTrainerParticipantStatusAIScore()`
- `effect:canApply()`
- `effect:getAmountOfTimesRobbed()`
- `effect:onApply(_onComplete)`
- `effect:onRemove(_onComplete)`

</details>

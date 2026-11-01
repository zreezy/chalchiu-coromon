# classes.debug.exports.trailer

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[debug_create_rogueTrailerClips](#debug_create_roguetrailerclips), [debug_create_trailerClips](#debug_create_trailerclips)

### debug_create_rogueTrailerClips

`classes.debug.exports.trailer.debug_create_rogueTrailerClips`

- uses coroutines
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.battle.abstractBattleEffect`, `classes.hexagon.RogueWorldInterface`, `classes.hexagon.objects.HexagonTilePlatform`
- defines globals: `debugScreen` = false, `debugIsRecordingTrailer` = true

<details><summary>Functions (11)</summary>

- `_environment:getEncounterOverlayType()`
- `battleEffect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `battleEffect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`
- `battleEffect:onAfterRound(_onComplete)`
- `battleEffect:onAfterTurn(_onComplete)`
- `battleEffect:onBeforeRoundPriority()`
- `battleEffect:onBeforeRound(_onComplete, _battleEffects)`
- `enemyParticipant:getBattleMusic()`
- `worldHelper:unloadMapWithTransition(_unloadTransition)`

</details>

<details><summary>Fields with default values (4)</summary>

- `debugSettings.battle.playerHasAI` = `true`
- `debugSettings.battle.skipOnEnterBattle` = `false`
- `debugSettings.battle.skipTrainerSpawnAnimation` = `false`
- `debugSettings.battle.skipEncounterOverlay` = `false`

</details>

### debug_create_trailerClips

`classes.debug.exports.trailer.debug_create_trailerClips`

- uses coroutines
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.battle.abstractBattleEffect`
- defines globals: `debugScreen` = false, `debugIsRecordingTrailer` = true

<details><summary>Functions (14)</summary>

- `playerSettings:getPlayerCharacterConfig(...)`
- `_environment:getEncounterOverlayType()`
- `battleEffect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `battleEffect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`
- `battleEffect:onAfterRound(_onComplete)`
- `battleEffect:onAfterTurn(_onComplete)`
- `battleEffect:onBeforeRoundPriority()`
- `battleEffect:onBeforeRound(_onComplete, _battleEffects)`
- `enemyParticipant:getBattleMusic()`
- `worldHelper:unloadMapWithTransition(_unloadTransition)`
- `closeBattleOnEnterBattleBattleEffect:onEnterBattlePriority()`
- `closeBattleOnEnterBattleBattleEffect:onEnterBattle(_onComplete)`

</details>

<details><summary>Fields with default values (4)</summary>

- `debugSettings.battle.playerHasAI` = `true`
- `debugSettings.battle.skipOnEnterBattle` = `false`
- `debugSettings.battle.skipTrainerSpawnAnimation` = `false`
- `debugSettings.battle.skipEncounterOverlay` = `false`

</details>

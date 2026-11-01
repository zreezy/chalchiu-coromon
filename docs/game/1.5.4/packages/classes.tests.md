# classes.tests

Coromon 1.5.4. 17 module(s). [Back to index](../README.md)

[test_battleConfig_with_screenshots](#test_battleconfig_with_screenshots), [test_characterConfigs](#test_characterconfigs), [test_fonts](#test_fonts), [test_items](#test_items), [test_monsterSpriteSkins](#test_monsterspriteskins), [test_monsters](#test_monsters), [test_onlineAvatars](#test_onlineavatars), [test_randomizer](#test_randomizer), [test_saveslotDataMigrations](#test_saveslotdatamigrations), [test_skills](#test_skills), [test_smarterTrainerAI](#test_smartertrainerai), [test_tiledMaps](#test_tiledmaps), [test_tiledObjects](#test_tiledobjects), [test_traits](#test_traits), [test_translation_differences](#test_translation_differences), [test_translation_syntax_errors](#test_translation_syntax_errors), [tests](#tests)

### test_battleConfig_with_screenshots

`classes.tests.test_battleConfig_with_screenshots`

### test_characterConfigs

`classes.tests.test_characterConfigs`

- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

### test_fonts

`classes.tests.test_fonts`

- requires: `fonts.glyphIdByCharacter_pixelArt`, `classes.tests.fontCharacters.charactersWhichMayBeIncludedInNonPixelArtFonts`

### test_items

`classes.tests.test_items`

### test_monsterSpriteSkins

`classes.tests.test_monsterSpriteSkins`

### test_monsters

`classes.tests.test_monsters`

- requires: `classes.monsters.monsters.abstractMonsterData`

### test_onlineAvatars

`classes.tests.test_onlineAvatars`

### test_randomizer

`classes.tests.test_randomizer`

- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.monsters.families.abstractMonsterFamilyData`, `classes.modules.PlayerSettingsDifficultyObject`
- defines globals: `pairs` = function(_table)

<details><summary>Functions (1)</summary>

- `pairs(_table)`

</details>

### test_saveslotDataMigrations

`classes.tests.test_saveslotDataMigrations`

- requires: `crypto`

### test_skills

`classes.tests.test_skills`

- uses coroutines
- requires: `classes.battle.abstractBattleEffect`

<details><summary>Functions (9)</summary>

- `allSkillUIDsBattleEffect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `allSkillUIDsBattleEffect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `allSkillUIDsBattleEffect:shouldBlockForceRemove(_monsterSprite)`
- `allSkillUIDsBattleEffect:shouldAlwaysSucceedEscape(_monsterSprite)`
- `allSkillUIDsBattleEffect:onBeforeApplyMonsterSpriteStatus(_onSkipMonsterSpriteStatus, _onContinue, _monsterSprite, _status)`
- `allSkillUIDsBattleEffect:mutateDamage()`
- `allSkillUIDsBattleEffect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `allSkillUIDsBattleEffect:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `allSkillUIDsBattleEffect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

<details><summary>Fields with default values (2)</summary>

- `debugSettings.battle.isNoSkillEnergyCost` = `true`
- `debugSettings.battle.playerHasAI` = `true`

</details>

### test_smarterTrainerAI

`classes.tests.test_smarterTrainerAI`

- requires: `classes.battle.abstractBattleEffect`

<details><summary>Functions (8)</summary>

- `soundHelper:playSound(_pathAlias, _options, _onDestroy, ...)`
- `soundHelper:loadSound()`
- `soundHelper:loadStream()`
- `keepTrackOfWinnerBattleEffect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`
- `keepTrackOfWinnerBattleEffect:getDamageRandomizerPriority()`
- `keepTrackOfWinnerBattleEffect:getDamageRandomizer()`
- `keepTrackOfWinnerBattleEffect:onEnterBattle(_onComplete)`
- `keepTrackOfWinnerBattleEffect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`

</details>

<details><summary>Fields with default values (4)</summary>

- `debugSettings.battle.playerHasAI` = `true`
- `debugSettings.battle.skipOnEnterBattle` = `true`
- `debugSettings.battle.skipTrainerSpawnAnimation` = `true`
- `debugSettings.battle.skipEncounterOverlay` = `true`

</details>

### test_tiledMaps

`classes.tests.test_tiledMaps`

- defines globals: `isTakingWorldScreenshots` = true

<details><summary>Functions (3)</summary>

- `os.time()`
- `cutsceneHelper:loadCutscene()`
- `cutsceneHelper:loadCutsceneWithOnComplete()`

</details>

### test_tiledObjects

`classes.tests.test_tiledObjects`

### test_traits

`classes.tests.test_traits`

### test_translation_differences

`classes.tests.test_translation_differences`

### test_translation_syntax_errors

`classes.tests.test_translation_syntax_errors`

- defines globals: `Analytics` = value

### tests

`classes.tests.tests`

- requires: `classes.tests.ui_screenshots.test_ui_with_screenshots`
- defines globals: `debugScreen` = false, `ifFailed` = function(_function, _onFail), `printIfFailed` = function(_errorKey, _function), `forEachTranslationFile` = function(_onTranslationFile), `preloadPropertyFile` = function(_path, _basename, _basenameWithoutLanguageCode), `loadPropertyFile` = function(_path, _basename, _basenameWithoutLanguageCode, _onTranslationKey), `variableToHelpIntellijMakeClickableLinks` = true

<details><summary>Functions (5)</summary>

- `ifFailed(_function, _onFail)`
- `printIfFailed(_errorKey, _function)`
- `forEachTranslationFile(_onTranslationFile)`
- `preloadPropertyFile(_path, _basename, _basenameWithoutLanguageCode)`
- `loadPropertyFile(_path, _basename, _basenameWithoutLanguageCode, _onTranslationKey)`

</details>

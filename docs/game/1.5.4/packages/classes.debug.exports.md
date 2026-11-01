# classes.debug.exports

Coromon 1.5.4. 15 module(s). [Back to index](../README.md)

[debug_create_androidInAppPurchaseCsv](#debug_create_androidinapppurchasecsv), [debug_create_coromonGeneratorImportFiles](#debug_create_coromongeneratorimportfiles), [debug_create_localisationExport](#debug_create_localisationexport), [debug_create_metadataPatchNotes](#debug_create_metadatapatchnotes), [debug_create_randomDoubleBattleOverview](#debug_create_randomdoublebattleoverview), [debug_create_screenshots](#debug_create_screenshots), [debug_create_screenshots_rogue](#debug_create_screenshots_rogue), [debug_create_tapTapLocalisationExport](#debug_create_taptaplocalisationexport), [debug_create_textHeaders](#debug_create_textheaders), [debug_export_discordEmojis](#debug_export_discordemojis), [debug_export_megaMonsterSheet](#debug_export_megamonstersheet), [debug_export_npcCharacters](#debug_export_npccharacters), [debug_export_staticMonsterFrames](#debug_export_staticmonsterframes), [debug_import_tapTapLocalisation](#debug_import_taptaplocalisation), [tapTapLocalisationHelper](#taptaplocalisationhelper)

### debug_create_androidInAppPurchaseCsv

`classes.debug.exports.debug_create_androidInAppPurchaseCsv`

- defines globals: `debugScreen` = false

### debug_create_coromonGeneratorImportFiles

`classes.debug.exports.debug_create_coromonGeneratorImportFiles`

- defines globals: `debugScreen` = false

### debug_create_localisationExport

`classes.debug.exports.debug_create_localisationExport`

- defines globals: `debugScreen` = false

### debug_create_metadataPatchNotes

`classes.debug.exports.debug_create_metadataPatchNotes`

- defines globals: `debugScreen` = false

### debug_create_randomDoubleBattleOverview

`classes.debug.exports.debug_create_randomDoubleBattleOverview`

- requires: `classes.modules.battle.BattleBackground`, `classes.modules.battle.monsterSpriteBuilder`
- defines globals: `debugScreen` = false

### debug_create_screenshots

`classes.debug.exports.debug_create_screenshots`

- uses coroutines
- requires: `classes.battle.abstractBattleEffect`
- defines globals: `debugScreen` = false

<details><summary>Functions (10)</summary>

- `_options.enemyParticipant:getBattleMusic()`
- `battleEffect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `battleEffect:onBeforeRoundPriority()`
- `battleEffect:onBeforeRound(_onComplete, _battleEffects)`
- `battleEffect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `Battle:hideNametagsForTeamExcept(_, _, _onComplete)`
- `playerSettings:getPlayerCharacterConfig()`
- `volcanoCaveUtility:didSpawnAtEnd()`

</details>

<details><summary>Fields with default values (4)</summary>

- `debugSettings.battle.playerHasAI` = `true`
- `debugSettings.battle.skipOnEnterBattle` = `true`
- `debugSettings.battle.skipTrainerSpawnAnimation` = `true`
- `debugSettings.battle.skipEncounterOverlay` = `true`

</details>

### debug_create_screenshots_rogue

`classes.debug.exports.debug_create_screenshots_rogue`

- uses coroutines
- requires: `classes.battle.abstractBattleEffect`
- defines globals: `debugScreen` = false

<details><summary>Functions (7)</summary>

- `_options.enemyParticipant:getBattleMusic()`
- `battleEffect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `battleEffect:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `battleEffect:onBeforeRoundPriority()`
- `battleEffect:onBeforeRound(_onComplete, _battleEffects)`
- `Battle:hideNametagsForTeamExcept(_, _, _onComplete)`

</details>

<details><summary>Fields with default values (4)</summary>

- `debugSettings.battle.playerHasAI` = `true`
- `debugSettings.battle.skipOnEnterBattle` = `true`
- `debugSettings.battle.skipTrainerSpawnAnimation` = `true`
- `debugSettings.battle.skipEncounterOverlay` = `true`

</details>

### debug_create_tapTapLocalisationExport

`classes.debug.exports.debug_create_tapTapLocalisationExport`

- requires: `classes.debug.exports.tapTapLocalisationHelper`, `classes.modules.csv`
- defines globals: `debugScreen` = false

### debug_create_textHeaders

`classes.debug.exports.debug_create_textHeaders`

- requires: `classes.monsters.monsters.abstractMonsterData`
- defines globals: `debugScreen` = false

<details><summary>Fields with default values (2)</summary>

- `textHeaderText.xScale` = `0.5`
- `textHeaderText.yScale` = `0.5`

</details>

### debug_export_discordEmojis

`classes.debug.exports.debug_export_discordEmojis`

### debug_export_megaMonsterSheet

`classes.debug.exports.debug_export_megaMonsterSheet`

### debug_export_npcCharacters

`classes.debug.exports.debug_export_npcCharacters`

- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

### debug_export_staticMonsterFrames

`classes.debug.exports.debug_export_staticMonsterFrames`

### debug_import_tapTapLocalisation

`classes.debug.exports.debug_import_tapTapLocalisation`

- requires: `classes.debug.exports.tapTapLocalisationHelper`, `classes.modules.csv`
- defines globals: `debugScreen` = false

### tapTapLocalisationHelper

`classes.debug.exports.tapTapLocalisationHelper`

- returns `t`

- `tapTapLocalisationHelper:getTapTapColumns()`
- `tapTapLocalisationHelper:getTapTapTemplateRows()`
- `tapTapLocalisationHelper:getTapTapExportLanguageCodes()`
- `tapTapLocalisationHelper:getPropertyFileDescriptors()`
- `tapTapLocalisationHelper:getTranslationRequirePath(_propertyFile, _languageCode)`
- `tapTapLocalisationHelper:getTapTapTranslationRelativePath(_propertyFile)`
- `tapTapLocalisationHelper:getFlatTranslationRows(_languageCodes)`
- `tapTapLocalisationHelper:getFlatTranslationRowsByKey(_rows)`
- `tapTapLocalisationHelper:createTranslationsByPropertyFile(_rows, _languageCode)`
- `tapTapLocalisationHelper:setTranslationValue(_translations, _row, _value)`
- `tapTapLocalisationHelper:createExportCsvRows()`
- `tapTapLocalisationHelper:encodeTranslationLuaFile(_translations)`
- `tapTapLocalisationHelper:createImportReportCsvRows(_reportRows)`

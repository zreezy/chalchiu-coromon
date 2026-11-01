# classes.debug.simulation

Coromon 1.5.4. 16 module(s). [Back to index](../README.md)

[DebugBattle](#debugbattle), [DebugBattleEffect](#debugbattleeffect), [debug_load_IAP](#debug_load_iap), [debug_load_battle](#debug_load_battle), [debug_load_newGame](#debug_load_newgame), [debug_load_onlineBattle](#debug_load_onlinebattle), [debug_load_overlay](#debug_load_overlay), [debug_load_playground](#debug_load_playground), [debug_load_rogue_hexagonMapGeneration](#debug_load_rogue_hexagonmapgeneration), [debug_load_rogue_hexagonMap_configureBiome](#debug_load_rogue_hexagonmap_configurebiome), [debug_load_rogue_hexagonMap_runPresets](#debug_load_rogue_hexagonmap_runpresets), [debug_load_rogue_hexagonMap_tileTesting](#debug_load_rogue_hexagonmap_tiletesting), [debug_load_rogue_outpost](#debug_load_rogue_outpost), [debug_load_rogue_overworldCutscenes](#debug_load_rogue_overworldcutscenes), [debug_load_saveslot](#debug_load_saveslot), [debug_load_screen](#debug_load_screen)

### DebugBattle

`classes.debug.simulation.DebugBattle`

- returns `t`
- requires: `classes.battle.participants.zoneParticipant`, `classes.battle.participants.titanParticipant`, `classes.battle.participants.offlineOpponentTrainerParticipant`, `classes.lists.characterConfigList`
- defines globals: `debugScreen` = false

- `DebugBattle:inCoromon1(_battleEnvironment)`
- `DebugBattle:inCoromonRoguePlanet(_hexagonBiome, _isDoubleBattle)`

<details><summary>Instance / other functions (15)</summary>

- `DebugBattleBuilder:withTrainer(_trainerEncounterOverlayMode)`
- `DebugBattleBuilder:withWildCoromon()`
- `DebugBattleBuilder:withTitan()`
- `DebugBattleBuilder:withPlayerMonsters(_playerMonsters)`
- `DebugBattleBuilder:withOpponentMonsters(_opponentMonsters)`
- `DebugBattleBuilder:withItems(_items)`
- `DebugBattleBuilder:withoutItems()`
- `DebugBattleBuilder:withBattleEffects(_battleEffects)`
- `DebugBattleBuilder:onBeforeBattleStarts(_onBeforeBattleStartsFunction)`
- `DebugBattleBuilder:withWeatherAnimations()`
- `DebugBattleBuilder:withEncounterAnimations()`
- `DebugBattleBuilder:withReducedRandomnessInBattles()`
- `DebugBattleBuilderForCoromon1:withBattleEnvironment(_battleEnvironment)`
- `DebugBattleBuilderForCoromonRoguePlanet:withHexagonBiome(_hexagonBiome)`
- `DebugBattleBuilder:build()`

</details>

### DebugBattleEffect

`classes.debug.simulation.DebugBattleEffect`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `DebugBattleEffect:shouldNeverMiss(_shouldApply)`
- `DebugBattleEffect:shouldNeverCriticalHit(_shouldApply)`
- `DebugBattleEffect:shouldAlwaysCriticalHit(_shouldApply)`
- `DebugBattleEffect:noDamageRandomizer()`
- `DebugBattleEffect:shouldAlwaysSkipTurn(_shouldApply)`
- `DebugBattleEffect:shouldAlwaysStartWithMonsterSpriteStatus(_createMonsterSpriteStatus)`
- `DebugBattleEffect:shouldAlwaysStartWithWeatherEffect(_createWeatherEffect)`

<details><summary>Instance / other functions (7)</summary>

- `effect:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `effect:getDamageRandomizerPriority()`
- `effect:getDamageRandomizer()`
- `effect:onBeforePrepareMonsterSprite(_onSkipPrepare, _onContinue, _participant, _monsterSprite)`
- `effect:onBeforeRoundPriority()`
- `effect:onBeforeRound(_onComplete, _battleEffects)`

</details>

### debug_load_IAP

`classes.debug.simulation.debug_load_IAP`

- defines globals: `debugScreen` = false

### debug_load_battle

`classes.debug.simulation.debug_load_battle`

### debug_load_newGame

`classes.debug.simulation.debug_load_newGame`

- defines globals: `debugScreen` = false, `debugMapPath` = nil, `debugMapFile` = nil, `debugMapOptions` = nil

### debug_load_onlineBattle

`classes.debug.simulation.debug_load_onlineBattle`

- requires: `sqlite3`
- defines globals: `debugScreen` = "OnlineMatchmakingScreen", `debugScreenScreenOptions` = table

<details><summary>Fields with default values (2)</summary>

- `debugScreenScreenOptions.onlineMatchmakingMode` = `"casualCustom"`
- `debugScreenScreenOptions.automaticallyStartMatchmaking` = `true`

</details>

### debug_load_overlay

`classes.debug.simulation.debug_load_overlay`

- requires: `classes.modules.battle.monsterSpriteBuilder`, `classes.interface.overlays.monsterSpriteDetailsOverlayBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.customInputDeviceConfiguratorPopupBuilder`
- defines globals: `debugScreen` = false

<details><summary>Fields with default values (1)</summary>

- `debugSettings.items.hasAllItems` = `true`

</details>

### debug_load_playground

`classes.debug.simulation.debug_load_playground`

- defines globals: `debugScreen` = false

### debug_load_rogue_hexagonMapGeneration

`classes.debug.simulation.debug_load_rogue_hexagonMapGeneration`

- requires: `classes.interface.horizontalFillSliderBuilder`, `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

<details><summary>Fields with default values (10)</summary>

- `_G.showHexagonPositionTexts` = `false`
- `_G.showActionTilePositionTexts` = `false`
- `_G.showFullMap` = `false`
- `_G.showFullMapWithMapGenerationSliders` = `false`
- `_G.skipActionTiles` = `false`
- `_G.skipHexagonMapTransition` = `false`
- `_G.exportImageUponMapLoad` = `true`
- `_G.shouldCutOffHexagonMapEdges` = `true`
- `_G.showConnectedTileDirection` = `false`
- `_G.debugHexagonWorldSeed` = `0.91902131164401`

</details>

### debug_load_rogue_hexagonMap_configureBiome

`classes.debug.simulation.debug_load_rogue_hexagonMap_configureBiome`

- requires: `classes.interface.horizontalFillSliderBuilder`, `classes.modules.interface.scrollViewBuilder`, `classes.hexagon.RogueWorldInterface`
- defines globals: `debugScreen` = false

<details><summary>Fields with default values (7)</summary>

- `debugSettings.coromonRoguePlanet.hexagonWorldSeed` = `0.91902131164401`
- `debugSettings.coromonRoguePlanet.showHexagonTilePositionTexts` = `false`
- `debugSettings.coromonRoguePlanet.showActionTilePositionTexts` = `false`
- `debugSettings.coromonRoguePlanet.skipActionTiles` = `false`
- `debugSettings.coromonRoguePlanet.skipHexagonWorldInitialTileTransition` = `true`
- `debugSettings.coromonRoguePlanet.exportHexagonWorldImageUponMapLoad` = `true`
- `debugSettings.world.skipWorldTransition` = `true`

</details>

### debug_load_rogue_hexagonMap_runPresets

`classes.debug.simulation.debug_load_rogue_hexagonMap_runPresets`

- requires: `classes.hexagon.biomes.AbstractGeneratedHexagonWorldBiome`, `classes.battle.abstractBattleEffect`
- defines globals: `debugScreen` = false

<details><summary>Functions (2)</summary>

- `effect:mutateXpEarnedPriority()`
- `effect:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`

</details>

### debug_load_rogue_hexagonMap_tileTesting

`classes.debug.simulation.debug_load_rogue_hexagonMap_tileTesting`

- defines globals: `debugScreen` = false

<details><summary>Fields with default values (6)</summary>

- `debugSettings.coromonRoguePlanet.hexagonWorldSeed` = `1234`
- `debugSettings.coromonRoguePlanet.showHexagonTilePositionTexts` = `false`
- `debugSettings.coromonRoguePlanet.showActionTilePositionTexts` = `false`
- `debugSettings.coromonRoguePlanet.skipActionTiles` = `false`
- `debugSettings.coromonRoguePlanet.skipHexagonWorldInitialTileTransition` = `true`
- `debugSettings.coromonRoguePlanet.exportHexagonWorldImageUponMapLoad` = `true`

</details>

### debug_load_rogue_outpost

`classes.debug.simulation.debug_load_rogue_outpost`

- defines globals: `debugScreen` = false

### debug_load_rogue_overworldCutscenes

`classes.debug.simulation.debug_load_rogue_overworldCutscenes`

- defines globals: `debugScreen` = false

### debug_load_saveslot

`classes.debug.simulation.debug_load_saveslot`

- defines globals: `debugScreen` = false

### debug_load_screen

`classes.debug.simulation.debug_load_screen`

- returns `screenSetups`
- defines globals: `debugScreenScreenOptions` = value, `debugScreen` = value

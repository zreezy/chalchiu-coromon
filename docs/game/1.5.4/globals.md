# Globals (Coromon 1.5.4)

Globals the game defines, which mods can reach through `globals.<name>`. Members are the fields and methods the game itself uses on each global, most used first. [Back to index](README.md)

| Global | Defined as | Used by | Most used members |
|---|---|---|---|
| `localise` | function(_key, _params) in `languageHelper` | 806 |  |
| `worldHelper` | module "classes.world.worldHelper" in `require_specific` | 627 | `:getSpawnableByName` `:getWorldMapData` `:createInstance` `:unloadMapWithTransition` `:spawnDelayedSpawnable` `:getMapFile` `:getEventDispatcher` `:pause` `.unloadMapWithTransition` `.getAllSpawnables` |
| `magnet` | module "classes.modules.magnet" in `require_core` | 587 | `:center` `:bottomCenter` `:topCenter` `:topLeft` `:bottomRight` `:bottomLeft` `:topRight` `:centerLeft` `.center` |
| `array` | module "classes.libraries.array" in `require_core` | 568 | `.map` `.findByFunction` `.filter` `.forEach` `.remove` `.insert` `.contains` `.anyMatches` |
| `math` | math in `math` | 469 | `.floor` `.random` `.max` `.min` `.round` `.abs` `.ceil` `.clamp` |
| `eventManager` | module "classes.modules.eventManager" in `require_core` | 453 | `:listen` `:listenWithWrapper` `:listenUntilObjectDestroyed` `:dispatch` `:stopListening` `:listenOnce` |
| `transition` | module "classes.libraries.transition" in `require_core` | 446 | `:createRightToLeftAwareTransition` `.to` `.toDelta` `.fadeOut` `.timeShake` `.fadeIn` `.removeSelf` `.doRemoveSelf` `.path` |
| `timer` | table in `timer`; module "classes.libraries.timer" in `require_core` | 431 | `.delay` `.performWithDelay` `.cancel` `.performWithDelayAndNow` `.pause` `.performWithRandomDelay` `.cancelAll` `.resume` |
| `battlePriorities` | module "classes.battle.config.battlePriorities" in `require_specific` | 420 | `.move` `.onBeforeRound` `.onAfterRound` `.onAfterPartialSkillMove` `.mutateSkillPower` `.onBeforeTurn` `.mutateSkillDamage` `.onAfterMonsterSpriteSpawned` |
| `cutsceneUtility` | module "classes.modules.utilities.cutsceneUtility" in `require_specific` | 405 | `:createNpcDialogCutscene` `:createNpcInteractCutscene` `:createPlayerDialogCutscene` `:createSpotEncounterCutscene` `:getBlackScreenOverlay` `:createSpeakerlessDialogCutscene` `:createPlayerTileCutsceneAndDestroyOnTrigger` `:createObjectInteractCutscene` |
| `soundHelper` | module "classes.modules.soundHelper" in `require_core` | 402 | `:playSound` `:loadSound` `:playMusic` `:playIntro` `:unloadSound` `:stopSound` `:resumeMusic` `:stopMusic` |
| `Battle` | module "classes.modules.battle.Battle" in `require_specific` | 401 | `:getFrontLayer` `:getMonsterSpritesInBattle` `:getSkillFrontLayer` `:getBattleParticipant` `:getBelowInterfaceGroup` `:isCreatedAsOnline` `:getInterfaceGroup` `:getSkillBackLayer` `.hideNametagsForTeamExcept` |
| `spriteHelper` | module "classes.modules.spriteHelper" in `require_core` | 387 | `:newPlaying` `:new` `:nextFrame` `:newFakeSequence` `:newAnimatedFill` `:newWithDisplayObjectSequences` `:syncSetFrame` `:mapSpriteFunctionsTo` |
| `display` | display in `display`; module "classes.libraries.display" in `require_core` | 339 | `:isDisplayObject` `:applyDisplayObjectMutations` `:setTimeScale` `:setDebugTimeScale` `:isAt` `:getChildrenRecursive` `:spawnPrepared` `:handleWeirdReloadingBug` `.remove` `.contentToScreenScale` `.currentStage` `.setDefault` |
| `spriteEvent` | module "classes.modules.convenience.spriteEvent" in `require_core` | 333 | `.removeSelfOnEnded` `.onFrame` `.newSequenceOnEnded` `.onEnded` `.synchroniseFrames` `.onFrameInSequence` `.onLoop` `.newStaticSequenceOnEnded` |
| `imageHelper` | module "classes.modules.imageHelper" in `require_core` | 294 | `:new` `:newObject` `:newFrame` `:newFilled` `:newHorizontallyRepeated` `:newScaled` `:newRepeatedObject` `:newScaledFrame` |
| `rectHelper` | module "classes.modules.rectHelper" in `require_core` | 277 | `:newContainerObject` `:newRect` `:newFullScreenRect` `:newLine` `:newDot` `:newContainer` `:newRectObject` `:newFullScreenRectObject` |
| `colors` | module "classes.constants.colors" in `main` | 276 | `.WHITE` `.BLACK` `.appPalette` `.TEXT_LIGHTBLUE` `.TEXT_YELLOW` `.TEXT_SUBTLE_HIGHLIGHT` `.RED` `.UI_TEXT_ROGUE_DIALOG` |
| `functionHelper` | module "classes.modules.functionHelper" in `require_core` | 268 | `:afterCount` `:forEachOnComplete` `:optionalOnComplete` `:forEachOnCompleteParallel` `:forEachOnCompleteParallelWithDelay` `:executeMultiple` `:createCounter` `:executeOnce` |
| `dialog` | module "classes.interface.dialog.dialog" in `require_specific` | 266 | `:new` `:onAfterHide` `:addText` `:addQuestion` `:onTextStarted` `:addQuestionAndShowGold` `:onTextShown` `:get` |
| `gameSettings` | module "classes.modules.gameSettings" in `main` | 262 | `:isBattleCreatedAsOnlineOrReducedRandomnessInBattles` `:getOptionalFileSuffixForTimescaleForBattle` `:getSafeHorizontalInset` `:saveSettings` `:getReduceFlashesSetting` `:getSafeHorizontalInsetOrAtleast` `:shouldReduceMotion` `:getEnableOnlineSavesSetting` |
| `spawnableHelper` | module "classes.modules.spawnableHelper" in `require_specific` | 250 | `:endCutscene` `:getPlayerSpawnable` `:startCutscene` `:destroySpawnable` `:prepareTeleport` `:getPlayerSpawnableConstructor` `:createMagnetObject` `:getTileInFrontOf` |
| `skillMoveUtility` | module "classes.modules.utilities.skillMoveUtility" in `require_specific` | 236 | `:doDefaultHitWithBlinkWithDamageAndFloatingText` `:getTransitionableBattleObjects` `:doSmallShake` `:doTinyShake` `:tryRecoverHealth` `:doDefaultHitWithBlinkWithoutDamage` `:doDefaultHitWithBlinkWithDamage` `:doSingleBlinkWithoutDamage` |
| `textHelper` | module "classes.modules.textHelper" in `require_core` | 235 | `:new` `:newPrepared` `:spawnPrepared` `:width` `:addCharacterObjectCreateFunction` `:height` `:playSoundOnTextChange` `:typeWriter` |
| `outQuad` | function(t, tMax, start, delta, propertyName) in `easing` | 218 |  |
| `table` | table in `table` | 216 | `.randomKey` `.getKeys` `.removeKey` `.sum` `.merge` `.insert` `.countKeys` `.countKeysByFunction` |
| `device` | module "classes.libraries.device" in `require_core` | 208 | `:hasToUnlockFullGame` `:calculateHeightCompactnessFactorFor` `:isSwitchWithoutOnline` `.width` `.height` `.isSwitch` `.isSimulator` `.isAndroid` `.isDesktop` `.maxContentWidth` `.maxContentHeight` |
| `linear` | function(t, tMax, start, delta, propertyName) in `easing` | 197 |  |
| `MTE` | module "classes.modules.mte.mte" in `require_specific` | 196 | `.getTiledWorld` `.magnet` `.addSprite` `.transitionCamera` `.setCameraFocus` `.transition` `.addSpriteAbove` `.getMap` |
| `worldInterface` | module "classes.world.worldInterface" in `require_specific` | 188 | `:createItemPopup` `:startNewChapterAndShowIndicator` `:createMonsterPopup` `:completeQuestAndShowIndicator` `:startQuestAndShowIndicator` `:isCreated` `:showCheckpointIndicatorIfNotVisitedCurrentMap` `:isShown` `.warningBindItemMessageToastOptions` `.infoBindItemMessageToastOptions` |
| `localiseWrapper` | function(_key, _params) in `languageHelper` | 186 |  |
| `inputHelper` | module "classes.modules.input.inputHelper" in `require_core` | 185 | `:addTouchable` `:addMouseHoverable` `:blockInput` `:unblockInput` `:getTouchListener` `:onMouseHoverBeganOrEnded` `:onReleaseWithinBounds` `:listenToTouchOrUseButton` |
| `groupHelper` | module "classes.modules.groupHelper" in `require_core` | 183 | `:new` `:newContainer` `:clear` `:newAnchored` `:newObject` `:borrowObject` `:returnBorrowedObject` `:setObjectContainer` |
| `playerSettings` | module "classes.modules.playerSettings" in `require_specific` | 183 | `:getDifficultyObject` `:getPlayerCharacterConfig` `:setWearableItemUID` `:addVisitedLocation` `:getDifficulty` `:setDifficulty` `:isCreated` `:getWearableItemUID` `.getPlayerCharacterConfig` |
| `statBoostStatus` | module "classes.battle.statuses.monster.other.statBoostStatus" in `require_specific` | 181 | `:new` |
| `BattleEnvironment` | module "classes.enums.BattleEnvironment" in `require_specific` | 172 | `.luxSolisRoute` `.iceCave` `.volcano` `.desertRoute` `.pyramid` `.luxSolisTown` `.powerTower` `.templeDungeon` |
| `magnetRightToLeftAware` | value in `require_core` | 172 | `:topLeft` `:centerLeft` `:topRight` `:bottomRight` `:bottomLeft` `:centerRight` `:center` `:atRightCenter` |
| `playerWorldData` | module "classes.modules.playerWorldData" in `require_specific` | 166 | `:setProperty` `:getProperty` `:unsetProperty` `:resolveConsistentSavePropertiesFromSpawnableOrProperty` `:setTempProperty` `:getTempProperty` `:clearTempProperties` `:getSpawnableConstructorsForMap` |
| `playerQuests` | module "classes.modules.playerQuests" in `require_specific` | 164 | `:isCompleted` `:isInProgress` `:isStarted` `:debugSetCompleted` `:debugSetInProgress` `:start` `:complete` `:getQuestName` |
| `UIContainerStyle` | module "classes.interface.enums.UIContainerStyle" in `require_specific` | 156 | `.gradient_blueOrFluorescent` `.gradient_red` `.contentContainerWithOrnament` `.gradient_disabled` `.roundedRect_blueOrRedGreyMediumDark_radius4` `.gradient_tabBarBlue` `.gradient_blueGrey` `.roundedRect_gridBoxBlueOrRed_radius4_withGridBoxBlueOrRedBorder` |
| `saveslotDataVersionHelper` | module "classes.modules.saveslotData.saveslotDataVersionHelper" in `require_specific` | 151 | `:isPlayerInMap` `:changeItemUID` `:placePlayerInMapAt` `:forEachSavedMonster` `:changeTiledSpawnableName` `:isQuestCompleted` `:changeMapName` `:movePlayerToAndInvalidateOtherSpawnableLocations` |
| `languageHelper` | module "classes.modules.languageHelper" in `main` | 145 | `:selectedLanguageCodeRendersRightToLeft` `:addPlaceholderFunction` `:getSelectedLanguageCode` `:addPropertyFiles` `:setSelectedLanguageCode` `:getLanguageCodes` `:getTranslationInSelectedLanguageCode` `:addEnglishJargonKeyFunction` |
| `UIContainerBuilder` | module "classes.interface.UIContainerBuilder" in `require_specific` | 142 | `:new` `:newHorizontal` `:newDirectional` `:newHoldIndicator` `:newVertical` `:newGreySlim` `:newGreySlimScrollable` `:newGreySlimWithHeaderSpacing` |
| `battleEffectUtility` | module "classes.modules.utilities.battleEffectUtility" in `require_specific` | 141 | `:speedPriority` `:registerBattleEffect` `:shouldBlockWeatherEffectEffect` `:mutateStatBoostStage` `:unregisterBattleEffect` `:mutateWeatherEffectTurns` `:setMainBattleEffects` `:onBeforeApplyEntryHazardEffect` |
| `inQuad` | function(t, tMax, start, delta, propertyName) in `easing` | 137 |  |
| `worldBattleEnvironment` | module "classes.world.worldBattleEnvironment" in `require_specific` | 132 | `:createInstance` `:get` `:isCreated` `:createInstanceForHexagonWorld` `:destroy` |
| `itemList` | module "classes.lists.itemList" in `require_specific` | 130 | `.FRUIT_RECOVER_HEALTH` `.SPINNER_REGULAR_1` `.FRUIT_DRONE` `.RECALL_PREMIUM` `.DRILL_SHOVEL_SILVER` `.CLOTHING_LAB` `.DRILL_SHOVEL_GOLD` `.FRUIT_RECOVER_ENERGY` |
| `cutsceneHelper` | module "classes.modules.cutsceneHelper" in `require_specific` | 123 | `:loadCutscene` `:runCutscene` `:addGlobalCutscene` `:loadCutsceneWithOnComplete` `:loadFunction` `:loadOptionalCutsceneWithOnComplete` `:initCutscenesForMap` `:initFunctionsForMap` |
| `app` | module "classes.configs.app" in `main` | 122 | `:isCoromon1` `:isCoromonRoguePlanet` `:isDevelopBuild` `:usesDualTyping` `:usesTapTap` `:getAppName` `:usesCrimsoniteAsType` `:usesEpicAndroidStore` `.useOptimizedMaps` `.version` `.encryptionSalt` `.battleVersion` |
| `pairs` | function(_table) in `test_randomizer` | 121 |  |
| `playerMonsters` | module "classes.modules.playerMonsters" in `require_specific` | 116 | `:getSquad` `:setSquad` `:getMonsterStorage` `:isFirstConsciousMonsterInSquad` `:hasUnlockedMonsterSpriteSkinUID` `:add` `:addToHiddenMonsterStorage` `:addToSquad` |
| `playerStats` | module "classes.modules.playerStats" in `require_specific` | 115 | `:setMonsterSeen` `:setMonsterOwned` `:setBattleDomeWinningStreakIfHighest` `:getSteps` `:hasSeenMonster` `:addMonsterCaughtWithSpinner` `:getAmountOfBattlesByFunction` `:getLongestOnlineConsecutiveWins` |
| `sleepable` | module "classes.modules.sleepable" in `require_core` | 115 | `:wrap` `:run` `:runner` `:setShouldCaptureTraceback` |
| `fillEffectHelper` | module "classes.modules.fillEffectHelper" in `require_core` | 111 | `:setDuotone` `:clear` `:setSaturation` `:getFontOutlineFillEffect` `:changeSaturation` `:setBrightness` `:setMonotone` `:swapColors` |
| `pauseMenu` | module "classes.interface.pauseMenu" in `require_specific` | 109 | `:showScreen` `:addOnAfterCloseFunction` `:createInstance` `:close` `:createInstanceAndPauseWorld` `:isCreated` `:closeIfCreated` `:getTopGroup` |
| `battleDialog` | module "classes.interface.dialog.battleDialog" in `require_specific` | 106 | `:addText` `:onAfterHide` `:addQuestion` `:newNonClosable` `:onTextShown` `:setHeaderText` `:destroy` `:onBeforeContinue` |
| `playerInventory` | module "classes.modules.playerInventory" in `require_specific` | 106 | `:addItem` `:getAmount` `:getItemArrayByInstanceOf` `:removeItem` `:getItemArrayByFilter` `:removeAllOfItem` `:onLoadSaveslotData` `:destroy` |
| `UIButton` | module "classes.interface.UIButton" in `require_specific` | 96 | `:showHoverVariantOnHover` `:createTouchableListener` `:createCustomTouchableListener` `:switchVisibilityOnHover` `:switchVisibilitiesOnHover` |
| `Monster` | module "classes.monsters.Monster" in `require_specific` | 94 | `:new` `:newDebug` `:newForPlayer` `:newForDebugPlayer` `:mapToSaveableMonster` `:getMaxCriticalHitCharge` `:updateSavedMonsterToMonster` `:newInSpinner` |
| `navigations` | module "classes.modules.convenience.navigations" in `require_core` | 93 | `:createUseButtonNavigation` `:createShowNavigation` `:createNumericKeyTouchNavigation` `:createBackButtonNavigation` `:createStartButtonNavigation` `:setShowOnFocus` `:createNonFocusableNavigation` `:createAlphaShowNavigation` `.mapKeyEventToTouches` `.doMapKeyEventToTouch` |
| `UIButtonTransition` | module "classes.interface.UIButtonTransition" in `require_specific` | 92 | `:transparency` `.fancyPress` |
| `inOutQuad` | function(t, tMax, start, delta, propertyName) in `easing` | 92 |  |
| `playerBattleDomeSession` | module "classes.modules.playerBattleDomeSession" in `require_specific` | 92 | `:isStartedAndActive` `:getAmountOfOpponentsDefeated` `:getModeObject` `:isStartedOrPaused` `:hasUnlockedRecoverEnergy` `:startBattleDomeSession` `:getDifficultyObject` `:calculateOpponentLevel` |
| `print` | function(...) in `CoromonWebsocket` | 84 |  |
| `monsterDataList` | module "classes.lists.monsterDataList" in `require_specific` | 81 | `.NORMAL_BEE_1` `.NORMAL_CYBORG_1` `.ELECTRIC_TIGER_1` `.GHOST_CAT_1` `.TITAN_ELECTRIC` `.ELECTRIC_BEETLE_1` `.ELECTRIC_BEETLE_2` `.FIRE_BULL_1` |
| `playerStateHelper` | module "classes.modules.playerStateHelper" in `require_specific` | 81 | `:initialisePlayerLibraries` `:getSelectedSaveslotDeviceId` `:manualSave` `:unblockSave` `:resolveSelectedSaveslotDeviceIdOrShowError` `:blockSave` `:quitCurrentGame` `:createNewGame` |
| `directionHelper` | module "classes.modules.directionHelper" in `require_core` | 77 | `:opposite` `:isHorizontal` `:toHorizontalNumber` `:rotateRight` `:toNumber` `:toVerticalNumber` `:isVertical` `:toDimension` |
| `ObtainableItem` | module "classes.items.obtainableItem.ObtainableItem" in `require_specific` | 74 | `:new` `:newSpecial` |
| `system` | table in `def` | 74 | `.getTimer` `.setPreferences` `.getPreference` `.getInfo` `.pathForFile` `.ResourceDirectory` `.deletePreferences` `.TemporaryDirectory` |
| `FocusSelector` | module "classes.interface.FocusSelector" in `require_specific` | 69 | `:newAnimated` `:new` |
| `CoromonDebugHelper` | module "classes.debug.CoromonDebugHelper" in `main` | 68 | `:getRandomCatchableMonsterUID` `:setShouldLoadRoguePlanetOnDevelopBuild` `:temporarySetSaturationOrHide` `:addAllItems` `:forEachMonsterSpriteShapeUID` `:setupOnlineInventoryData` `:setupOnlineProfileAndSeason` `:spawnFruits` |
| `debugSettings` | module "classes.configs.debugSettings" in `require_core` | 64 | `:getInitialItems` `:getInitialSquad` `.coromonRoguePlanet` `.battle` `.log` `.UI` `.MTE` `.coromon1` `.game` `.diagnostics` |
| `Achievement` | module "classes.enums.Achievement" in `require_specific` | 63 | `:newValueObject` `:resetPercentageOfMaxProgressCache` `.values` `.SELL_GEMS_FOR_5000_GOLD` `.CATCH_FIRE_TURTLE_1` `.CROSS_DESERTROUTE_3_BRIDGE` `.DEFEAT_60_TRAINERS` `.FIND_150_HIDDEN_ITEMS` `.GET_HIGHSCORE_1000_IN_SWURMY_RUSH` `.GET_HIGHSCORE_500_IN_FLAPPY_SWURMY` |
| `Color` | module "classes.constants.Color" in `main` | 61 | `:rgb` `:rgbTable` `:rgbaTable` `:darkenedRgbFloat` `:rgba` `:grey` `:greyFloat` `:rgbFloat` |
| `HexagonWorld` | module "classes.hexagon.HexagonWorld" in `require_specific` | 55 | `:getPlayerCharacter` `:getTile` `:get` `:getBiome` `:createInstance` `:setSpriteLayerAndLocation` `:destroy` `:isCreated` `.TILE_SURFACE_HEIGHT` `.TILE_SLOPED_EDGE_WIDTH` `.TILE_SURFACE_WIDTH` `.MAP_WIDTH` |
| `inOutSine` | function(t, tMax, start, delta, propertyName) in `easing` | 49 |  |
| `offlineOpponentTrainerParticipant` | module "classes.battle.participants.offlineOpponentTrainerParticipant" in `require_specific` | 49 | `:new` |
| `displayGroups` | table in `main` | 48 | `.world` `.overlay` `.aboveOverlay` `.menu` `.belowWorld` `.titleScreen` `.battle` |
| `Type` | module "classes.enums.Type" in `require_specific` | 46 | `.crimsonite` `.sand` `.valuesForMonsters` `.valuesForMonstersIncludingCrimsonite` `.ice` `.normal` `.fire` `.values` |
| `json` | table in `def`; module "json" in `require_core` | 45 | `.decode` `.encode` |
| `os` | os in `os` | 45 | `.date` `.time` `.executeMakeDir` `.execute` `.executeMove` `.executeReplaceDir` `.executeRemove` `.timeInMilliseconds` |
| `MonsterSpriteSkinMilestone` | module "classes.enums.MonsterSpriteSkinMilestone" in `require_specific` | 41 | `:getForSkin` `.BAKE_CAKES_100` `.CATCH_3_COROMON_OF_TYPE_FIRE` `.CATCH_3_COROMON_OF_TYPE_ICE` `.CATCH_3_COROMON_OF_TYPE_WATER` `.DIG_GEM_GREEN_3_ICE_CREATURE` `.DIG_GEM_GREEN_3_ICE_SNOWBALL` `.DIG_GEM_GREEN_3_NORMAL_ADDER` `.DIG_GEM_GREEN_3_WATER_TURTLE` |
| `TrainerMonsterList` | module "classes.lists.TrainerMonsterList" in `require_specific` | 41 | `:getRandomizableTrainerMonstersFor` `:getRandomizedMonsterUIDsByTrainerUID` `:populateRandomizedMonsters` |
| `localiseDialogAnswers` | function(_key, _params) in `languageHelper` | 38 |  |
| `Analytics` | value in `test_translation_syntax_errors`; value in `test_ui_with_screenshots` | 37 | `:sendWarningEvent` `:sendErrorEvent` `:getClient` `:init` `:sendBattleLostEvent` `:sendConfiguredInputDeviceEvent` `:sendConfiguredSafeInsetEvent` |
| `fileHelper` | module "classes.modules.fileHelper" in `require_core` | 37 | `:saveToSystemResources` `:loadJsonFromResources` `:saveToTemporaryResources` `:getFilesInResourcesRecursive` `:loadFromResources` `:exists` `:getFilesInResources` `:createFolder` |
| `playerCurrency` | module "classes.modules.playerCurrency" in `require_specific` | 36 | `:getGold` `:addGold` `:spendGold` `:getRestrictedGold` `:createGoldIcon` `:clearGold` `:setBattleDomeTokens` |
| `tiledLayers` | module "classes.modules.tiledLayers" in `require_specific` | 36 | `:highestNonStickToScreen` `:highestAboveFloor` `:highest` `:highestFloor` `:highestAboveFloorName` `:highestAbovePlayer` `:highestAbovePlayerName` `:highestFloorName` |
| `PlayerRogueData` | module "classes.modules.PlayerRogueData" in `require_specific` | 34 | `:getSelectedCharacter` `:setSelectedCharacter` `:getHubSpecialtyLevel` `:calculateLevelForCharacter` `:getDay` `:getXpForCharacter` `:getBattleEffectForCharacter` `:getHighestStarterPotential` |
| `gridHelper` | module "classes.modules.gridHelper" in `require_core` | 34 | `:indexToGrid` `:amountOfRows` `:createArrayStartingAtZero` `:findBestGrid` `:gridToIndex` `:amountOfColumns` `:createArrayStartingAtOne` `:getRandomTileInDistance` |
| `DebugBattle` | module "classes.debug.simulation.DebugBattle" in `require_debug` | 33 | `:inCoromon1` `:inCoromonRoguePlanet` |
| `verticalNavigationBuilder` | module "classes.modules.navigation.verticalNavigationBuilder" in `require_core` | 33 | `:new` |
| `pauseMenuScreenBuilder` | module "classes.interface.pauseMenuScreenBuilder" in `require_specific` | 31 | `:new` `:newBuilder` `:newSimpleBuilder` |
| `utf8` | module "classes.libraries.utf8" in `require_core` | 31 | `.upper` `.gmatch` `.gsub` `.len` `.format` `.sub` `.width` `.byte` |
| `inSine` | function(t, tMax, start, delta, propertyName) in `easing` | 30 |  |
| `monsterUtility` | module "classes.modules.utilities.monsterUtility" in `require_specific` | 30 | `:getMaxLevel` `:rollPotential` `:getPotentialCategoryForPotential` `:rollPotentialCategory` `:showMonsterNicknameKeyboardOverlay` `:getMonsterByeByeMessage` `:getLevelOfUpcomingTitan` `:showMonsterReleaseConfirmPopupWithByeByeMessage` `.MAX_MONSTER_NAME_WIDTH_PLAIN_8` `.AVATAR_HEIGHT` |
| `AjaxLoaderOverlay` | module "classes.interface.overlays.AjaxLoaderOverlay" in `require_specific` | 29 | `:new` |
| `HexagonGridHelper` | module "classes.modules.HexagonGridHelper" in `require_core` | 29 | `:getXYForDirection` `:getRandomSpriteOffsetsForTilePlacement` `:getDirections` `:getRegularDirection` `:getOppositeDirection` `:getDirectionForXY` `:getBottomDirections` `:getHorizontalDirectionNumber` |
| `PlayerRogueSession` | module "classes.modules.PlayerRogueSession" in `require_specific` | 29 | `:isRogueSessionStarted` `:startRogueSession` `:getCurrentBiomeIndex` `:getUpcomingPlayerActionTileRow` `:debugSetActionTileHistoryForCurrentBiome` `:setOutpostState` `:addBattleDataToLastActionTileHistoryEntry` `:getCurrentBiome` |
| `MonsterSpriteSkin` | module "classes.enums.MonsterSpriteSkin" in `require_specific` | 28 | `.values` `.NORMAL_BEE_1|fusebox` `.valuesWithTier` `.FIRE_TURTLE|galactic` `.ICE_BEAR|grizzly` `.WATER_SHARK|orca` `.ELECTRIC_BEETLE|gold` `.ELECTRIC_CERBERUS|supercharged` |
| `navigationBuilder` | module "classes.modules.navigation.navigationBuilder" in `require_core` | 28 | `:new` |
| `systemHelper` | module "classes.modules.systemHelper" in `require_core` | 28 | `:getPathForResourceDirectory` `:getPathForTemporaryDirectory` `:getPathForBaseDir` |
| `UIScrollBarBackgroundBuilder` | module "classes.interface.UIScrollBarBackgroundBuilder" in `require_specific` | 27 | `:newNew` `:new` |
| `UIScrollBarBuilder` | module "classes.interface.UIScrollBarBuilder" in `require_specific` | 27 | `:newNew` `:new` |
| `burnConditionStatus` | module "classes.battle.statuses.monster.conditions.burnConditionStatus" in `require_specific` | 27 | `:new` |
| `bleedingStatus` | module "classes.battle.statuses.monster.other.bleedingStatus" in `require_specific` | 26 | `:new` |
| `fillHelper` | module "classes.modules.fillHelper" in `require_core` | 26 | `:setGradientFill` `:setImageFill` `:translateX` `:useRepeatingFill` `:setHeightForRepeatingFill` `:setWidthForRepeatingFill` |
| `horizontalNavigationBuilder` | module "classes.modules.navigation.horizontalNavigationBuilder" in `require_core` | 26 | `:new` |
| `monsterDataUtility` | module "classes.modules.utilities.monsterDataUtility" in `require_specific` | 26 | `:getSpeakerForRandomizableTitan` `:countAmountOfMonsterDataWithNumber` `:getSortedMonsterDataListWithNumber` `:getSpeakerNameForRandomizableTitan` `:resolveDefaultSpriteSkinForCrimsoniteMonster` `:getSpeakerHeadForRandomizableTitan` `:getSpeakerStyleForRandomizableTitan` `:resolveDefaultSpriteSkinForRandomizableTitan` |
| `touches` | module "classes.modules.convenience.touches" in `require_core` | 26 | `:simulateClick` `.passFocusAfterMoveY` `.doClick` `.holdDuration_short` `.holdDuration_medium` `.doClickPress` `.doClickReleaseInsideBounds` `.passFocusAfterMove` `.holdDuration_long` |
| `Runtime` | table in `def` | 25 | `:addEventListener` `:removeEventListener` `.getFrameID` `.getFrameStartTime` |
| `UIButtonTooltip` | module "classes.interface.UIButtonTooltip" in `require_specific` | 25 | `:createAndAlignNowAndOnInputNavigationMethodSwitch` `:createKeyboardKeyTooltip` `:createAnimatedDirectionalShoulderButtonTooltip` `:createNintendoSwitchButtonTooltip` `:createTooltipForCurrentNavigationMethod` |
| `UISeparatorBuilder` | module "classes.interface.UISeparatorBuilder" in `require_specific` | 25 | `:newHorizontal` `:newColumnGridBuilder` `:newVertical` |
| `characterConfigUtility` | module "classes.modules.utilities.characterConfigUtility" in `require_specific` | 25 | `:replaceHair` `:replaceHeadgear` `:isPartKeyOfType` `:replaceSkintone` `:replaceEyes` `:getSkintone` `:replaceClothing` `:createBase` `.partKeyPrefixes` |
| `keys` | module "classes.modules.convenience.keys" in `require_core` | 25 | `:parseNumberOfKeyOrNumpadKey` `:parseNumberOfFunctionKey` `:parseNumberOfNumpadKey` `.onKeyDown` `.onKeyUp` |
| `IAP` | module "classes.enums.IAP" in `require_specific` | 24 | `:parseTokenFromAndroidReceiptSafe` `:validatePurchasesIfOnAndroid` `:parseAcknowledgementFromAndroidReceipt` `.values` `.UNLOCK_FULL_GAME` `.FRUIT_DRONE` `.POTENTIAL_READER_PREMIUM` `.RECALL_PREMIUM` `.REMOTE_MONSTER_STORAGE` `.IS_PLAY_PASS` |
| `QuestMonsterList` | module "classes.lists.QuestMonsterList" in `require_specific` | 24 | `:getRandomizableTitanEssenceUID` `:getRandomizableQuestMonsterUID` `:getRandomizableTitanUID` `:getRandomizableStarterUID` `:getRandomizableAntiStarterUID` `:getRandomizedAntiStarterUID` `:getRandomizedMonsterUIDByQuestMonsterUID` `:getRandomizedStarterUIDByStarterUID` |
| `graphics` | table in `def` | 24 | `.newMask` `.newImageSheet` `.defineEffect` `.newTexture` |
| `hazyConditionStatus` | module "classes.battle.statuses.monster.conditions.hazyConditionStatus" in `require_specific` | 24 | `:new` |
| `skillDataList` | module "classes.lists.skillDataList" in `require_specific` | 24 | `.BERSERK` `.BUBBLE_BURST` `.FROST_CHOMP` `.PREMONITION` `.PYRE_PECK` `.SLAM` |
| `worldTransitions` | module "classes.modules.worldTransitions" in `require_specific` | 24 | `:hideBlackRectangle` `:inTransition` `:showBlackRectangle` `:outTransition` `:hideWhiteRectangle` `:inTransitionAndHideBlackRectangle` `:wrapWithRogueDayOutTransition` |
| `OnlineAuthentication` | module "classes.online.OnlineAuthentication" in `require_specific` | 23 | `:getDeviceId` `:getProvider` `:ensureValidAccessToken` `:getDeviceIds` `:getCachedUnlockFullGameReceiptData` `:cacheUnlockFullGameReceiptDataAndLogout` `:logout` `:setDebugDeviceIds` |
| `nextFrame` | function(_onNextFrame) in `timer` | 23 |  |
| `mescherRealmUtility` | module "classes.maps.mescherRealm.mescherRealmUtility" in `require_specific` | 22 | `:enableExtensionsForFIND_MESCHER_REALM_SOULS` `:enableExtensionsForMaze` `:enableExtensionsForInbetweenRealm` |
| `parentNavigationBuilder` | module "classes.modules.navigation.parentNavigationBuilder" in `require_core` | 22 | `:new` |
| `characterList` | module "classes.lists.characterList" in `require_specific` | 21 | `:getSpeakerFor` `:getCharacterConfigFor` `:getNameFor` `:getCharacters` `:getSpeakerStyleFor` |
| `emojiBuilder` | module "classes.spawnables.other.emojiBuilder" in `require_specific` | 21 | `:new` `:newInfiniteLoop` `:newInfiniteLoopPaused` |
| `freezeConditionStatus` | module "classes.battle.statuses.monster.conditions.freezeConditionStatus" in `require_specific` | 21 | `:new` |
| `knockdownStatus` | module "classes.battle.statuses.monster.other.knockdownStatus" in `require_specific` | 21 | `:new` |
| `worldLocationList` | module "classes.lists.worldLocationList" in `require_specific` | 21 | `.luxSolisTown` |
| `outSine` | function(t, tMax, start, delta, propertyName) in `easing` | 20 |  |
| `pack` | function(...) in `global` | 20 |  |
| `LocalisableEnum` | module "classes.enums.LocalisableEnum" in `require_specific` | 18 | `:new` |
| `OnlineProfileData` | module "classes.online.OnlineProfileData" in `require_specific` | 18 | `:get` `:set` `:ensureValidAccessToken` `:getAccessToken` `:setAccessToken` |
| `ghostTownUtility` | module "classes.maps.ghostTown.ghostTownUtility" in `require_specific` | 18 | `:createGoDirectionCutscene` `:isInAlternateDimension` `:createPurringCatCutscene` `:getPortalPillarsBlue` `:shouldMountPurrgyUponTeleport` |
| `monsterPotentialUtility` | module "classes.modules.utilities.monsterPotentialUtility" in `require_specific` | 18 | `:getLowestPotentialForCategory` `:getCategories` `:getHighestPotentialForCategory` `:createCategoryIcon` `:isPotent` |
| `seconds` | module "classes.constants.seconds" in `require_core` | 18 | `.MINUTE` `.HOUR` `.DAY` |
| `LocalisableEnumWithDescription` | module "classes.enums.LocalisableEnumWithDescription" in `require_specific` | 17 | `:new` |
| `RoguePortrait` | module "classes.interface.RoguePortrait.RoguePortrait" in `require_specific` | 17 | `:getColorFor` `:getBottomCutOffAreaFor` `:new` `.character` `.monster` `.portraitConfigs` |
| `statUtility` | module "classes.modules.utilities.statUtility" in `require_specific` | 17 | `:getOrderedBaseStats` `:getStatBoostableStats` `:getMaxPotentialStat` `:getOrderedBaseStatsWithoutEnergy` `:getStatBoostableBaseStats` `:getLocalised` `:getColorForStat` `:getOppositeStatForDefenseOrAttackStat` |
| `worldOverlay` | module "classes.world.worldOverlay" in `require_specific` | 17 | `:createInstance` `:get` `:createInstanceAndShow` `:destroy` `.SLIGHTLY_DARK` `.MESCHER_REALM` `.HEATED` `.LIGHTS_OFF` |
| `OnlineRankingData` | module "classes.online.OnlineRankingData" in `require_specific` | 16 | `:getKnownSeason` `:ensureActiveSeasonAndRank` `:getActiveSeasonRank` `:getQueueTypeForMatchmakingMode` `:debugSetActiveSeasonRanks` `:debugSetKnownSeason` `:ensureActiveSeasonAndRankForOpponent` `:setKnownSeasonAndStoreInCache` `.ensureActiveSeasonAndRankForOpponent` |
| `itemScreen` | module "classes.interface.screens.itemScreen" in `require_specific` | 16 | `:getScreenForBuying` `:getScreenForInventory` `:getScreenForSelling` `:getScreenForHoldItemSelection` `:getScreenForSettingHoldItemOnMonster` `:getScreenForSpinnerSwap` `:getScreenForBattle` `:getScreenForBindItemSelection` |
| `variableToHelpIntellijMakeClickableLinks` | true in `tests` | 16 |  |
| `DebugBattleEffect` | module "classes.debug.simulation.DebugBattleEffect" in `require_debug` | 15 | `:shouldAlwaysSkipTurn` `:shouldAlwaysStartWithWeatherEffect` `:noDamageRandomizer` `:shouldNeverCriticalHit` `:shouldNeverMiss` `:shouldAlwaysStartWithMonsterSpriteStatus` |
| `ObtainableGiftItems` | module "classes.items.obtainableItem.lists.ObtainableGiftItems" in `require_specific` | 15 | `:getRandomizable` `:getRandomizedObtainableItems` `:populateRandomizedObtainableItems` |
| `OnlineBattleData` | module "classes.battle.online.OnlineBattleData" in `require_specific` | 15 | `:sendAnomalyAnalyticsEvent` `:setOnDecisionTimerDepleted` `:getMatchmakingMode` `:getOpponentName` `:resolveTeamChosenByServer` `:setServerDecisionTimerTimestamp` `:getOpponentId` `:getOpponentMonsters` |
| `OnlineInventoryData` | module "classes.online.OnlineInventoryData" in `require_specific` | 15 | `:getOnlineStyleProductUIDForMonsterSpriteSkin` `:getAmountOfStyleCrystals` `:resolveMonsterSpriteSkinForOnlineStyleProduct` `:hasProduct` `:increaseAndCacheAmountOfStyleCrystals` `:resolveOnlineAvatarForOnlineStyleProduct` `:getAndCacheAmountOfStyleCrystals` `:getOnlineStyleProductUIDForOnlineAvatar` |
| `Shufflebag` | module "classes.modules.Shufflebag" in `require_core` | 15 | `:new` |
| `fillBarBuilder` | module "classes.modules.interface.fillBarBuilder" in `require_core` | 15 | `:new` |
| `native` | table in `def` | 15 | `.requestExit` `.showAlert` `.setProperty` `.setKeyboardFocus` `.canShowPopup` `.getProperty` `.showPopup` `.newTextField` |
| `orderedPairs` | function(_table) in `global` | 15 |  |
| `shockConditionStatus` | module "classes.battle.statuses.monster.conditions.shockConditionStatus" in `require_specific` | 15 | `:new` |
| `targetingUtility` | module "classes.modules.utilities.targetingUtility" in `require_specific` | 15 | `:isEnemyTargetInBattle` `:isNoneTarget` `:getTargetMonsterSprites` `:isEnemyTargetRandom` `:shouldSelectTarget` `:getTargetMonsters` `:getTargetedMonsterSprites` `:isEnemyTarget` |
| `threeFrameImageBuilder` | module "classes.modules.interface.threeFrameImageBuilder" in `require_core` | 15 | `:new` `:newObject` `:newRepeated` |
| `ObtainableQuestRewardItems` | module "classes.items.obtainableItem.lists.ObtainableQuestRewardItems" in `require_specific` | 14 | `:getRandomizable` `:getRandomizedObtainableItems` `:populateRandomizedObtainableItems` |
| `RogueDialog` | module "classes.interface.dialog.RogueDialog" in `require_specific` | 14 | `:addText` `:onAfterHide` `:new` `:setAnswersForLastText` `:onBeforeContinueSetSpeakerExpression` `:setSpeakerLeft` |
| `monsterFamilyDataList` | module "classes.lists.monsterFamilyDataList" in `require_specific` | 14 |  |
| `specialEventHelper` | module "classes.modules.specialEventHelper" in `require_core` | 14 | `:isReleaseDay` `:isHalloween` `:isChristmas` `:isEaster` `:getAmountOfYearsReleased` `:isAprilFoolsDay` `:isKingsDay` `:isNewYear` |
| `Class` | module "classes.modules.Class" in `require_core` | 13 | `:new` |
| `HexagonWorldBiome` | module "classes.enums.HexagonWorldBiome" in `require_specific` | 13 | `.grass` |
| `IAPShopProductScreen` | module "classes.interface.screens.IAPShopProductScreen" in `require_specific` | 13 | `:getScreen` |
| `SpawnLocation` | module "classes.world.SpawnLocation" in `require_specific` | 13 | `:atTile` `:southOf` `:eastOf` `:northOf` `:westOf` |
| `UIFadeBuilder` | module "classes.interface.UIFadeBuilder" in `require_specific` | 13 | `:newVertical` `:newVerticalForGreySlimScrollable` |
| `UIHorizontalContainerStyle` | module "classes.interface.enums.UIHorizontalContainerStyle" in `require_specific` | 13 | `.roundedRect_fillBarBackground_radius1_withBlackOutline` `.contentContainerSeparator` `.roundedRect_fillBarBackground_radius1_withBrownOutline` `.roundedRect_fillBar_hp_green_radius1` `.roundedRect_fillBar_sp_radius1` `.roundedRect_blackTransparent50_radius2` `.roundedRect_fillBarBackgroundBottom_radius1_withBrownOutline` `.roundedRect_fillBar_hp_red_radius1` |
| `nextFrameFunction` | function(_onNextFrame) in `timer` | 13 |  |
| `BattleMusic` | module "classes.enums.BattleMusic" in `require_specific` | 12 | `.cave` `.values` `.grass` `.researcher` `.titan` `.wubbonian` |
| `SpeakerStyle` | module "classes.interface.enums.SpeakerStyle" in `require_specific` | 12 | `.player` `.npc` `.crimsonite` `.values` |
| `amishTownUtility` | module "classes.maps.amishTown.amishTownUtility" in `require_specific` | 12 | `:optionalBookHatLocalisation` `:createBeezelCutscene` `:executeTrainerHubCutscene` |
| `innerBottomBarTabBar` | module "classes.interface.navBarObjects.bottomBarObjects.innerBottomBarTabBar" in `require_specific` | 12 | `:new` `:createSizeOptionsWithTabBarWidth` `:createSizeOptionsWithTabWidth` |
| `magnetContentAware` | value in `require_core` | 12 | `:center` `:atLeftCenter` `:topCenter` |
| `playerOnlineStyle` | module "classes.modules.playerOnlineStyle" in `require_specific` | 12 | `:getOnlineBattleEnvironment` `:getWinBattleTaunt` `:setOnlineBattleEnvironment` `:setWinBattleTaunt` `:getBattleMusic` `:setBattleMusic` `:getCharacterConfig` `:getCharacterConfigUID` |
| `poisonConditionStatus` | module "classes.battle.statuses.monster.conditions.poisonConditionStatus" in `require_specific` | 12 | `:new` |
| `sheetHelper` | module "classes.modules.sheetHelper" in `require_core` | 12 | `:new` |
| `OnlineAvatar` | module "classes.enums.OnlineAvatar" in `require_specific` | 11 | `:getStyleCrystalCostForCategory` `:isCharacterCategory` `:isMonsterCategory` `.values` `.NORMAL_BEE_1_A` `.categories` |
| `UIBottomBar` | module "classes.interface.UIBottomBar" in `require_specific` | 11 | `:new` |
| `UISaveBarBuilder` | module "classes.interface.UISaveBarBuilder" in `require_specific` | 11 | `:new` `:newForManualSave` |
| `keyboardOverlayBuilder` | module "classes.interface.overlays.keyboardOverlayBuilder" in `require_specific` | 11 | `:new` `.infiniteDebugWidth` |
| `monsterSummaryScreen` | module "classes.interface.screens.monsterSummaryScreen" in `require_specific` | 11 | `:getScreenEditable` `:getScreenNonEditable` `:getScreenForMonsterNonEditable` `:getScreenForMonsterEditable` `:getScreenForOnlineSquadEditable` |
| `playerGauntlet` | module "classes.modules.playerGauntlet" in `require_specific` | 11 | `:setSelectedGauntletModule` `:installGauntletModule` `:hasInstalledGauntletModule` `:getSelectedGauntletModule` |
| `playerOnlineSquads` | module "classes.modules.playerOnlineSquads" in `require_specific` | 11 | `:getOnlineSquadsFor` `:setLastSelectedOnlineSquadIndex` `:getLastSelectedSquad` `:getOnlineSquadsIncludingPlayerOnlineLoanSquad` `:setLastSelectedOnlineRankedMatchmakingMode` `:getLastSelectedOnlineRankedMatchmakingMode` `:resolveOnlineLoanSquadEntries` `:setLastSelectedOnlineCasualMatchmakingMode` `.categories` |
| `sortOrders` | module "classes.spawnables.other.sortOrders" in `require_specific` | 11 | `.early` `.late` `.normal` `.veryEarly` |
| `trainerHubUtility` | module "classes.maps.trainerHubUtility" in `require_specific` | 11 | `:extendSpecialEvents` `:getTrainerHubAnswers` `.ED_CONSECUTIVE_WINS` |
| `zoneParticipant` | module "classes.battle.participants.zoneParticipant" in `require_specific` | 11 | `:new` |
| `BattleDomeMode` | module "classes.enums.BattleDomeMode" in `require_specific` | 10 | `.values` `.coromonRush` `.titanRush` `.trainerRush` |
| `EncounterZoneList` | module "classes.lists.EncounterZoneList" in `require_specific` | 10 | `:get` `:getChanceByMonsterUIDInMapFiles` `:getCatchableMonsterUIDs` `:getCatchableMonsterUIDsBySummedBaseStatsGroup` `:getChanceByTypeInMapFile` `:getMapFilesWithMonsterUID` `:hasZonesForMapFile` `:populatedRandomizedZones` |
| `GameCenter` | module "classes.modules.GameCenter" in `main` | 10 | `:hideAccessPoint` `:isEnabled` `:setAccessPointFocused` `:showAccessPoint` `:submitScore` `:triggerAccessPoint` `:init` `:loadAchievements` |
| `HexagonTileActionType` | module "classes.enums.HexagonTileActionType" in `require_specific` | 10 | `.values` `.BossBattle` `.ItemChest` `.RandomEvent` `.Recall` `.Rest` `.SelectTeleporterDiskLocation` `.Shop` |
| `OnlineBattleSocket` | module "classes.battle.online.OnlineBattleSocket" in `require_specific` | 10 | `:disconnect` `:getWebsocket` `:setOnMatchEndedEvent` `:connect` `:sendJoinMatchRequest` `:sendReadySignal` `:sendReadyToStartMatchSignal` `:sendReadyToStartNextRoundSignal` `.sendJoinMatchRequest` `.sendReadySignal` `.matchStateStringSkillMap` `.matchStateStringHoldItemMap` |
| `RandomizeEvolutionsMode` | module "classes.enums.RandomizeEvolutionsMode" in `require_specific` | 10 | `.values` `.replaceWithAny` |
| `RoguePlayableCharacter` | module "classes.enums.RoguePlayableCharacter" in `require_specific` | 10 | `.merrin` `.juniper` |
| `combinedNavigationBuilder` | module "classes.modules.navigation.combinedNavigationBuilder" in `require_core` | 10 | `:new` |
| `deviceSettings` | module "classes.configs.deviceSettings" in `main` | 10 | `.exportPath` |
| `difficultyUtility` | module "classes.modules.utilities.difficultyUtility" in `require_specific` | 10 | `:getDifficultyIndex` `:getDifficulties` |
| `electricTownUtility` | module "classes.maps.electricTown.electricTownUtility" in `require_specific` | 10 | `:createOptionalElevatorQuestionCutscene` `:giveFuseItemsBasedOnDifficulty` |
| `innerTopBarGold` | module "classes.interface.navBarObjects.topBarObjects.innerTopBarGold" in `require_specific` | 10 | `:getOrCreateInstance` `:doCurrencyAnimation` `:getInstance` `:isCreated` |
| `requireOnce` | function(_modulePath) in `global` | 10 |  |
| `saveslotDataHelper` | module "classes.modules.saveslotData.saveslotDataHelper" in `require_specific` | 10 | `:createMetadata` `:decrypt` `:updateDataToNewestVersion` `:createScreenshotForMetadata` `:decodeMetadata` `:encodeMetadata` `:encrypt` `.decodeMetadata` |
| `skillSelectScreen` | module "classes.interface.screens.skillSelectScreen" in `require_specific` | 10 | `:getScreen` `.skillDescriptionWidth` |
| `worldLocationUtility` | module "classes.modules.utilities.worldLocationUtility" in `require_specific` | 10 | `:getLocalised` `:createIcon` `:createAnimatedIcon` |
| `BattleDomeDifficulty` | module "classes.enums.BattleDomeDifficulty" in `require_specific` | 9 | `.normal` `.values` `.easy` `.hard` `.insane` |
| `FruitGrowingPotList` | module "classes.lists.FruitGrowingPotList" in `require_specific` | 9 |  |
| `MonsterSpriteActionsOrStatuses` | module "classes.battle.MonsterSpriteActionsOrStatuses" in `require_specific` | 9 | `:tryApplyIfNoBeforeMessages` |
| `UIGridViewBuilder` | module "classes.interface.UIGridViewBuilder" in `require_specific` | 9 | `:new` |
| `debugHelper` | module "classes.modules.debugHelper" in `require_core` | 9 | `:makeDraggable` `:getOverrideObjectWithEmptyFunctions` `:disableDebugStats` `:enableDebugStats` `:makeDraggableAndOutputDelta` `:sleepOnceEvery` |
| `gridNavigationBuilder` | module "classes.modules.navigation.gridNavigationBuilder" in `require_core` | 9 | `:new` |
| `inCubic` | function(t, tMax, start, delta, propertyName) in `easing` | 9 |  |
| `monsterParticipant` | module "classes.battle.participants.monsterParticipant" in `require_specific` | 9 | `:new` |
| `monsterShiftedShapeConfigList` | module "classes.lists.monsterShiftedShapeConfigList" in `require_specific` | 9 |  |
| `questList` | module "classes.lists.questList" in `require_specific` | 9 |  |
| `serverSettings` | module "classes.configs.serverSettings" in `main` | 9 | `.server_authentication` `.server_inventory` `.server_profile` `.server_ranking` `.server_rewards` `.server_shop` `.server_userblob` `.socket_match_state_mediator` |
| `transitionRightToLeftAware` | value in `require_core` | 9 | `.fromRightOrFadeIn` `.toRightOrFadeOut` `.fromLeftOrFadeIn` `.fromRight` `.toLeftOrFadeOut` `.toDelta` `.toRight` |
| `trappedStatus` | module "classes.battle.statuses.monster.multiRound.trappedStatus" in `require_specific` | 9 | `:new` |
| `worldDarkness` | module "classes.world.worldDarkness" in `require_specific` | 9 | `:createInstance` `:isCreated` `:destroy` |
| `worldThunder` | module "classes.world.worldThunder" in `require_specific` | 9 | `:createInstanceIfNotDefeatedElectricTitanOrStartedBattleDomeSession` `:singleThunder` `:turboCharge` `:addThunderAlphaListener` `:addThunderListener` `:destroy` `:isCreated` `:pause` |
| `CatchingRule` | module "classes.enums.CatchingRule" in `require_specific` | 8 | `.alwaysAllowWild` `.requireLuxLureButNotForPerfects` `.values` |
| `HttpResponseCodes` | module "classes.constants.HttpResponseCodes" in `require_core` | 8 | `.OK` `.BAD_REQUEST` `.TOO_MANY_REQUESTS` `.CONFLICT` `.NOT_FOUND` `.SERVICE_UNAVAILABLE` `.CREATED` `.FORBIDDEN` |
| `OnlineWinBattleTaunt` | module "classes.enums.OnlineWinBattleTaunt" in `require_specific` | 8 | `.ed` `.values` `.angel` `.blush` `.haha` |
| `RandomizeStartersMode` | module "classes.enums.RandomizeStartersMode" in `require_specific` | 8 | `.values` `.replaceWithAny` `.replaceWithSelected` |
| `RandomizeTypesMode` | module "classes.enums.RandomizeTypesMode" in `require_specific` | 8 | `.values` |
| `characterConfigList` | module "classes.lists.characterConfigList" in `require_specific` | 8 | `.homeTown_DEXTER` `.swampRoute_HORACE` |
| `drowsyConditionStatus` | module "classes.battle.statuses.monster.conditions.drowsyConditionStatus" in `require_specific` | 8 | `:new` |
| `electricSkillMoveUtility` | module "classes.battle.skills.utility.electricSkillMoveUtility" in `require_specific` | 8 | `:createShockOverlay` |
| `encryptionHelper` | module "classes.modules.encryptionHelper" in `main` | 8 | `:decryptOld` `:encrypt` `:decrypt` `:base64Decode` `:base64Encode` `:createMd5Hash` |
| `inOutCubic` | function(t, tMax, start, delta, propertyName) in `easing` | 8 |  |
| `inputNavigationBuilder` | module "classes.modules.navigation.inputNavigationBuilder" in `require_core` | 8 | `:new` |
| `itemUtility` | module "classes.modules.utilities.itemUtility" in `require_specific` | 8 | `:getShopItems` `:createOrderedItemArrayWithSubcategories` |
| `monsterSpriteList` | module "classes.lists.monsterSpriteList" in `require_specific` | 8 |  |
| `offlinePlayerTrainerParticipant` | module "classes.battle.participants.offlinePlayerTrainerParticipant" in `require_specific` | 8 | `:new` |
| `outCubic` | function(t, tMax, start, delta, propertyName) in `easing` | 8 |  |
| `pyramidAreaUtility` | module "classes.maps.desertRoute.pyramidAreaUtility" in `require_specific` | 8 | `:createOptionalFloorQuestionCutscene` |
| `CoromonServer` | module "classes.online.CoromonServer" in `require_specific` | 7 | `:new` |
| `OnlineProfileServer` | module "classes.online.OnlineProfileServer" in `require_specific` | 7 | `:get` `:update` `:create` `:login` `.get` |
| `OnlineSquad` | module "classes.battle.online.OnlineSquad" in `require_specific` | 7 | `:resolveOptionallyModifiedMonsterForEntry` `:new` `:newWithPlayerOnlineLoanSquad` `:newWithPlayerSquad` `:cast` |
| `UIContentContainerWithHeader` | module "classes.interface.UIContentContainerWithHeader" in `require_specific` | 7 | `:new` |
| `UIFillBarBackgroundBuilder` | module "classes.interface.UIFillBarBackgroundBuilder" in `require_specific` | 7 | `:new` |
| `curseConditionStatus` | module "classes.battle.statuses.monster.conditions.curseConditionStatus" in `require_specific` | 7 | `:new` |
| `debugSimulatorIsStartedByTiled` | true in `worldDebugConsole`; true in `main` | 7 |  |
| `expressionBuilder` | module "classes.spawnables.other.expressionBuilder" in `require_specific` | 7 | `:new` `:newInfinite` |
| `gauntletModuleUtility` | module "classes.modules.utilities.gauntletModuleUtility" in `require_specific` | 7 | `:getOrderedModules` `:createIcon` |
| `iceCaveUtility` | module "classes.maps.iceCave.iceCaveUtility" in `require_specific` | 7 | `:createOptionalFloorQuestionCutscene` |
| `isTakingUIScreenshots` | true in `test_ui_with_screenshots` | 7 |  |
| `network` | table in `def` | 7 | `.request` `.cancel` `.upload` |
| `spriteAnimation` | module "classes.modules.convenience.spriteAnimation" in `require_core` | 7 | `:sequences` |
| `titanParticipant` | module "classes.battle.participants.titanParticipant" in `require_specific` | 7 | `:new` |
| `volcanoCaveUtility` | module "classes.maps.volcano.volcanoCaveUtility" in `require_specific` | 7 | `:createOptionalFloorQuestionCutscene` `:didSpawnAtEnd` |
| `worldDungeonDrips` | module "classes.world.worldDungeonDrips" in `require_specific` | 7 | `:createInstance` `:isCreated` |
| `AjaxLoader` | module "classes.interface.sprites.AjaxLoader" in `require_specific` | 6 | `:newPlaying` |
| `IAPShopScreen` | module "classes.interface.screens.IAPShopScreen" in `require_specific` | 6 | `:getScreen` `:ensureProductsOrShowError` |
| `IAPStore` | module "classes.modules.IAPStore" in `require_specific` | 6 | `:isGooglePlayPass` `:loadProducts` `:restore` `:getLastFailedTransaction` `:init` `:isAvailableForDevice` `:parsePurchasesNotListenedTo` `:purchase` |
| `OnlineMatchmakingScreen` | module "classes.interface.screens.OnlineMatchmakingScreen" in `require_specific` | 6 | `:getScreenFor` `:restoreStateBeforeLastBattle` `:getScreenOrShowOnlineSquadErrorsFor` |
| `OnlineTier` | module "classes.enums.OnlineTier" in `require_specific` | 6 | `.rankedValues` `.unknown` |
| `SquadScreen` | module "classes.interface.screens.SquadScreen" in `require_specific` | 6 | `:getScreenName` |
| `UICheckboxBuilder` | module "classes.interface.UICheckboxBuilder" in `require_specific` | 6 | `:new` |
| `UITableViewBuilder` | module "classes.interface.UITableViewBuilder" in `require_specific` | 6 | `:new` |
| `characterPartList` | module "classes.lists.characterPartList" in `require_specific` | 6 |  |
| `createCharacterScreen` | module "classes.interface.screens.createCharacterScreen" in `require_specific` | 6 | `:getScreenForAppearanceKit` `:getScreenForCharacterInitialisation` `:getScreenForClothing` `:getScreenForGauntlet` `:getScreenForCharacterInitialisationInWorldDebug` |
| `cronHelper` | module "classes.modules.cronHelper" in `require_core` | 6 | `:cancel` `:every` `:everyMinuteAndHourFrame` |
| `heatwaveWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.heatwaveWeatherEffect" in `require_specific` | 6 | `:new` |
| `playerOnlineCasualCustomPreferences` | module "classes.modules.playerOnlineCasualCustomPreferences" in `require_specific` | 6 | `:get` `:getAsQueuePreferences` |
| `playerPerks` | module "classes.modules.playerPerks" in `require_specific` | 6 | `:hasCatchProbabilityPerk` `:setObtainedPerk` `:hasObtainedPerk` `:hasReducedShopPricePerk` `:perkExists` |
| `rainWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.rainWeatherEffect" in `require_specific` | 6 | `:new` `:spawnRain` |
| `slideViewOverlayBuilder` | module "classes.interface.dialog.slideViewOverlayBuilder" in `require_specific` | 6 | `:new` |
| `titleScreen` | module "classes.interface.screens.titleScreen" in `require_specific`; module "classes.interface.screens.titleScreen" in `main` | 6 | `:new` `:addGameSettingsMigrationTitleScreenMessage` |
| `toboolean` | function(_value) in `global` | 6 |  |
| `traitList` | module "classes.lists.traitList" in `require_specific` | 6 |  |
| `urlHelper` | module "classes.modules.urlHelper" in `require_specific` | 6 | `:encode` `:tableToParamString` |
| `worldDesertRouteHeatMeter` | module "classes.world.worldDesertRouteHeatMeter" in `require_specific` | 6 | `:getHeat` `:decreaseHeat` `:createInstance` `:decreaseHeatAnimated` `:increaseHeat` `:isCreated` `:onAfterStepOnDesertRouteSandArea` `:setHeat` |
| `worldRain` | module "classes.world.worldRain" in `require_specific` | 6 | `:createInstance` |
| `Enum` | module "classes.enums.Enum" in `require_specific` | 5 | `:new` |
| `OnlineAuthenticationServer` | module "classes.online.OnlineAuthenticationServer" in `require_specific` | 5 | `:authenticate` `:refresh` `:getLinks` `:link` `:unlink` |
| `OnlineIdentityProvider` | module "classes.enums.OnlineIdentityProvider" in `require_specific` | 5 | `.Nintendo` `.Steam` `.Apple` `.Google` |
| `OnlineRewardsData` | module "classes.online.OnlineRewardsData" in `require_specific` | 5 | `:getAndClaimAndAcknowledgePendingRewards` `:showPopupForRedeemedRewards` `:ensureStaticMilestones` `:getStaticMilestones` |
| `OnlineShopServer` | module "classes.online.OnlineShopServer" in `require_specific` | 5 | `:debugIncreaseStyleCrystals` `:getStyleCrystals` `:purchaseProduct` `:redeemCoupon` `:redeemRewardToken` `:redeemStyleCrystals` |
| `RandomizableObtainableItemList` | module "classes.items.obtainableItem.lists.RandomizableObtainableItemList" in `require_specific` | 5 | `:new` |
| `UIDirectionalContainerStyle` | module "classes.interface.enums.UIDirectionalContainerStyle" in `require_specific` | 5 | `.battleIndicator_playerRight_withoutMargins` `.battleIndicator_player_withoutMargins` `.battleIndicator_enemy` `.battleIndicator_player` `.battleIndicator_playerRight` `.trainerMonsterIndicator_enemy` `.trainerMonsterIndicator_player` |
| `_extend` | function() in `dep_sockets`; function() in `dep_websockets` | 5 |  |
| `common` | table in `class`; common in `init` | 5 | `.class` `.instance` |
| `croppedDisplayObjectBuilder` | module "classes.modules.interface.croppedDisplayObjectBuilder" in `require_core` | 5 | `:new` |
| `fontInfoList` | module "classes.lists.fontInfoList" in `require_specific` | 5 | `.plain_8` `.outline_10_bold` `.plain_10` `.textVerticalCenterCorrectionWhenNotTrimmed` |
| `gifHelper` | module "classes.modules.gifHelper" in `require_core` | 5 | `:newBuilder` `:newSocialBuilder` `:createContainerAndBackground` `:getPlatforms` |
| `inQuart` | function(t, tMax, start, delta, propertyName) in `easing` | 5 |  |
| `innerTopBarStyleCrystals` | module "classes.interface.navBarObjects.topBarObjects.innerTopBarStyleCrystals" in `require_specific` | 5 | `:doCurrencyAnimation` `:isCreated` `:getOrCreateInstance` |
| `isTakingWorldScreenshots` | true in `worldDebugConsole`; true in `test_tiledMaps` | 5 |  |
| `milestoneScreen` | module "classes.interface.screens.milestoneScreen" in `require_specific` | 5 | `:getScreenForMilestones` `:getScreenForBattleDomeStars` |
| `monsterBattleConfigList` | module "classes.lists.monsterBattleConfigList" in `require_specific` | 5 | `.GHOST_WOLF_1` |
| `monsterBurnConditionConfigList` | module "classes.lists.monsterBurnConditionConfigList" in `require_specific` | 5 |  |
| `monsterDatabaseScreen` | module "classes.interface.screens.monsterDatabaseScreen" in `require_specific` | 5 | `:getScreen` `:getScreenForMonster` `:getScreenWithActiveViewMode` |
| `outCirc` | function(t, tMax, start, delta, propertyName) in `easing` | 5 |  |
| `sandstormWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.sandstormWeatherEffect" in `require_specific` | 5 | `:new` |
| `textureCacheHelper` | module "classes.modules.textureCacheHelper" in `require_core` | 5 | `:getOrCreateImageTexture` `:releaseTextures` |
| `twilightWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.twilightWeatherEffect" in `require_specific` | 5 | `:new` |
| `worldMapScreen` | module "classes.interface.screens.worldMapScreen" in `require_specific` | 5 | `:getScreenForPauseMenu` `:getScreenForLuxRecallPremium` `:getScreenForLuxTeleporter` |
| `worldSnow` | module "classes.world.worldSnow" in `require_specific` | 5 | `:createInstance` `:enableCrimsoniteSnow` |
| `worldSounds` | module "classes.world.worldSounds" in `require_specific` | 5 | `:load` |
| `AI` | instance of require("classes.battle.rules.AI") in `main` | 4 | `:isCalculatingAIScore` `:setIsCalculatingAIScore` |
| `AIScoreHelper` | module "classes.modules.battle.AIScoreHelper" in `require_specific` | 4 | `:reflectStatusScore` `:preferAttack` |
| `AfterCatchMonsterNicknameMode` | module "classes.enums.AfterCatchMonsterNicknameMode" in `require_specific` | 4 | `.ask` `.values` |
| `CustomDifficultyScreen` | module "classes.interface.screens.CustomDifficultyScreen" in `require_specific` | 4 | `:getScreenClosable` |
| `InputDeviceRegistry` | module "classes.modules.input.InputDeviceRegistry" in `require_core` | 4 | `:registerDefaultConfigForProductName` `:registerDefaultConfigForProductNameFunction` `:registerDefaultConfigForMFiProfile` `:resolveConfigFor` `:getCustomConfigByProductName` `:init` `:registerCustomConfigForProductName` |
| `MonsterSpriteSkinForEncounterZonesMode` | module "classes.enums.MonsterSpriteSkinForEncounterZonesMode" in `require_specific` | 4 | `.values` |
| `MouseHover` | module "classes.modules.input.MouseHover" in `require_core` | 4 | `:setCurrentFrameProperty` `:getCurrentFrameProperty` `:activateWithMouseHoverables` |
| `OnlineBattleRules` | module "classes.battle.online.OnlineBattleRules" in `require_specific` | 4 | `:forOnlineMatchmakingMode` `:forBattleDome` `:fromQueuePreferences` |
| `OnlineSelectSquadScreen` | module "classes.interface.screens.OnlineSelectSquadScreen" in `require_specific` | 4 | `:getScreenForEditing` `:getScreenForSelectingOnline` `:getScreenForSelectingBattleDome` |
| `PushNotifications` | module "classes.modules.PushNotifications" in `require_specific` | 4 | `:getDeviceToken` `:subscribeToTopic` `:hasPushNotificationPermission` `:optionallyRequestRequestNativePermission` `:trySubscribeToTopicOptionallyRequestingPermission` `:unsubscribeFromTopic` |
| `RandomizeEncounterZonesMode` | module "classes.enums.RandomizeEncounterZonesMode" in `require_specific` | 4 | `.values` |
| `RandomizeQuestMonstersMode` | module "classes.enums.RandomizeQuestMonstersMode" in `require_specific` | 4 | `.values` |
| `RandomizeSkillsMode` | module "classes.enums.RandomizeSkillsMode" in `require_specific` | 4 | `.values` |
| `RandomizeTrainerMonstersMode` | module "classes.enums.RandomizeTrainerMonstersMode" in `require_specific` | 4 | `.values` |
| `SaveslotPreferences` | module "classes.modules.saveslotData.SaveslotPreferences" in `require_specific` | 4 | `:getSaveslotsClustersByDeviceIds` `:delete` `:getCachedOnlineSaveslot` `:setCachedOnlineSaveslot` `:get` `:save` |
| `UIRadioButton` | module "classes.interface.UIRadioButton" in `require_specific` | 4 | `:new` |
| `blockHealStatus` | module "classes.battle.statuses.monster.multiRound.blockHealStatus" in `require_specific` | 4 | `:new` |
| `catchableMonsterParticipant` | module "classes.battle.participants.catchableMonsterParticipant" in `require_specific` | 4 | `:new` |
| `fontHelper` | module "classes.modules.fontHelper" in `require_core` | 4 | `:requireForAllFontsMerged` |
| `forEachTranslationFile` | function(_onTranslationFile) in `tests` | 4 |  |
| `forceRemoveStatus` | module "classes.battle.statuses.monster.other.forceRemoveStatus" in `require_specific` | 4 | `:new` |
| `forcedParentNavigationBuilder` | module "classes.modules.navigation.forcedParentNavigationBuilder" in `require_core` | 4 | `:new` |
| `freezeCondition` | module "classes.battle.statuses.monster.conditions.freezeCondition" in `require_specific` | 4 | `:new` |
| `inBack` | function(t, tMax, start, delta, propertyName, s) in `easing` | 4 |  |
| `loadPropertyFile` | function(_path, _basename, _basenameWithoutLanguageCode, _onTranslationKey) in `tests` | 4 |  |
| `localiseDialogAnswersWrapper` | function(_key, _params) in `languageHelper` | 4 |  |
| `monsterBattleDomeOpponentPreviewConfigList` | module "classes.lists.monsterBattleDomeOpponentPreviewConfigList" in `require_specific` | 4 |  |
| `monsterHitboxConfigList` | module "classes.lists.monsterHitboxConfigList" in `require_specific` | 4 |  |
| `monsterStorageScreen` | module "classes.interface.screens.monsterStorageScreen" in `require_specific` | 4 | `:getScreenForWithdraw` `:getScreenForSelection` |
| `outBounce` | function(t, tMax, start, delta, propertyName) in `easing` | 4 |  |
| `outExpo` | function(t, tMax, start, delta, propertyName) in `easing` | 4 |  |
| `poisonCondition` | module "classes.battle.statuses.monster.conditions.poisonCondition" in `require_specific` | 4 | `:new` |
| `rateAppHelper` | module "classes.modules.rateAppHelper" in `require_specific` | 4 | `:tryShowPopup` `:init` |
| `settingsScreen` | module "classes.interface.screens.settingsScreen" in `require_specific` | 4 | `:getScreenForPauseMenuScreen` `:getScreenParamsForPauseMenuScreenHold` `:getScreenForTitleScreen` |
| `snowWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.snowWeatherEffect" in `require_specific` | 4 | `:new` |
| `spriteList` | module "classes.lists.spriteList" in `require_specific` | 4 | `.hiddenItemSparkle` |
| `steamHelper` | module "classes.modules.steamHelper" in `require_core` | 4 | `:isEnabled` `:getAuthSessionTicket` `:isSteamDeck` `:resetAchievements` `:unlockAchievement` |
| `traitUtility` | module "classes.modules.utilities.traitUtility" in `require_specific` | 4 | `:getNameForEnhancementStage` `:getDescriptionForEnhancementStage` `:hasTraitEnhancement` |
| `unrequire` | function(_modulePath) in `global` | 4 |  |
| `worldBattleEffect` | module "classes.world.worldBattleEffect" in `require_specific` | 4 | `:new` |
| `wrapFunctions` | function(...) in `global` | 4 |  |
| `AfterCatchMonsterSummaryMode` | module "classes.enums.AfterCatchMonsterSummaryMode" in `require_specific` | 3 | `.ask` `.values` |
| `ArtifactRarity` | module "classes.enums.ArtifactRarity" in `require_specific` | 3 |  |
| `BattleDomeScreen` | module "classes.interface.screens.BattleDomeScreen" in `require_specific` | 3 | `:getScreenName` |
| `GetFullGameScreen` | module "classes.interface.screens.GetFullGameScreen" in `require_specific` | 3 | `:getScreen` `:ensureIAPProduct` |
| `MonsterAvatar` | module "classes.interface.MonsterAvatar" in `require_specific` | 3 | `:newUnknown` `:new` `:newBorderless` `:newBorderlessObject` `:newHoverableAndSelectable` |
| `MonsterSpriteSkinMilestoneScreen` | module "classes.interface.screens.MonsterSpriteSkinMilestoneScreen" in `require_specific` | 3 | `:getScreenForViewing` |
| `MonsterStorageScreenSortMode` | module "classes.enums.MonsterStorageScreenSortMode" in `require_specific` | 3 | `.sortByDateAscending` `.values` |
| `ObtainableHiddenItems` | module "classes.items.obtainableItem.lists.ObtainableHiddenItems" in `require_specific` | 3 | `:getRandomizable` `:getRandomizedObtainableItems` `:populateRandomizedObtainableItems` |
| `ObtainableItemChestItems` | module "classes.items.obtainableItem.lists.ObtainableItemChestItems" in `require_specific` | 3 | `:getRandomizable` `:getRandomizedObtainableItems` `:populateRandomizedObtainableItems` |
| `OnlineAvatarScreen` | module "classes.interface.screens.OnlineAvatarScreen" in `require_specific` | 3 | `:getScreenForMode` |
| `OnlineMenuScreen` | module "classes.interface.screens.OnlineMenuScreen" in `require_specific` | 3 | `:getScreenName` |
| `OnlineSelectMonsterOrderScreen` | module "classes.interface.screens.OnlineSelectMonsterOrderScreen" in `require_specific` | 3 | `:getScreenName` |
| `OnlineStyleScreen` | module "classes.interface.screens.OnlineStyleScreen" in `require_specific` | 3 | `:getScreenName` |
| `RogueStartExpeditionScreen` | module "classes.interface.screens.RogueStartExpeditionScreen" in `require_specific` | 3 | `:getScreenName` |
| `SaveslotClustersScreen` | module "classes.interface.screens.SaveslotClustersScreen" in `require_specific` | 3 | `:getScreenForTitleScreen` |
| `SaveslotFacade` | module "classes.modules.saveslotData.SaveslotFacade" in `require_specific` | 3 | `:save` `:delete` `:getSaveslotClustersByDeviceId` `:setCachedSaveslotClustersForDeviceId` |
| `UIScrollIndicatorBuilder` | module "classes.interface.UIScrollIndicatorBuilder" in `require_specific` | 3 | `:newForSlideView` `:newScrollIndicator` |
| `battleAI` | module "classes.modules.battle.battleAI" in `require_specific` | 3 | `:getStrengthAgainstOpponents` |
| `burnCondition` | module "classes.battle.statuses.monster.conditions.burnCondition" in `require_specific` | 3 | `:new` |
| `crimsoniteWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.crimsoniteWeatherEffect" in `require_specific` | 3 | `:new` |
| `debugIsRecordingTrailer` | true in `debug_create_rogueTrailerClips`; true in `debug_create_trailerClips` | 3 |  |
| `drowsyCondition` | module "classes.battle.statuses.monster.conditions.drowsyCondition" in `require_specific` | 3 | `:new` |
| `fruitDroneScreen` | module "classes.interface.screens.fruitDroneScreen" in `require_specific` | 3 | `:getScreenForFruitDrone` |
| `iceTownUtility` | module "classes.maps.iceTown.iceTownUtility" in `require_specific` | 3 | `:progressFestivalActivities` `:isVorstCorruptedByCrimsonite` |
| `inOutElasticCustom` | function(a, p) in `easing` | 3 |  |
| `logbookScreen` | module "classes.interface.screens.logbookScreen" in `require_specific` | 3 | `:getScreenName` |
| `lua` | module "classes.modules.lua" in `main` | 3 | `:encode` |
| `maskHelper` | module "classes.modules.maskHelper" in `require_core` | 3 | `:setLocationForFrame` |
| `milliseconds` | module "classes.constants.milliseconds" in `require_core` | 3 | `.SECOND` `.MINUTE` |
| `monsterMaskDimensionList` | module "classes.lists.monsterMaskDimensionList" in `require_specific` | 3 |  |
| `monsterTallMonsterButtonConfigIfNoHoldItemIndicatorList` | module "classes.lists.monsterTallMonsterButtonConfigIfNoHoldItemIndicatorList" in `require_specific` | 3 |  |
| `monsterTallMonsterButtonConfigList` | module "classes.lists.monsterTallMonsterButtonConfigList" in `require_specific` | 3 |  |
| `orderedPairsWithIndex` | function(_table) in `global` | 3 |  |
| `outInCubic` | function(t, tMax, start, delta, propertyName) in `easing` | 3 |  |
| `outQuart` | function(t, tMax, start, delta, propertyName) in `easing` | 3 |  |
| `paramHelper` | module "classes.modules.paramHelper" in `require_core` | 3 | `:optionalString` |
| `printIfFailed` | function(_errorKey, _function) in `tests` | 3 |  |
| `shockCondition` | module "classes.battle.statuses.monster.conditions.shockCondition" in `require_specific` | 3 | `:new` |
| `skillMove` | module "classes.battle.moves.skillMove" in `require_specific` | 3 | `:new` |
| `snapshotHelper` | module "classes.modules.snapshotHelper" in `require_core` | 3 | `:new` `:newAndRecreateIfAndroid` |
| `soundDurationList` | module "classes.lists.soundDurationList" in `require_specific` | 3 |  |
| `statBoostUtility` | module "classes.modules.utilities.statBoostUtility" in `require_specific` | 3 | `:getFactor` `:getFactorStringWithColor` |
| `switchMonsterMove` | module "classes.battle.moves.switchMonsterMove" in `require_specific` | 3 | `:new` |
| `timeHelper` | module "classes.modules.timeHelper" in `require_core` | 3 | `:startOfCurrentHour` `:startOfCurrentDay` |
| `typeUtility` | module "classes.modules.utilities.typeUtility" in `require_specific` | 3 | `:createTypeIconOrUnknownIcon` |
| `vararg` | module "classes.libraries.vararg" in `require_core` | 3 | `.concat` `.concatSafe` `.countNonNil` |
| `worldCinematicOverlay` | module "classes.world.worldCinematicOverlay" in `require_specific` | 3 | `:createInstance` |
| `BattleEnvironmentPreview` | module "classes.interface.BattleEnvironmentPreview" in `require_specific` | 2 | `:new` `:newForWorldLocation` |
| `CoromonWebsocket` | module "classes.online.CoromonWebsocket" in `require_specific` | 2 | `:newAuthorizing` `:optionallyEmptyArray` |
| `DemoHelper` | module "classes.modules.DemoHelper" in `require_specific` | 2 | `:getDemoMonsterFamilies` `:getDemoMonsters` |
| `DepleteEnergyAction` | module "classes.battle.actions.DepleteEnergyAction" in `require_specific` | 2 | `:new` |
| `ExpeditionPerk` | module "classes.enums.ExpeditionPerk" in `require_specific` | 2 | `.values` |
| `GOGHelper` | module "classes.modules.GOGHelper" in `require_core` | 2 | `:getEncryptedAppTicket` `:unlockAchievement` |
| `HubSpecialty` | module "classes.enums.HubSpecialty" in `require_specific` | 2 | `.values` |
| `LaunchArgumentHelper` | module "classes.modules.LaunchArgumentHelper" in `main` | 2 | `:getValue` `:init` |
| `MonsterSpriteSkinForTrainerMonstersMode` | module "classes.enums.MonsterSpriteSkinForTrainerMonstersMode" in `require_specific` | 2 | `.values` |
| `MonsterTypeIconGapOffsetConfigList` | module "classes.lists.MonsterTypeIconGapOffsetConfigList" in `require_specific` | 2 |  |
| `OnlineInventoryServer` | module "classes.online.OnlineInventoryServer" in `require_specific` | 2 | `:redeemShopReceipt` `:getInventory` |
| `OnlineRankingServer` | module "classes.online.OnlineRankingServer" in `require_specific` | 2 | `:getAndCacheActiveSeason` `:getActiveSeasonRank` `:getLeaderboardPage` `:getSeason` |
| `OnlineSaveslotServer` | module "classes.online.OnlineSaveslotServer" in `require_specific` | 2 | `:getMetadata` `:put` `:delete` `:getAll` `:getData` |
| `QuestionMarkEvent` | module "classes.enums.QuestionMarkEvent" in `require_specific` | 2 | `.values` |
| `RecoverEnergyAction` | module "classes.battle.actions.RecoverEnergyAction" in `require_specific` | 2 | `:new` |
| `RecoverHealthAction` | module "classes.battle.actions.RecoverHealthAction" in `require_specific` | 2 | `:new` |
| `RogueBudgetAllocationScreen` | module "classes.interface.screens.RogueBudgetAllocationScreen" in `require_specific` | 2 | `:getScreenForEditing` `:getScreenForViewing` |
| `RogueCharacterScreen` | module "classes.interface.screens.RogueCharacterScreen" in `require_specific` | 2 | `:getScreenName` |
| `SaveslotClusterPopup` | module "classes.interface.overlays.SaveslotClusterPopup" in `require_specific` | 2 | `:new` |
| `SilenceableMessagePopup` | module "classes.interface.overlays.SilenceableMessagePopup" in `require_specific` | 2 | `:new` |
| `TypeEffectivenessMode` | module "classes.enums.TypeEffectivenessMode" in `require_specific` | 2 | `.values` |
| `UIReflectedGradientHeader` | module "classes.interface.UIReflectedGradientHeader" in `require_specific` | 2 | `:new` |
| `UITopBar` | module "classes.interface.UITopBar" in `require_specific` | 2 | `:new` |
| `UIVerticalContainerStyle` | module "classes.interface.enums.UIVerticalContainerStyle" in `require_specific` | 2 | `.contentContainerSeparator` |
| `Window` | module "classes.libraries.Window" in `require_core` | 2 | `:isFullscreen` `:setScale` `:setFullscreen` |
| `accelerate` | function(_delta, _initialSpeed, _targetSpeed) in `easing` | 2 |  |
| `audio` | table in `def` | 2 | `.AmbientMixMode` `.MixMode` `.setSessionProperty` `.supportsSessionProperty` |
| `berserkStatus` | module "classes.battle.statuses.monster.multiRound.berserkStatus" in `require_specific` | 2 | `:new` |
| `blazingCoalsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.blazingCoalsEntryHazard" in `require_specific` | 2 | `:new` |
| `blessedGroundsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.blessedGroundsEntryHazard" in `require_specific` | 2 | `:new` |
| `blockNegativeStatBoostStatus` | module "classes.battle.statuses.monster.multiRound.blockNegativeStatBoostStatus" in `require_specific` | 2 | `:new` |
| `blockNonDamagingSkillStatus` | module "classes.battle.statuses.monster.multiRound.blockNonDamagingSkillStatus" in `require_specific` | 2 | `:new` |
| `blockNonMostRecentSkillStatus` | module "classes.battle.statuses.monster.multiRound.blockNonMostRecentSkillStatus" in `require_specific` | 2 | `:new` |
| `chargingStatus` | module "classes.battle.statuses.monster.other.chargingStatus" in `require_specific` | 2 | `:new` |
| `curseCondition` | module "classes.battle.statuses.monster.conditions.curseCondition" in `require_specific` | 2 | `:new` |
| `cursedGroundsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.cursedGroundsEntryHazard" in `require_specific` | 2 | `:new` |
| `debugMapSelectScreen` | module "classes.interface.screens.debugMapSelectScreen" in `require_specific` | 2 | `:getScreen` |
| `debugScreen` | false in `debug_outputShopCouponRequest`; false in `debug_outputShopItemRequests` | 2 |  |
| `debugScreenScreenOptions` | value in `debug_configure_monsters_burnConditionConfig`; table in `debug_configure_npcCharacter` | 2 | `.onlineMatchmakingMode` |
| `delayedPoisonStatus` | module "classes.battle.statuses.monster.other.delayedPoisonStatus" in `require_specific` | 2 | `:new` |
| `electrifiedStatus` | module "classes.battle.statuses.monster.other.electrifiedStatus" in `require_specific` | 2 | `:new` |
| `electroMinesEntryHazard` | module "classes.battle.statuses.battle.entryHazards.electroMinesEntryHazard" in `require_specific` | 2 | `:new` |
| `empoweringGroundsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.empoweringGroundsEntryHazard" in `require_specific` | 2 | `:new` |
| `execute` | function(_function, ...) in `global` | 2 |  |
| `feelersStatus` | module "classes.battle.statuses.monster.other.feelersStatus" in `require_specific` | 2 | `:new` |
| `fireSkillUtility` | module "classes.battle.skills.utility.fireSkillUtility" in `require_specific` | 2 | `:spawnExplosionSprite` |
| `firedUpStatus` | module "classes.battle.statuses.monster.other.firedUpStatus" in `require_specific` | 2 | `:new` |
| `frigidBarrierStatus` | module "classes.battle.statuses.monster.multiRound.frigidBarrierStatus" in `require_specific` | 2 | `:new` |
| `harborUtility` | module "classes.maps.harbor.harborUtility" in `require_specific` | 2 | `:askIfReadyToGoToElectricTown` |
| `hauntedGroundsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.hauntedGroundsEntryHazard" in `require_specific` | 2 | `:new` |
| `hazyCondition` | module "classes.battle.statuses.monster.conditions.hazyCondition" in `require_specific` | 2 | `:new` |
| `iceWallStatus` | module "classes.battle.statuses.battle.other.iceWallStatus" in `require_specific` | 2 | `:new` |
| `icyNailsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.icyNailsEntryHazard" in `require_specific` | 2 | `:new` |
| `ifFailed` | function(_function, _onFail) in `tests` | 2 |  |
| `inQuint` | function(t, tMax, start, delta, propertyName) in `easing` | 2 |  |
| `increaseEnergyCostStatus` | module "classes.battle.statuses.monster.other.increaseEnergyCostStatus" in `require_specific` | 2 | `:new` |
| `lastStandStatus` | module "classes.battle.statuses.monster.singleRound.lastStandStatus" in `require_specific` | 2 | `:new` |
| `localiseArray` | function(_key, _params) in `languageHelper` | 2 |  |
| `luxSolisTownUtility` | module "classes.maps.luxSolisTown.luxSolisTownUtility" in `require_specific` | 2 | `:spawnReceptionGauntletPlatform` |
| `milestoneList` | module "classes.lists.milestoneList" in `require_specific` | 2 |  |
| `monsterOnlineAvatarConfigList` | module "classes.lists.monsterOnlineAvatarConfigList" in `require_specific` | 2 |  |
| `mysticMeshStatus` | module "classes.battle.statuses.battle.other.mysticMeshStatus" in `require_specific` | 2 | `:new` |
| `ninjaStanceStatus` | module "classes.battle.statuses.monster.singleRound.ninjaStanceStatus" in `require_specific` | 2 | `:new` |
| `outBack` | function(t, tMax, start, delta, propertyName, s) in `easing` | 2 |  |
| `outInQuad` | function(t, tMax, start, delta, propertyName) in `easing` | 2 |  |
| `outQuint` | function(t, tMax, start, delta, propertyName) in `easing` | 2 |  |
| `outerTopBarDebugButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarDebugButtonBuilder" in `require_specific` | 2 | `:new` |
| `outerTopBarInfoButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarInfoButtonBuilder" in `require_specific` | 2 | `:new` |
| `outerTopBarRestorePurchasesButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarRestorePurchasesButtonBuilder" in `require_specific` | 2 | `:getOrCreateInstance` |
| `pieChartBuilder` | module "classes.modules.interface.pieChartBuilder" in `require_core` | 2 | `:new` |
| `premonitionStatus` | module "classes.battle.statuses.monster.other.premonitionStatus" in `require_specific` | 2 | `:new` |
| `purifyingGroundsEntryHazard` | module "classes.battle.statuses.battle.entryHazards.purifyingGroundsEntryHazard" in `require_specific` | 2 | `:new` |
| `regularTrainerAI` | module "classes.battle.AI.regularTrainerAI" in `require_specific` | 2 | `:new` |
| `repeatMostRecentSkillStatus` | module "classes.battle.statuses.monster.multiRound.repeatMostRecentSkillStatus" in `require_specific` | 2 | `:new` |
| `restMove` | module "classes.battle.moves.restMove" in `require_specific` | 2 | `:new` |
| `robbedStatus` | module "classes.battle.statuses.participant.robbedStatus" in `require_specific` | 2 | `:new` |
| `rockWallStatus` | module "classes.battle.statuses.battle.other.rockWallStatus" in `require_specific` | 2 | `:new` |
| `rubberWebStatus` | module "classes.battle.statuses.battle.other.rubberWebStatus" in `require_specific` | 2 | `:new` |
| `sandSkewersEntryHazard` | module "classes.battle.statuses.battle.entryHazards.sandSkewersEntryHazard" in `require_specific` | 2 | `:new` |
| `skipMonsterSpriteMove` | module "classes.battle.moves.skipMonsterSpriteMove" in `require_specific` | 2 | `:new` |
| `smarterTrainerAI` | module "classes.battle.AI.smarterTrainerAI" in `require_specific` | 2 | `:new` |
| `sparkWallStatus` | module "classes.battle.statuses.battle.other.sparkWallStatus" in `require_specific` | 2 | `:new` |
| `spectralLatticeStatus` | module "classes.battle.statuses.battle.other.spectralLatticeStatus" in `require_specific` | 2 | `:new` |
| `spikeTrapEntryHazard` | module "classes.battle.statuses.battle.entryHazards.spikeTrapEntryHazard" in `require_specific` | 2 | `:new` |
| `staticFurStatus` | module "classes.battle.statuses.monster.multiRound.staticFurStatus" in `require_specific` | 2 | `:new` |
| `staticHazeWeatherEffect` | module "classes.battle.statuses.battle.weatherEffects.staticHazeWeatherEffect" in `require_specific` | 2 | `:new` |
| `stayingFrostyStatus` | module "classes.battle.statuses.monster.multiRound.stayingFrostyStatus" in `require_specific` | 2 | `:new` |
| `sumoStanceStatus` | module "classes.battle.statuses.monster.multiRound.sumoStanceStatus" in `require_specific` | 2 | `:new` |
| `superKnockdownStatus` | module "classes.battle.statuses.monster.other.superKnockdownStatus" in `require_specific` | 2 | `:new` |
| `worldBattleDomeTokens` | module "classes.world.worldBattleDomeTokens" in `require_specific` | 2 | `:updateBattleDomeTokensIndicatorTextAnimated` `:showOnDefaultLayer` `:showOnAboveOverlayLayer` `:createInstance` `:hide` |
| `worldDesertShadow` | module "classes.world.worldDesertShadow" in `require_specific` | 2 | `:isCreated` |
| `worldMescherRealmLightSoulFlasks` | module "classes.world.worldMescherRealmLightSoulFlasks" in `require_specific` | 2 | `:createInstance` `:fillNextFlask` |
| `worldThunderFlash` | module "classes.world.worldThunderFlash" in `require_specific` | 2 | `:createInstanceIfNotDefeatedElectricTitan` |
| `BattleEnvironmentPreviewOffsetList` | module "classes.lists.BattleEnvironmentPreviewOffsetList" in `require_specific` | 1 |  |
| `DebugFrameDiagnostics` | module "classes.debug.DebugFrameDiagnostics" in `require_debug` | 1 | `:disable` `:enable` |
| `EOSHelper` | module "classes.modules.EOSHelper" in `require_core` | 1 | `:getAuthIdToken` |
| `ICloudSaveslotRecords` | module "classes.modules.saveslotData.ICloudSaveslotRecords" in `require_specific` | 1 | `:create` `:save` `:delete` `:fetch` `:fetchAll` `:getRecordName` `.cloudKitErrors` |
| `MaskProfanityWords` | value in `def` | 1 |  |
| `ObtainableDrillShovelItems` | module "classes.items.obtainableItem.lists.ObtainableDrillShovelItems" in `require_specific` | 1 | `:getRandomizable` |
| `OnScreenDebugNotification` | module "classes.modules.OnScreenDebugNotification" in `require_specific` | 1 | `:notify` |
| `OnlineAuthenticationProvider` | module "classes.enums.OnlineAuthenticationProvider" in `require_specific` | 1 | `.epic` `.taptap` `.dev` `.androidDevice` `.gog` `.iOSDevice` `.ludium` `.nintendo` |
| `OnlineMatchmakingSocket` | module "classes.battle.online.OnlineMatchmakingSocket" in `require_specific` | 1 | `:connect` `:disconnect` `:getWebsocket` `:sendLeaveQueueRequestAndClearOtherListeners` `:setOnQueuePopEvent` `:setOnQueuePopResultEvent` `:setOnQueueSearchingEvent` `:sendAcceptQueuePopCommand` |
| `OnlineRewardsServer` | module "classes.online.OnlineRewardsServer" in `require_specific` | 1 | `:acknowledgePendingReward` `:claimPendingReward` `:completeStaticMilestone` `:getPendingRewards` `:getStaticMilestones` |
| `Pasteboard` | module "classes.modules.Pasteboard" in `require_specific` | 1 | `:copy` `:isAvailable` |
| `RogueMineral` | module "classes.enums.RogueMineral" in `require_specific` | 1 |  |
| `UniversalLinks` | module "classes.modules.UniversalLinks" in `main` | 1 | `:init` |
| `_destroy` | function() in `lua_utils` | 1 |  |
| `_optimize` | function() in `lua_class` | 1 |  |
| `_patch` | function() in `lua_states_mix` | 1 |  |
| `_print` | function() in `lua_utils` | 1 |  |
| `abstractInventoryBuilder` | module "classes.modules.abstractInventoryBuilder" in `require_specific` | 1 | `:new` |
| `activeDebugEffects` | table in `developerHome_area` | 1 | `.rain` `.thunder` `.flashlight` |
| `afterPartialSkillMoveCriticalHit` | instance of require("classes.battle.rules.afterPartialSkillMoveCriticalHit") in `main` | 1 |  |
| `afterSkillMoveEffectiveAttack` | instance of require("classes.battle.rules.afterSkillMoveEffectiveAttack") in `main` | 1 |  |
| `afterSkillMoveMiss` | instance of require("classes.battle.rules.afterSkillMoveMiss") in `main` | 1 |  |
| `battleHelper` | module "classes.modules.battle.battleHelper" in `require_specific` | 1 | `:getBattleCenterOffset` |
| `catchableTrainerMonsterParticipant` | module "classes.battle.participants.catchableTrainerMonsterParticipant" in `require_specific` | 1 | `:new` |
| `consumePurchaseTimer` | value in `IAPStore` | 1 |  |
| `debugBurnConditionConfigScreen` | module "classes.interface.screens.debugBurnConditionConfigScreen" in `require_specific` | 1 | `:getScreenForMonster` |
| `debugIsBattleActionsPanelInvisible` | true in `debug_export_websiteBattleGif` | 1 |  |
| `debugIsBattleInterfaceInvisible` | false in `debug_configure_monsters_battleConfig` | 1 |  |
| `debugIsBattleVisible` | true in `debug_configure_monsters_battleConfig` | 1 |  |
| `debugIsProgrammedPlayerInput` | true in `debug_export_websiteExploreGif` | 1 |  |
| `debugMapFile` | "trainerHub_luxSolisTown" in `debugSettings`; nil in `debug_load_newGame` | 1 |  |
| `debugMapOptions` | table in `debugSettings`; nil in `debug_load_newGame` | 1 |  |
| `debugMapPath` | "luxSolisTown/" in `debugSettings`; nil in `debug_load_newGame` | 1 |  |
| `debugQuestStateScreen` | module "classes.interface.screens.debugQuestStateScreen" in `require_specific` | 1 | `:getScreenForQuest` |
| `desertTownUtility` | module "classes.maps.desertTown.desertTownUtility" in `require_specific` | 1 | `:getShopItems` `:executeRandomGuardResponseCutscene` |
| `displayObjectPool` | module "classes.modules.interface.displayObjectPool" in `require_core` | 1 | `:new` |
| `dumbTrainerAI` | module "classes.battle.AI.dumbTrainerAI" in `require_specific` | 1 | `:new` |
| `emptyParams` | function() in `CoromonWebsocket` | 1 |  |
| `errStr` | function() in `lua_states_mix` | 1 |  |
| `escapeMove` | module "classes.battle.moves.escapeMove" in `require_specific` | 1 | `:new` |
| `filter` | function() in `lua_e4x` | 1 |  |
| `finalGiftStatus` | module "classes.battle.statuses.monster.other.finalGiftStatus" in `require_specific` | 1 | `:new` |
| `fiveFrameImageBuilder` | module "classes.modules.interface.fiveFrameImageBuilder" in `require_core` | 1 | `:new` |
| `focusBuilder` | module "classes.modules.navigation.focusBuilder" in `require_core` | 1 | `:new` |
| `foldr` | function() in `lua_e4x` | 1 |  |
| `forfeitMove` | module "classes.battle.moves.forfeitMove" in `require_specific` | 1 | `:new` |
| `fourFrameImageBuilder` | module "classes.modules.interface.fourFrameImageBuilder" in `require_core` | 1 | `:new` |
| `gravityPullStatus` | module "classes.battle.statuses.monster.other.gravityPullStatus" in `require_specific` | 1 | `:new` |
| `gridMoveDataUtility` | module "classes.modules.utilities.gridMoveDataUtility" in `require_specific` | 1 | `:new` |
| `handCursorBuilder` | module "classes.interface.handCursorBuilder" in `require_specific` | 1 | `:new` |
| `inBackCustom` | function(_s) in `easing` | 1 |  |
| `inBounce` | function(t, tMax, start, delta, propertyName) in `easing` | 1 |  |
| `inCirc` | function(t, tMax, start, delta, propertyName) in `easing` | 1 |  |
| `inExpo` | function(t, tMax, start, delta, propertyName) in `easing` | 1 |  |
| `innerTopBarMonstersOwnedCounter` | module "classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersOwnedCounter" in `require_specific` | 1 | `:new` |
| `innerTopBarMonstersSeenCounter` | module "classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersSeenCounter" in `require_specific` | 1 | `:new` |
| `innerTopBarMonstersStoredCounter` | module "classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersStoredCounter" in `require_specific` | 1 | `:new` `:setAmount` |
| `innerTopBarTitle` | module "classes.interface.navBarObjects.topBarObjects.innerTopBarTitle" in `require_specific` | 1 | `:getOrCreateInstance` |
| `key_value` | value in `lua_files` | 1 |  |
| `kindredSoulStatus` | module "classes.battle.statuses.monster.other.kindredSoulStatus" in `require_specific` | 1 | `:new` |
| `lib` | instance of require("CoronaLibrary") in `websockets` | 1 |  |
| `localiseComplex` | function(_key, _params) in `languageHelper` | 1 |  |
| `localiseKey` | function(_key, _params, _dontLogTranslationNotFound) in `languageHelper` | 1 |  |
| `maskedDisplayObjectBuilder` | module "classes.modules.interface.maskedDisplayObjectBuilder" in `require_core` | 1 | `:new` |
| `mirrorChallengeAI` | module "classes.battle.AI.mirrorChallengeAI" in `require_specific` | 1 | `:new` |
| `monsterBorderSpriteList` | module "classes.lists.monsterBorderSpriteList" in `require_specific` | 1 |  |
| `monsterDoubleGlowSpriteList` | module "classes.lists.monsterDoubleGlowSpriteList" in `require_specific` | 1 |  |
| `monsterGlowSpriteList` | module "classes.lists.monsterGlowSpriteList" in `require_specific` | 1 |  |
| `monsterOutlineSpriteList` | module "classes.lists.monsterOutlineSpriteList" in `require_specific` | 1 |  |
| `monsterShadowConfigList` | module "classes.lists.monsterShadowConfigList" in `require_specific` | 1 |  |
| `monsterShadowOffsetList` | module "classes.lists.monsterShadowOffsetList" in `require_specific` | 1 |  |
| `monsterShadowSpriteList` | module "classes.lists.monsterShadowSpriteList" in `require_specific` | 1 |  |
| `monsterUsableItemMove` | module "classes.battle.moves.monsterUsableItemMove" in `require_specific` | 1 | `:new` |
| `negate` | function(_booleanFunction) in `global` | 1 |  |
| `neutralizedStatus` | module "classes.battle.statuses.monster.multiRound.neutralizedStatus" in `require_specific` | 1 | `:new` |
| `nineFrameImageBuilder` | module "classes.modules.interface.nineFrameImageBuilder" in `require_core` | 1 | `:new` |
| `onlineOpponentTrainerParticipant` | module "classes.battle.participants.onlineOpponentTrainerParticipant" in `require_specific` | 1 | `:new` |
| `onlinePlayerTrainerParticipant` | module "classes.battle.participants.onlinePlayerTrainerParticipant" in `require_specific` | 1 | `:new` |
| `orderedPairsNext` | function(_table, _previousKey) in `global` | 1 |  |
| `outBackCustom` | function(_s) in `easing` | 1 |  |
| `outElasticCustom` | function(a, p) in `easing` | 1 |  |
| `outInSine` | function(t, tMax, start, delta, propertyName) in `easing` | 1 |  |
| `outStr` | function() in `lua_states_mix` | 1 |  |
| `outerTopBarMonsterFilterButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarMonsterFilterButtonBuilder" in `require_specific` | 1 | `:new` |
| `outerTopBarMonsterSortButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarMonsterSortButtonBuilder" in `require_specific` | 1 | `:new` |
| `outerTopBarOnlineLeaderboardsButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarOnlineLeaderboardsButtonBuilder" in `require_specific` | 1 | `:new` |
| `outerTopBarQuitButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarQuitButtonBuilder" in `require_specific` | 1 | `:new` |
| `outerTopBarRandomButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarRandomButtonBuilder" in `require_specific` | 1 | `:new` |
| `outerTopBarSetMonsterLevelToButtonBuilder` | module "classes.interface.navBarObjects.topBarObjects.outerTopBarSetMonsterLevelToButtonBuilder" in `require_specific` | 1 | `:new` |
| `overclockerStatus` | module "classes.battle.statuses.monster.other.overclockerStatus" in `require_specific` | 1 | `:new` |
| `parabola` | function(_parabolaDelta, _easing) in `easing` | 1 |  |
| `percentages` | function(_percentages) in `easing` | 1 |  |
| `pollutedStatus` | module "classes.battle.statuses.battle.other.pollutedStatus" in `require_specific` | 1 | `:new` |
| `potentialRerollWorldEffect` | module "classes.world.effects.world.potentialRerollWorldEffect" in `require_specific` | 1 | `:new` |
| `potentialStatSoftResetWorldEffect` | module "classes.world.effects.world.potentialStatSoftResetWorldEffect" in `require_specific` | 1 | `:new` |
| `preloadPropertyFile` | function(_path, _basename, _basenameWithoutLanguageCode) in `tests` | 1 |  |
| `recallBlockerWorldEffect` | module "classes.world.effects.world.recallBlockerWorldEffect" in `require_specific` | 1 | `:new` |
| `rechargeMove` | module "classes.battle.moves.rechargeMove" in `require_specific` | 1 | `:new` |
| `rechargingStatus` | module "classes.battle.statuses.monster.other.rechargingStatus" in `require_specific` | 1 | `:new` |
| `regurgitatingStatus` | module "classes.battle.statuses.monster.multiRound.regurgitatingStatus" in `require_specific` | 1 | `:new` |
| `saveslotDataUtility` | module "classes.modules.saveslotData.saveslotDataUtility" in `require_specific` | 1 | `:getMainCharacterMapFile` `:getMainCharacterMapPath` |
| `shareHelper` | module "classes.modules.shareHelper" in `require_specific` | 1 | `:canShare` `:shareString` |
| `sharedFateStatus` | module "classes.battle.statuses.monster.other.sharedFateStatus" in `require_specific` | 1 | `:new` |
| `silentSkipMove` | module "classes.battle.moves.silentSkipMove" in `require_specific` | 1 | `:new` |
| `skillPowerBoostStatus` | module "classes.battle.statuses.monster.singleRound.skillPowerBoostStatus" in `require_specific` | 1 | `:new` |
| `spinnerSwapWorldEffect` | module "classes.world.effects.world.spinnerSwapWorldEffect" in `require_specific` | 1 | `:new` |
| `titanEncounterOverlayBuilder` | module "classes.interface.battle.encounterOverlays.titanEncounterOverlayBuilder" in `require_specific` | 1 | `:new` |
| `trainerEncounterOverlayBuilder` | module "classes.interface.battle.encounterOverlays.trainerEncounterOverlayBuilder" in `require_specific` | 1 | `:new` |
| `traitRerollWorldEffect` | module "classes.world.effects.world.traitRerollWorldEffect" in `require_specific` | 1 | `:new` |
| `twoFrameImageBuilder` | module "classes.modules.interface.twoFrameImageBuilder" in `require_core` | 1 | `:new` |
| `usableItemMove` | module "classes.battle.moves.usableItemMove" in `require_specific` | 1 | `:new` |
| `vibrateHelper` | module "classes.modules.vibrateHelper" in `require_specific` | 1 | `:vibrate` |
| `waterTownUtility` | module "classes.maps.waterTown.waterTownUtility" in `require_specific` | 1 | `:isChalchiuCorruptedByCrimsonite` |
| `worldCrimsoniteHeatMeter` | module "classes.world.worldCrimsoniteHeatMeter" in `require_specific` | 1 | `:createInstance` `:destroy` `:onAfterStepOnCrimsoniteHeatedWaterArea` `:setHeat` |
| `worldDebugMapPresetSelect` | module "classes.debug.worldInterface.worldDebugMapPresetSelect" in `require_debug` | 1 | `:showPresets` |
| `worldDungeon` | module "classes.world.worldDungeon" in `require_specific` | 1 | `:createInstance` |
| `worldMapDataUtility` | module "classes.modules.utilities.worldMapDataUtility" in `require_specific` | 1 | `:new` |
| `worldSaveBlocker` | module "classes.world.worldSaveBlocker" in `require_specific` | 1 | `:isCreated` |
| `xml` | module "classes.modules.xml" in `main` | 1 | `:decode` |
| `WeightedShufflebag` | module "classes.modules.WeightedShufflebag" in `require_core` | 0 |  |
| `_` | value in `OnlineSquadMonsterButton`; value in `reflectionSpawnablePlugin` | 0 |  |
| `appleTVHelper` | module "classes.modules.appleTVHelper" in `require_specific` | 0 |  |
| `application` | table in `config` | 0 |  |
| `blockStatusStatus` | module "classes.battle.statuses.monster.multiRound.blockStatusStatus" in `require_specific` | 0 |  |
| `continuousLoop` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `crash` | function() in `global` | 0 |  |
| `darkCoatStatus` | module "classes.battle.statuses.monster.singleRound.darkCoatStatus" in `require_specific` | 0 |  |
| `desertRouteUtility` | module "classes.maps.desertRoute.desertRouteUtility" in `require_specific` | 0 |  |
| `encodeXmlString` | function() in `lua_e4x` | 0 |  |
| `iceSkillUtility` | module "classes.battle.skills.utility.iceSkillUtility" in `require_specific` | 0 |  |
| `inElasticCustom` | function(a, p) in `easing` | 0 |  |
| `inOutBack` | function(t, tMax, start, delta, propertyName, s) in `easing` | 0 |  |
| `inOutBackCustom` | function(_s) in `easing` | 0 |  |
| `inOutBounce` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `inOutCirc` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `inOutExpo` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `inOutQuart` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `inOutQuint` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `innerBottomBarButtonIndicatorText` | module "classes.interface.navBarObjects.bottomBarObjects.innerBottomBarButtonIndicatorText" in `require_specific` | 0 |  |
| `map` | function() in `lua_e4x` | 0 |  |
| `minutes` | module "classes.constants.minutes" in `require_core` | 0 |  |
| `opts` | value in `lua_utils` | 0 |  |
| `outInBack` | function(t, tMax, start, delta, propertyName, s) in `easing` | 0 |  |
| `outInBackCustom` | function(_s) in `easing` | 0 |  |
| `outInBounce` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `outInCirc` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `outInElasticCustom` | function(a, p) in `easing` | 0 |  |
| `outInExpo` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `outInQuart` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `outInQuint` | function(t, tMax, start, delta, propertyName) in `easing` | 0 |  |
| `pairsWithIndex` | function(_table) in `global` | 0 |  |
| `reflectDamageStatus` | module "classes.battle.statuses.monster.multiRound.reflectDamageStatus" in `require_specific` | 0 |  |
| `soundList` | module "classes.lists.soundList" in `require_specific` | 0 |  |
| `steps` | function(_steps) in `easing` | 0 |  |
| `swampUtility` | module "classes.maps.swampRoute.swampUtility" in `require_specific` | 0 |  |
| `worldBackground` | module "classes.world.worldBackground" in `require_specific` | 0 |  |
| `worldDebugConsole` | module "classes.debug.worldInterface.worldDebugConsole" in `require_debug` | 0 |  |
| `worldDebugCreateCharacter` | module "classes.debug.worldInterface.worldDebugCreateCharacter" in `require_debug` | 0 |  |
| `worldDebugQuestState` | module "classes.debug.worldInterface.worldDebugQuestState" in `require_debug` | 0 |  |
| `worldDebugSpawnSelect` | module "classes.debug.worldInterface.worldDebugSpawnSelect" in `require_debug` | 0 |  |

## Details

### AI

- defined in `main` as instance of require("classes.battle.rules.AI")
- methods: `:isCalculatingAIScore`, `:setIsCalculatingAIScore`

### AIScoreHelper

- defined in `classes.require_specific` as module "classes.modules.battle.AIScoreHelper"
- methods: `:reflectStatusScore`, `:preferAttack`

### Achievement

- defined in `classes.require_specific` as module "classes.enums.Achievement"
- methods: `:newValueObject`, `:resetPercentageOfMaxProgressCache`
- fields: `.values`, `.SELL_GEMS_FOR_5000_GOLD`, `.CATCH_FIRE_TURTLE_1`, `.CROSS_DESERTROUTE_3_BRIDGE`, `.DEFEAT_60_TRAINERS`, `.FIND_150_HIDDEN_ITEMS`, `.GET_HIGHSCORE_1000_IN_SWURMY_RUSH`, `.GET_HIGHSCORE_500_IN_FLAPPY_SWURMY`, `.REACH_COROMON_LEVEL_99`, `.REACH_LUX_SOLIS_RANK_100`, `.REACH_LUX_SOLIS_RANK_50`, `.COMPLETE_TRAINING_HAGGLE`, `.COMPLETE_TRAINING_THROWING_ARM`, `.FIND_OUTFIT_WALDO`, `.REROLL_POTENTIAL`, `.CATCH_ICE_BEAR_1`, `.CONSUME_FRUIT`, `.DIG_UP_HOLD_ITEM`, `.EVOLVE_A_COROMON`, `.FIND_CAKES_IN_OVEN`, `.FIND_CAVE_WITHIN_A_CAVE`, `.FIND_HEADGEAR_BUNNY`, `.FIND_HEADGEAR_SANTA`, `.FINISH_GAME_ON_EASY`, `.FINISH_GAME_ON_HARD`, `.FINISH_GAME_ON_INSANE`, `.FINISH_GAME_ON_NORMAL`, `.FINISH_GAME_WITHOUT_MONSTER_FAINTED`, `.GET_6_BATTLE_DOME_STARS_IN_COROMON_RUSH`, `.PET_PAWBURY_SWURMY_TOO_MANY_TIMES`, `.PLANT_FRUITS_IN_ALL_POTS`, `.PROGRESS_10_DEFEAT_TITAN_WATER`, `.PROGRESS_1_PICK_STARTER`, `.PROGRESS_2_DEFEAT_MYSTERIOUS_INTRUDER`, `.PROGRESS_3_DEFEAT_TITAN_ELECTRIC`, `.PROGRESS_4_DEFEAT_TITAN_GHOST`, `.PROGRESS_5_DEFEAT_TITAN_SAND`, `.PROGRESS_6_WIN_MIRROR_CHALLENGE`, `.PROGRESS_7_DEFEAT_TITAN_FIRE`, `.PROGRESS_8_ICETOWN_FESTIVAL` ...

### AfterCatchMonsterNicknameMode

- defined in `classes.require_specific` as module "classes.enums.AfterCatchMonsterNicknameMode"
- fields: `.ask`, `.values`

### AfterCatchMonsterSummaryMode

- defined in `classes.require_specific` as module "classes.enums.AfterCatchMonsterSummaryMode"
- fields: `.ask`, `.values`

### AjaxLoader

- defined in `classes.require_specific` as module "classes.interface.sprites.AjaxLoader"
- methods: `:newPlaying`

### AjaxLoaderOverlay

- defined in `classes.require_specific` as module "classes.interface.overlays.AjaxLoaderOverlay"
- methods: `:new`

### Analytics

- defined in `classes.tests.test_translation_syntax_errors` as value
- defined in `classes.tests.ui_screenshots.test_ui_with_screenshots` as value
- defined in `main` as module "classes.modules.analytics.Analytics"
- methods: `:sendWarningEvent`, `:sendErrorEvent`, `:getClient`, `:init`, `:sendBattleLostEvent`, `:sendConfiguredInputDeviceEvent`, `:sendConfiguredSafeInsetEvent`

### Battle

- defined in `classes.require_specific` as module "classes.modules.battle.Battle"
- methods: `:getFrontLayer`, `:getMonsterSpritesInBattle`, `:getSkillFrontLayer`, `:getBattleParticipant`, `:getBelowInterfaceGroup`, `:isCreatedAsOnline`, `:getInterfaceGroup`, `:getSkillBackLayer`, `:getCurrentRoundIndex`, `:getWeatherEffect`, `:isCreated`, `:getSpawnPointer`, `:isCreatedAsOffline`, `:asOnline`, `:getBattleContainer`, `:getMonsterSpriteInBattle`, `:destroy`, `:getBackLayer`, `:getSkillMiddleLayer`, `:getAllMonsterSprites`, `:checkFaintedAndBattleEnded`, `:getAnyMonsterSpriteByData`, `:setEnemyParticipant`, `:setPlayerParticipant`, `:createOffline`, `:getEntryHazard`, `:showNametagForSquad`, `:destroyMoveTargetPreviews`, `:hideNametagsForSquad`, `:inTransitionAndPauseWorldHelper`, `:onBattleClose`, `:registerBattleEffect`, `:asOffline`, `:getAboveInterfaceGroup`, `:outTransitionAndResumeWorldHelper`, `:getMonsterSpriteInBattleByData`, `:getNametagForSquad`, `:refreshNametagsForSquad`, `:get`, `:getBattleEffects` ...
- fields: `.hideNametagsForTeamExcept`

### BattleDomeDifficulty

- defined in `classes.require_specific` as module "classes.enums.BattleDomeDifficulty"
- fields: `.normal`, `.values`, `.easy`, `.hard`, `.insane`

### BattleDomeMode

- defined in `classes.require_specific` as module "classes.enums.BattleDomeMode"
- fields: `.values`, `.coromonRush`, `.titanRush`, `.trainerRush`

### BattleDomeScreen

- defined in `classes.require_specific` as module "classes.interface.screens.BattleDomeScreen"
- methods: `:getScreenName`

### BattleEnvironment

- defined in `classes.require_specific` as module "classes.enums.BattleEnvironment"
- fields: `.luxSolisRoute`, `.iceCave`, `.volcano`, `.desertRoute`, `.pyramid`, `.luxSolisTown`, `.powerTower`, `.templeDungeon`, `.electricCave`, `.oasisCave`, `.iceTown`, `.palace`, `.values`, `.electricTown`, `.fireRoute`, `.graveyard`, `.electricTitanArea`, `.ghostTitanArea`, `.swampRoute`, `.waterTitanTemple`, `.amishTown`, `.waterTown`, `.dojo`, `.mescherRealm`

### BattleEnvironmentPreview

- defined in `classes.require_specific` as module "classes.interface.BattleEnvironmentPreview"
- methods: `:new`, `:newForWorldLocation`

### BattleMusic

- defined in `classes.require_specific` as module "classes.enums.BattleMusic"
- fields: `.cave`, `.values`, `.grass`, `.researcher`, `.titan`, `.wubbonian`

### CatchingRule

- defined in `classes.require_specific` as module "classes.enums.CatchingRule"
- fields: `.alwaysAllowWild`, `.requireLuxLureButNotForPerfects`, `.values`

### Class

- defined in `classes.require_core` as module "classes.modules.Class"
- methods: `:new`

### Color

- defined in `main` as module "classes.constants.Color"
- methods: `:rgb`, `:rgbTable`, `:rgbaTable`, `:darkenedRgbFloat`, `:rgba`, `:grey`, `:greyFloat`, `:rgbFloat`, `:packWithAlpha`, `:rgbaFloat`, `:pack`, `:greyTable`

### CoromonDebugHelper

- defined in `main` as module "classes.debug.CoromonDebugHelper"
- methods: `:getRandomCatchableMonsterUID`, `:setShouldLoadRoguePlanetOnDevelopBuild`, `:temporarySetSaturationOrHide`, `:addAllItems`, `:forEachMonsterSpriteShapeUID`, `:setupOnlineInventoryData`, `:setupOnlineProfileAndSeason`, `:spawnFruits`, `:forEachFrontMonsterSpriteShapeUID`, `:forEachMonsterSpriteConfig`, `:setupMonsterStorage`, `:visitLocationsUpUntil`, `:forEachConfigurableMonsterSpriteShapeUID`, `:setAllMonstersSeen`, `:shouldLoadRoguePlanetOnDevelopBuild`, `:forEachConfigurableFrontMonsterSpriteShapeUID`, `:setAllMonstersOwned`, `:setupOnlineBattleData`, `:createWorldInstanceAndShowPauseMenuOverlay`, `:removeAllItems`, `:setupIAP`, `:unlockAllFruitGrowingPots`

### CoromonServer

- defined in `classes.require_specific` as module "classes.online.CoromonServer"
- methods: `:new`

### CoromonWebsocket

- defined in `classes.require_specific` as module "classes.online.CoromonWebsocket"
- methods: `:newAuthorizing`, `:optionallyEmptyArray`

### CustomDifficultyScreen

- defined in `classes.require_specific` as module "classes.interface.screens.CustomDifficultyScreen"
- methods: `:getScreenClosable`

### DebugBattle

- defined in `classes.require_debug` as module "classes.debug.simulation.DebugBattle"
- methods: `:inCoromon1`, `:inCoromonRoguePlanet`

### DebugBattleEffect

- defined in `classes.require_debug` as module "classes.debug.simulation.DebugBattleEffect"
- methods: `:shouldAlwaysSkipTurn`, `:shouldAlwaysStartWithWeatherEffect`, `:noDamageRandomizer`, `:shouldNeverCriticalHit`, `:shouldNeverMiss`, `:shouldAlwaysStartWithMonsterSpriteStatus`

### DebugFrameDiagnostics

- defined in `classes.require_debug` as module "classes.debug.DebugFrameDiagnostics"
- methods: `:disable`, `:enable`

### DemoHelper

- defined in `classes.require_specific` as module "classes.modules.DemoHelper"
- methods: `:getDemoMonsterFamilies`, `:getDemoMonsters`

### DepleteEnergyAction

- defined in `classes.require_specific` as module "classes.battle.actions.DepleteEnergyAction"
- methods: `:new`

### EOSHelper

- defined in `classes.require_core` as module "classes.modules.EOSHelper"
- methods: `:getAuthIdToken`

### EncounterZoneList

- defined in `classes.require_specific` as module "classes.lists.EncounterZoneList"
- methods: `:get`, `:getChanceByMonsterUIDInMapFiles`, `:getCatchableMonsterUIDs`, `:getCatchableMonsterUIDsBySummedBaseStatsGroup`, `:getChanceByTypeInMapFile`, `:getMapFilesWithMonsterUID`, `:hasZonesForMapFile`, `:populatedRandomizedZones`, `:rollRandomizableMonstersForMapFile`, `:rollRandomizableMonstersForZone`

### Enum

- defined in `classes.require_specific` as module "classes.enums.Enum"
- methods: `:new`

### ExpeditionPerk

- defined in `classes.require_specific` as module "classes.enums.ExpeditionPerk"
- fields: `.values`

### FocusSelector

- defined in `classes.require_specific` as module "classes.interface.FocusSelector"
- methods: `:newAnimated`, `:new`

### GOGHelper

- defined in `classes.require_core` as module "classes.modules.GOGHelper"
- methods: `:getEncryptedAppTicket`, `:unlockAchievement`

### GameCenter

- defined in `main` as module "classes.modules.GameCenter"
- methods: `:hideAccessPoint`, `:isEnabled`, `:setAccessPointFocused`, `:showAccessPoint`, `:submitScore`, `:triggerAccessPoint`, `:init`, `:loadAchievements`, `:resetAchievements`, `:setAchievementProgress`

### GetFullGameScreen

- defined in `classes.require_specific` as module "classes.interface.screens.GetFullGameScreen"
- methods: `:getScreen`, `:ensureIAPProduct`

### HexagonGridHelper

- defined in `classes.require_core` as module "classes.modules.HexagonGridHelper"
- methods: `:getXYForDirection`, `:getRandomSpriteOffsetsForTilePlacement`, `:getDirections`, `:getRegularDirection`, `:getOppositeDirection`, `:getDirectionForXY`, `:getBottomDirections`, `:getHorizontalDirectionNumber`, `:getTopDirections`, `:getXYForDirectionClamped`, `:isBottomDirection`, `:calculateDirectionStepsBetween`, `:findPathBetween`, `:getDeltaXYForDirection`, `:getVerticalDirectionNumber`, `:isLeftDirection`, `:isRightDirection`, `:isTopDirection`, `:isVerticalDirection`

### HexagonTileActionType

- defined in `classes.require_specific` as module "classes.enums.HexagonTileActionType"
- fields: `.values`, `.BossBattle`, `.ItemChest`, `.RandomEvent`, `.Recall`, `.Rest`, `.SelectTeleporterDiskLocation`, `.Shop`, `.TrainerBattle`, `.WildEncounterBattle`

### HexagonWorld

- defined in `classes.require_specific` as module "classes.hexagon.HexagonWorld"
- methods: `:getPlayerCharacter`, `:getTile`, `:get`, `:getBiome`, `:createInstance`, `:setSpriteLayerAndLocation`, `:destroy`, `:isCreated`, `:setSpriteLayer`, `:registerTile`, `:unregisterTile`, `:addOnDestroy`, `:getBackgroundMusic`, `:unloadMapWithTransition`, `:getCenterCameraPositionForActionTileRow`, `:getScrollView`, `:getTileGrid`, `:hideUpcomingActionTileIndicators`, `:pauseCameraTransition`, `:removeSprites`, `:resumeCameraTransition`, `:save`, `:showUpcomingActionTileIndicators`, `:transitionCameraToTile`
- fields: `.TILE_SURFACE_HEIGHT`, `.TILE_SLOPED_EDGE_WIDTH`, `.TILE_SURFACE_WIDTH`, `.MAP_WIDTH`, `.MAP_HEIGHT`, `.TILE_X_OFFSET`, `.TILE_Y_OFFSET`

### HexagonWorldBiome

- defined in `classes.require_specific` as module "classes.enums.HexagonWorldBiome"
- fields: `.grass`

### HttpResponseCodes

- defined in `classes.require_core` as module "classes.constants.HttpResponseCodes"
- fields: `.OK`, `.BAD_REQUEST`, `.TOO_MANY_REQUESTS`, `.CONFLICT`, `.NOT_FOUND`, `.SERVICE_UNAVAILABLE`, `.CREATED`, `.FORBIDDEN`, `.NO_CONTENT`, `.UNAUTHORIZED`

### HubSpecialty

- defined in `classes.require_specific` as module "classes.enums.HubSpecialty"
- fields: `.values`

### IAP

- defined in `classes.require_specific` as module "classes.enums.IAP"
- methods: `:parseTokenFromAndroidReceiptSafe`, `:validatePurchasesIfOnAndroid`, `:parseAcknowledgementFromAndroidReceipt`
- fields: `.values`, `.UNLOCK_FULL_GAME`, `.FRUIT_DRONE`, `.POTENTIAL_READER_PREMIUM`, `.RECALL_PREMIUM`, `.REMOTE_MONSTER_STORAGE`, `.IS_PLAY_PASS`

### IAPShopProductScreen

- defined in `classes.require_specific` as module "classes.interface.screens.IAPShopProductScreen"
- methods: `:getScreen`

### IAPShopScreen

- defined in `classes.require_specific` as module "classes.interface.screens.IAPShopScreen"
- methods: `:getScreen`, `:ensureProductsOrShowError`

### IAPStore

- defined in `classes.require_specific` as module "classes.modules.IAPStore"
- methods: `:isGooglePlayPass`, `:loadProducts`, `:restore`, `:getLastFailedTransaction`, `:init`, `:isAvailableForDevice`, `:parsePurchasesNotListenedTo`, `:purchase`, `:setOnRefund`

### ICloudSaveslotRecords

- defined in `classes.require_specific` as module "classes.modules.saveslotData.ICloudSaveslotRecords"
- methods: `:create`, `:save`, `:delete`, `:fetch`, `:fetchAll`, `:getRecordName`
- fields: `.cloudKitErrors`

### InputDeviceRegistry

- defined in `classes.require_core` as module "classes.modules.input.InputDeviceRegistry"
- methods: `:registerDefaultConfigForProductName`, `:registerDefaultConfigForProductNameFunction`, `:registerDefaultConfigForMFiProfile`, `:resolveConfigFor`, `:getCustomConfigByProductName`, `:init`, `:registerCustomConfigForProductName`

### LaunchArgumentHelper

- defined in `main` as module "classes.modules.LaunchArgumentHelper"
- methods: `:getValue`, `:init`

### LocalisableEnum

- defined in `classes.require_specific` as module "classes.enums.LocalisableEnum"
- methods: `:new`

### LocalisableEnumWithDescription

- defined in `classes.require_specific` as module "classes.enums.LocalisableEnumWithDescription"
- methods: `:new`

### MTE

- defined in `classes.require_specific` as module "classes.modules.mte.mte"
- fields: `.getTiledWorld`, `.magnet`, `.addSprite`, `.transitionCamera`, `.setCameraFocus`, `.transition`, `.addSpriteAbove`, `.getMap`, `.getLayerIndexByName`, `.getLevelByLayerIndex`, `.getCamera`, `.getMagnetTile`, `.getObject`, `.moveSprite`, `.getCameraPositionObjectForSprite`, `.setCameraTo`, `.editObject`, `.enableLayersByFunction`, `.getObjectsByFunction`, `.setSpriteLocation`, `.getLayers`, `.registerSprite`, `.addSpriteAtLayer`, `.attachChildSprite`, `.getTileOutsideBoundary`, `.setCameraToBoundary`, `.translateCamera`, `.addObject`, `.getCameraPositionForSprite`, `.getConstrainedDistanceOfCamera`, `.removeObject`, `.unattachChildSprite`, `.addSpriteBelow`, `.changeSpriteLayer`, `.disableLayersByFunction`, `.setCameraBoundariesForSprite`, `.addCullable`, `.findObjectsInGrid`, `.getUnflattenedLayers`, `.removeCullable` ...

### Monster

- defined in `classes.require_specific` as module "classes.monsters.Monster"
- methods: `:new`, `:newDebug`, `:newForPlayer`, `:newForDebugPlayer`, `:mapToSaveableMonster`, `:getMaxCriticalHitCharge`, `:updateSavedMonsterToMonster`, `:newInSpinner`, `:cast`, `:clone`, `:ensureValidPotentialStats`, `:getMaxPotentialLevelForPotential`, `:uncast`, `:calculateStatForLevel`

### MonsterAvatar

- defined in `classes.require_specific` as module "classes.interface.MonsterAvatar"
- methods: `:newUnknown`, `:new`, `:newBorderless`, `:newBorderlessObject`, `:newHoverableAndSelectable`

### MonsterSpriteActionsOrStatuses

- defined in `classes.require_specific` as module "classes.battle.MonsterSpriteActionsOrStatuses"
- methods: `:tryApplyIfNoBeforeMessages`

### MonsterSpriteSkin

- defined in `classes.require_specific` as module "classes.enums.MonsterSpriteSkin"
- fields: `.values`, `.NORMAL_BEE_1|fusebox`, `.valuesWithTier`, `.FIRE_TURTLE|galactic`, `.ICE_BEAR|grizzly`, `.WATER_SHARK|orca`, `.ELECTRIC_BEETLE|gold`, `.ELECTRIC_CERBERUS|supercharged`, `.ELECTRIC_CLOUD|spectre`, `.ELECTRIC_FIREFLY|crimsonite`, `.ELECTRIC_FIREFLY|plasma`, `.ELECTRIC_OOZE|pumpkin`, `.ELECTRIC_TIGER|christmas`, `.ELECTRIC_TIGER|crimsoniteAndTendrils`, `.ELECTRIC_TIGER|pink`, `.FIRE_BULL|pink`, `.FIRE_BULL|wildfire`, `.FIRE_GOLEM_1|confetti`, `.FIRE_GOLEM|swamp`, `.FIRE_KRAKEN|crimsonite`, `.FIRE_KRAKEN|robot`, `.FIRE_MAGMA_3|earth`, `.FIRE_MAGMA|galactic`, `.FIRE_PHOENIX_2|hatching`, `.FIRE_PHOENIX|royal`, `.FIRE_TURTLE|dino`, `.FIRE_TURTLE|gameboy`, `.FIRE_TURTLE|retro`, `.GHOST_CAT|purrgyNibble`, `.GHOST_CAT|wizard`, `.GHOST_CHERUBIM|plague`, `.GHOST_OCTO|cursed`, `.GHOST_OCTO|halloween`, `.GHOST_OCTO|spectre`, `.GHOST_OROCHI|crimsonite`, `.GHOST_OROCHI|nurse`, `.GHOST_SLIME|pink`, `.GHOST_WOLF|blueMoon`, `.GHOST_WOLF|solar`, `.ICE_BEAR|gameboy` ...

### MonsterSpriteSkinForEncounterZonesMode

- defined in `classes.require_specific` as module "classes.enums.MonsterSpriteSkinForEncounterZonesMode"
- fields: `.values`

### MonsterSpriteSkinForTrainerMonstersMode

- defined in `classes.require_specific` as module "classes.enums.MonsterSpriteSkinForTrainerMonstersMode"
- fields: `.values`

### MonsterSpriteSkinMilestone

- defined in `classes.require_specific` as module "classes.enums.MonsterSpriteSkinMilestone"
- methods: `:getForSkin`
- fields: `.BAKE_CAKES_100`, `.CATCH_3_COROMON_OF_TYPE_FIRE`, `.CATCH_3_COROMON_OF_TYPE_ICE`, `.CATCH_3_COROMON_OF_TYPE_WATER`, `.DIG_GEM_GREEN_3_ICE_CREATURE`, `.DIG_GEM_GREEN_3_ICE_SNOWBALL`, `.DIG_GEM_GREEN_3_NORMAL_ADDER`, `.DIG_GEM_GREEN_3_WATER_TURTLE`, `.HEAL_IN_TRAINER_HUB_100`, `.SEE_EVERY_COROMON`, `.SEE_EVERY_COROMON_OF_TYPE_ELECTRIC`, `.SEE_EVERY_COROMON_OF_TYPE_FIRE`, `.SEE_EVERY_COROMON_OF_TYPE_GHOST`, `.SEE_EVERY_COROMON_OF_TYPE_ICE`, `.SEE_EVERY_COROMON_OF_TYPE_NORMAL`, `.SEE_EVERY_COROMON_OF_TYPE_SAND`, `.SEE_EVERY_COROMON_OF_TYPE_WATER`, `.SNIP_SHROOMS_25`, `.SNIP_SHROOMS_50`, `.USE_POTENTIFLATOR`, `.BEAT_SWURMY_ONLY_MODE_FUSEBOX`, `.BEAT_SWURMY_ONLY_MODE_TITAN_ELECTRIC`, `.BEAT_SWURMY_ONLY_MODE_TITAN_FIRE`, `.BEAT_SWURMY_ONLY_MODE_TITAN_GHOST`, `.BEAT_SWURMY_ONLY_MODE_TITAN_ICE`, `.BEAT_SWURMY_ONLY_MODE_TITAN_ICE_crimsonite`, `.BEAT_SWURMY_ONLY_MODE_TITAN_SAND`, `.BEAT_SWURMY_ONLY_MODE_TITAN_WATER`, `.BEAT_SWURMY_ONLY_MODE_TITAN_WATER_crimsonite`, `.BREW_SCENTS_10`, `.CATCH_CRIMSONITE_ELECTRIC_FIREFLY`, `.CATCH_CRIMSONITE_FIRE_KRAKEN`, `.CATCH_CRIMSONITE_GHOST_OROCHI`, `.CATCH_CRIMSONITE_ICE_SNOWBALL`, `.CATCH_CRIMSONITE_SAND_WORM`, `.CATCH_CRIMSONITE_WATER_CRAB`, `.CATCH_SAND_SKELETON_2_DRAWNEYES`, `.CLAIM_CHRISTMAS_OUTFIT`, `.CLAIM_PUMPKIN_HAT`, `.COIN_SNATCH_5000` ...

### MonsterSpriteSkinMilestoneScreen

- defined in `classes.require_specific` as module "classes.interface.screens.MonsterSpriteSkinMilestoneScreen"
- methods: `:getScreenForViewing`

### MonsterStorageScreenSortMode

- defined in `classes.require_specific` as module "classes.enums.MonsterStorageScreenSortMode"
- fields: `.sortByDateAscending`, `.values`

### MouseHover

- defined in `classes.require_core` as module "classes.modules.input.MouseHover"
- methods: `:setCurrentFrameProperty`, `:getCurrentFrameProperty`, `:activateWithMouseHoverables`

### ObtainableDrillShovelItems

- defined in `classes.require_specific` as module "classes.items.obtainableItem.lists.ObtainableDrillShovelItems"
- methods: `:getRandomizable`

### ObtainableGiftItems

- defined in `classes.require_specific` as module "classes.items.obtainableItem.lists.ObtainableGiftItems"
- methods: `:getRandomizable`, `:getRandomizedObtainableItems`, `:populateRandomizedObtainableItems`

### ObtainableHiddenItems

- defined in `classes.require_specific` as module "classes.items.obtainableItem.lists.ObtainableHiddenItems"
- methods: `:getRandomizable`, `:getRandomizedObtainableItems`, `:populateRandomizedObtainableItems`

### ObtainableItem

- defined in `classes.require_specific` as module "classes.items.obtainableItem.ObtainableItem"
- methods: `:new`, `:newSpecial`

### ObtainableItemChestItems

- defined in `classes.require_specific` as module "classes.items.obtainableItem.lists.ObtainableItemChestItems"
- methods: `:getRandomizable`, `:getRandomizedObtainableItems`, `:populateRandomizedObtainableItems`

### ObtainableQuestRewardItems

- defined in `classes.require_specific` as module "classes.items.obtainableItem.lists.ObtainableQuestRewardItems"
- methods: `:getRandomizable`, `:getRandomizedObtainableItems`, `:populateRandomizedObtainableItems`

### OnScreenDebugNotification

- defined in `classes.require_specific` as module "classes.modules.OnScreenDebugNotification"
- methods: `:notify`

### OnlineAuthentication

- defined in `classes.require_specific` as module "classes.online.OnlineAuthentication"
- methods: `:getDeviceId`, `:getProvider`, `:ensureValidAccessToken`, `:getDeviceIds`, `:getCachedUnlockFullGameReceiptData`, `:cacheUnlockFullGameReceiptDataAndLogout`, `:logout`, `:setDebugDeviceIds`, `:setRefreshToken`, `:getAccessToken`, `:setAccessToken`, `:setDeviceIds`, `:getRefreshToken`

### OnlineAuthenticationProvider

- defined in `classes.require_specific` as module "classes.enums.OnlineAuthenticationProvider"
- fields: `.epic`, `.taptap`, `.dev`, `.androidDevice`, `.gog`, `.iOSDevice`, `.ludium`, `.nintendo`, `.none`, `.steam`

### OnlineAuthenticationServer

- defined in `classes.require_specific` as module "classes.online.OnlineAuthenticationServer"
- methods: `:authenticate`, `:refresh`, `:getLinks`, `:link`, `:unlink`

### OnlineAvatar

- defined in `classes.require_specific` as module "classes.enums.OnlineAvatar"
- methods: `:getStyleCrystalCostForCategory`, `:isCharacterCategory`, `:isMonsterCategory`
- fields: `.values`, `.NORMAL_BEE_1_A`, `.categories`

### OnlineAvatarScreen

- defined in `classes.require_specific` as module "classes.interface.screens.OnlineAvatarScreen"
- methods: `:getScreenForMode`

### OnlineBattleData

- defined in `classes.require_specific` as module "classes.battle.online.OnlineBattleData"
- methods: `:sendAnomalyAnalyticsEvent`, `:setOnDecisionTimerDepleted`, `:getMatchmakingMode`, `:getOpponentName`, `:resolveTeamChosenByServer`, `:setServerDecisionTimerTimestamp`, `:getOpponentId`, `:getOpponentMonsters`, `:calculateAndGiveRewardsToPlayer`, `:getBattleRules`, `:getNextOpponentMonster`, `:getPlayerMonsters`, `:hasDecisionTimerLessThanTwoSecondsLeft`, `:isCreated`, `:new`, `:setOnDecisionTimerDepletedOrNilled`, `:createDecisionTimerText`, `:getOpponentAvatar`, `:getOpponentCharacterConfig`, `:getRandomizationSeed`, `:hideRewardIndicators`, `:showRewardIndicators`, `:filterOpponentMonsters`, `:filterPlayerMonsters`, `:getFirstOpponentMonster`, `:getFirstPlayerMonster`, `:getMatchmakingTicket`, `:getOpponentBattleEnvironmentUID`, `:getOpponentWinBattleTauntUID`, `:getTeamForProfileId`, `:getUnfilteredOpponentMonsters`, `:setFirstOpponentMonsterIndex`, `:setFirstPlayerMonsterIndex`, `:setNextOpponentMonsterIndex`

### OnlineBattleRules

- defined in `classes.require_specific` as module "classes.battle.online.OnlineBattleRules"
- methods: `:forOnlineMatchmakingMode`, `:forBattleDome`, `:fromQueuePreferences`

### OnlineBattleSocket

- defined in `classes.require_specific` as module "classes.battle.online.OnlineBattleSocket"
- methods: `:disconnect`, `:getWebsocket`, `:setOnMatchEndedEvent`, `:connect`, `:sendJoinMatchRequest`, `:sendReadySignal`, `:sendReadyToStartMatchSignal`, `:sendReadyToStartNextRoundSignal`, `:sendReconnectToMatchRequest`, `:sendRoundPreparationReadySignal`, `:sendRoundReadySignal`, `:sendSubmitRoundActionCommand`, `:sendSyncTimeRequest`, `:setOnRoundActionProposedEvent`
- fields: `.sendJoinMatchRequest`, `.sendReadySignal`, `.matchStateStringSkillMap`, `.matchStateStringHoldItemMap`, `.matchStateStringTraitMap`

### OnlineIdentityProvider

- defined in `classes.require_specific` as module "classes.enums.OnlineIdentityProvider"
- fields: `.Nintendo`, `.Steam`, `.Apple`, `.Google`

### OnlineInventoryData

- defined in `classes.require_specific` as module "classes.online.OnlineInventoryData"
- methods: `:getOnlineStyleProductUIDForMonsterSpriteSkin`, `:getAmountOfStyleCrystals`, `:resolveMonsterSpriteSkinForOnlineStyleProduct`, `:hasProduct`, `:increaseAndCacheAmountOfStyleCrystals`, `:resolveOnlineAvatarForOnlineStyleProduct`, `:getAndCacheAmountOfStyleCrystals`, `:getOnlineStyleProductUIDForOnlineAvatar`, `:purchaseProductAndRedeemShopReceiptOrShowMessage`, `:removeUnclaimedStyleCrystalPackReceiptObject`, `:setProductSeen`, `:addProductsAndCache`, `:cacheSeenProducts`, `:debugSet`, `:debugSetAmountOfStyleCrystals`, `:getInventories`, `:getOnlineStyleProductUIDForCharacterWearable`, `:getSeenProducts`, `:getUnclaimedStyleCrystalPackReceiptObjects`, `:hasSeenProduct`, `:redeemShopReceiptOrShowMessage`

### OnlineInventoryServer

- defined in `classes.require_specific` as module "classes.online.OnlineInventoryServer"
- methods: `:redeemShopReceipt`, `:getInventory`

### OnlineMatchmakingScreen

- defined in `classes.require_specific` as module "classes.interface.screens.OnlineMatchmakingScreen"
- methods: `:getScreenFor`, `:restoreStateBeforeLastBattle`, `:getScreenOrShowOnlineSquadErrorsFor`

### OnlineMatchmakingSocket

- defined in `classes.require_specific` as module "classes.battle.online.OnlineMatchmakingSocket"
- methods: `:connect`, `:disconnect`, `:getWebsocket`, `:sendLeaveQueueRequestAndClearOtherListeners`, `:setOnQueuePopEvent`, `:setOnQueuePopResultEvent`, `:setOnQueueSearchingEvent`, `:sendAcceptQueuePopCommand`, `:sendDenyQueuePopCommand`, `:sendJoinQueueRequest`

### OnlineMenuScreen

- defined in `classes.require_specific` as module "classes.interface.screens.OnlineMenuScreen"
- methods: `:getScreenName`

### OnlineProfileData

- defined in `classes.require_specific` as module "classes.online.OnlineProfileData"
- methods: `:get`, `:set`, `:ensureValidAccessToken`, `:getAccessToken`, `:setAccessToken`

### OnlineProfileServer

- defined in `classes.require_specific` as module "classes.online.OnlineProfileServer"
- methods: `:get`, `:update`, `:create`, `:login`
- fields: `.get`

### OnlineRankingData

- defined in `classes.require_specific` as module "classes.online.OnlineRankingData"
- methods: `:getKnownSeason`, `:ensureActiveSeasonAndRank`, `:getActiveSeasonRank`, `:getQueueTypeForMatchmakingMode`, `:debugSetActiveSeasonRanks`, `:debugSetKnownSeason`, `:ensureActiveSeasonAndRankForOpponent`, `:setKnownSeasonAndStoreInCache`, `:debugSetActiveSeasonRank`, `:ensureSeason`, `:getActiveSeasonRankForLastSelectedOnlineRankedMatchmakingMode`, `:getKnownSeasonTierAndDivisionForCumulativeDivision`, `:getMinimumRatingForTier`, `:setActiveSeasonRank`
- fields: `.ensureActiveSeasonAndRankForOpponent`

### OnlineRankingServer

- defined in `classes.require_specific` as module "classes.online.OnlineRankingServer"
- methods: `:getAndCacheActiveSeason`, `:getActiveSeasonRank`, `:getLeaderboardPage`, `:getSeason`

### OnlineRewardsData

- defined in `classes.require_specific` as module "classes.online.OnlineRewardsData"
- methods: `:getAndClaimAndAcknowledgePendingRewards`, `:showPopupForRedeemedRewards`, `:ensureStaticMilestones`, `:getStaticMilestones`

### OnlineRewardsServer

- defined in `classes.require_specific` as module "classes.online.OnlineRewardsServer"
- methods: `:acknowledgePendingReward`, `:claimPendingReward`, `:completeStaticMilestone`, `:getPendingRewards`, `:getStaticMilestones`

### OnlineSaveslotServer

- defined in `classes.require_specific` as module "classes.online.OnlineSaveslotServer"
- methods: `:getMetadata`, `:put`, `:delete`, `:getAll`, `:getData`

### OnlineSelectMonsterOrderScreen

- defined in `classes.require_specific` as module "classes.interface.screens.OnlineSelectMonsterOrderScreen"
- methods: `:getScreenName`

### OnlineSelectSquadScreen

- defined in `classes.require_specific` as module "classes.interface.screens.OnlineSelectSquadScreen"
- methods: `:getScreenForEditing`, `:getScreenForSelectingOnline`, `:getScreenForSelectingBattleDome`

### OnlineShopServer

- defined in `classes.require_specific` as module "classes.online.OnlineShopServer"
- methods: `:debugIncreaseStyleCrystals`, `:getStyleCrystals`, `:purchaseProduct`, `:redeemCoupon`, `:redeemRewardToken`, `:redeemStyleCrystals`

### OnlineSquad

- defined in `classes.require_specific` as module "classes.battle.online.OnlineSquad"
- methods: `:resolveOptionallyModifiedMonsterForEntry`, `:new`, `:newWithPlayerOnlineLoanSquad`, `:newWithPlayerSquad`, `:cast`

### OnlineStyleScreen

- defined in `classes.require_specific` as module "classes.interface.screens.OnlineStyleScreen"
- methods: `:getScreenName`

### OnlineTier

- defined in `classes.require_specific` as module "classes.enums.OnlineTier"
- fields: `.rankedValues`, `.unknown`

### OnlineWinBattleTaunt

- defined in `classes.require_specific` as module "classes.enums.OnlineWinBattleTaunt"
- fields: `.ed`, `.values`, `.angel`, `.blush`, `.haha`

### Pasteboard

- defined in `classes.require_specific` as module "classes.modules.Pasteboard"
- methods: `:copy`, `:isAvailable`

### PlayerRogueData

- defined in `classes.require_specific` as module "classes.modules.PlayerRogueData"
- methods: `:getSelectedCharacter`, `:setSelectedCharacter`, `:getHubSpecialtyLevel`, `:calculateLevelForCharacter`, `:getDay`, `:getXpForCharacter`, `:getBattleEffectForCharacter`, `:getHighestStarterPotential`, `:getLevelUpArray`, `:getSelectedExpeditionPerkForCharacter`, `:getXpRequiredUntilNextCharacterLevel`, `:hasSelectedCharacterWhichLetsCoromonHoldTwoItems`, `:onLoadSaveslotData`, `:resolveRemainingOutpostBudget`, `:resolveUnlockedOutpostBudget`, `:setNextDay`

### PlayerRogueSession

- defined in `classes.require_specific` as module "classes.modules.PlayerRogueSession"
- methods: `:isRogueSessionStarted`, `:startRogueSession`, `:getCurrentBiomeIndex`, `:getUpcomingPlayerActionTileRow`, `:debugSetActionTileHistoryForCurrentBiome`, `:setOutpostState`, `:addBattleDataToLastActionTileHistoryEntry`, `:getCurrentBiome`, `:getActionTileHistoryEntriesOfType`, `:getActionTileHistoryForCurrentBiome`, `:getCurrentBiomeMapPreset`, `:addActionTileToHistory`, `:addItemChestDataToLastActionTileHistoryEntry`, `:getCurrentBiomeMaxLevel`, `:getCurrentBiomeMinLevel`, `:getFlattenedActionTileHistoryEntries`, `:getOutpostState`, `:getRandomSeed`, `:resolvePlayerHexagonWorldActionTileLocationFromActionTileHistory`, `:setHexagonWorldBiome`, `:stopRogueSession`, `:unsetHexagonWorldBiomeAndIncreaseIndex`

### PushNotifications

- defined in `classes.require_specific` as module "classes.modules.PushNotifications"
- methods: `:getDeviceToken`, `:subscribeToTopic`, `:hasPushNotificationPermission`, `:optionallyRequestRequestNativePermission`, `:trySubscribeToTopicOptionallyRequestingPermission`, `:unsubscribeFromTopic`

### QuestMonsterList

- defined in `classes.require_specific` as module "classes.lists.QuestMonsterList"
- methods: `:getRandomizableTitanEssenceUID`, `:getRandomizableQuestMonsterUID`, `:getRandomizableTitanUID`, `:getRandomizableStarterUID`, `:getRandomizableAntiStarterUID`, `:getRandomizedAntiStarterUID`, `:getRandomizedMonsterUIDByQuestMonsterUID`, `:getRandomizedStarterUIDByStarterUID`, `:getRandomizedTitanUIDByTitanUID`, `:populateRandomizedMonsters`

### QuestionMarkEvent

- defined in `classes.require_specific` as module "classes.enums.QuestionMarkEvent"
- fields: `.values`

### RandomizableObtainableItemList

- defined in `classes.require_specific` as module "classes.items.obtainableItem.lists.RandomizableObtainableItemList"
- methods: `:new`

### RandomizeEncounterZonesMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeEncounterZonesMode"
- fields: `.values`

### RandomizeEvolutionsMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeEvolutionsMode"
- fields: `.values`, `.replaceWithAny`

### RandomizeQuestMonstersMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeQuestMonstersMode"
- fields: `.values`

### RandomizeSkillsMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeSkillsMode"
- fields: `.values`

### RandomizeStartersMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeStartersMode"
- fields: `.values`, `.replaceWithAny`, `.replaceWithSelected`

### RandomizeTrainerMonstersMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeTrainerMonstersMode"
- fields: `.values`

### RandomizeTypesMode

- defined in `classes.require_specific` as module "classes.enums.RandomizeTypesMode"
- fields: `.values`

### RecoverEnergyAction

- defined in `classes.require_specific` as module "classes.battle.actions.RecoverEnergyAction"
- methods: `:new`

### RecoverHealthAction

- defined in `classes.require_specific` as module "classes.battle.actions.RecoverHealthAction"
- methods: `:new`

### RogueBudgetAllocationScreen

- defined in `classes.require_specific` as module "classes.interface.screens.RogueBudgetAllocationScreen"
- methods: `:getScreenForEditing`, `:getScreenForViewing`

### RogueCharacterScreen

- defined in `classes.require_specific` as module "classes.interface.screens.RogueCharacterScreen"
- methods: `:getScreenName`

### RogueDialog

- defined in `classes.require_specific` as module "classes.interface.dialog.RogueDialog"
- methods: `:addText`, `:onAfterHide`, `:new`, `:setAnswersForLastText`, `:onBeforeContinueSetSpeakerExpression`, `:setSpeakerLeft`

### RoguePlayableCharacter

- defined in `classes.require_specific` as module "classes.enums.RoguePlayableCharacter"
- fields: `.merrin`, `.juniper`

### RoguePortrait

- defined in `classes.require_specific` as module "classes.interface.RoguePortrait.RoguePortrait"
- methods: `:getColorFor`, `:getBottomCutOffAreaFor`, `:new`
- fields: `.character`, `.monster`, `.portraitConfigs`

### RogueStartExpeditionScreen

- defined in `classes.require_specific` as module "classes.interface.screens.RogueStartExpeditionScreen"
- methods: `:getScreenName`

### Runtime

- defined in `classes.definitions.events.def` as table
- methods: `:addEventListener`, `:removeEventListener`
- fields: `.getFrameID`, `.getFrameStartTime`

### SaveslotClusterPopup

- defined in `classes.require_specific` as module "classes.interface.overlays.SaveslotClusterPopup"
- methods: `:new`

### SaveslotClustersScreen

- defined in `classes.require_specific` as module "classes.interface.screens.SaveslotClustersScreen"
- methods: `:getScreenForTitleScreen`

### SaveslotFacade

- defined in `classes.require_specific` as module "classes.modules.saveslotData.SaveslotFacade"
- methods: `:save`, `:delete`, `:getSaveslotClustersByDeviceId`, `:setCachedSaveslotClustersForDeviceId`

### SaveslotPreferences

- defined in `classes.require_specific` as module "classes.modules.saveslotData.SaveslotPreferences"
- methods: `:getSaveslotsClustersByDeviceIds`, `:delete`, `:getCachedOnlineSaveslot`, `:setCachedOnlineSaveslot`, `:get`, `:save`

### Shufflebag

- defined in `classes.require_core` as module "classes.modules.Shufflebag"
- methods: `:new`

### SilenceableMessagePopup

- defined in `classes.require_specific` as module "classes.interface.overlays.SilenceableMessagePopup"
- methods: `:new`

### SpawnLocation

- defined in `classes.require_specific` as module "classes.world.SpawnLocation"
- methods: `:atTile`, `:southOf`, `:eastOf`, `:northOf`, `:westOf`

### SpeakerStyle

- defined in `classes.require_specific` as module "classes.interface.enums.SpeakerStyle"
- fields: `.player`, `.npc`, `.crimsonite`, `.values`

### SquadScreen

- defined in `classes.require_specific` as module "classes.interface.screens.SquadScreen"
- methods: `:getScreenName`

### TrainerMonsterList

- defined in `classes.require_specific` as module "classes.lists.TrainerMonsterList"
- methods: `:getRandomizableTrainerMonstersFor`, `:getRandomizedMonsterUIDsByTrainerUID`, `:populateRandomizedMonsters`

### Type

- defined in `classes.require_specific` as module "classes.enums.Type"
- fields: `.crimsonite`, `.sand`, `.valuesForMonsters`, `.valuesForMonstersIncludingCrimsonite`, `.ice`, `.normal`, `.fire`, `.values`, `.valuesIncludingCrimsonite`

### TypeEffectivenessMode

- defined in `classes.require_specific` as module "classes.enums.TypeEffectivenessMode"
- fields: `.values`

### UIBottomBar

- defined in `classes.require_specific` as module "classes.interface.UIBottomBar"
- methods: `:new`

### UIButton

- defined in `classes.require_specific` as module "classes.interface.UIButton"
- methods: `:showHoverVariantOnHover`, `:createTouchableListener`, `:createCustomTouchableListener`, `:switchVisibilityOnHover`, `:switchVisibilitiesOnHover`

### UIButtonTooltip

- defined in `classes.require_specific` as module "classes.interface.UIButtonTooltip"
- methods: `:createAndAlignNowAndOnInputNavigationMethodSwitch`, `:createKeyboardKeyTooltip`, `:createAnimatedDirectionalShoulderButtonTooltip`, `:createNintendoSwitchButtonTooltip`, `:createTooltipForCurrentNavigationMethod`

### UIButtonTransition

- defined in `classes.require_specific` as module "classes.interface.UIButtonTransition"
- methods: `:transparency`
- fields: `.fancyPress`

### UICheckboxBuilder

- defined in `classes.require_specific` as module "classes.interface.UICheckboxBuilder"
- methods: `:new`

### UIContainerBuilder

- defined in `classes.require_specific` as module "classes.interface.UIContainerBuilder"
- methods: `:new`, `:newHorizontal`, `:newDirectional`, `:newHoldIndicator`, `:newVertical`, `:newGreySlim`, `:newGreySlimScrollable`, `:newGreySlimWithHeaderSpacing`, `:newOverlay`

### UIContainerStyle

- defined in `classes.require_specific` as module "classes.interface.enums.UIContainerStyle"
- fields: `.gradient_blueOrFluorescent`, `.gradient_red`, `.contentContainerWithOrnament`, `.gradient_disabled`, `.roundedRect_blueOrRedGreyMediumDark_radius4`, `.gradient_tabBarBlue`, `.gradient_blueGrey`, `.roundedRect_gridBoxBlueOrRed_radius4_withGridBoxBlueOrRedBorder`, `.contentContainer`, `.roundedRect_blueOrRedGreyDark_radius8_withGreyGlow`, `.gradient_green`, `.roundedRect_blackTransparent50_radius6_withInsetOutline`, `.none`, `.gradient_fluorescent`, `.roundedRect_blackTransparent50_radius8`, `.dark`, `.roundedRect_blueOrRedGreyMediumDark_radius6_withDoubleRedBorder_withOutline`, `.roundedRect_purpleSelected_radius6_withDoubleWhiteBorder_withOutline`, `.roundedRect_blackTransparent50_radius8_withNeutralGlow`, `.roundedRect_blackTransparent75_radius6_withInsetOutline`, `.roundedRect_blueOrRedGreyMediumDark_radius6`, `.roundedRect_gridBoxGreen_radius4_withGridBoxGreenBorder`, `.gradient_blue_selected`, `.gradient_tabBarBlue_pressed`, `.green_softEdge`, `.roundedRect_blackTransparent75_radius6_withBrightBlueGlowInsetOutline`, `.IAPShopProduct_blue`, `.dialog_generic`, `.disabled_softEdge`, `.gradient_blue_softDisabled`, `.gradient_fluorescent_selected`, `.menuContainer_blueOrRedGradient_noOutline`, `.roundedRect_blackTransparent30_radius4`, `.roundedRect_blackTransparent50_radius4_withNeutralGlow`, `.roundedRect_blueOrRedGreyDark_radius4`, `.roundedRect_blueOrRedGreyMediumDark_radius6_withDoubleBorder_withOutline`, `.roundedRect_gridBoxBlueOrRedSelected_radius4_withGridBoxBlueOrRedOrnaments`, `.roundedRect_radius4`, `.cyan_round`, `.dark_blue` ...

### UIContentContainerWithHeader

- defined in `classes.require_specific` as module "classes.interface.UIContentContainerWithHeader"
- methods: `:new`

### UIDirectionalContainerStyle

- defined in `classes.require_specific` as module "classes.interface.enums.UIDirectionalContainerStyle"
- fields: `.battleIndicator_playerRight_withoutMargins`, `.battleIndicator_player_withoutMargins`, `.battleIndicator_enemy`, `.battleIndicator_player`, `.battleIndicator_playerRight`, `.trainerMonsterIndicator_enemy`, `.trainerMonsterIndicator_player`

### UIFadeBuilder

- defined in `classes.require_specific` as module "classes.interface.UIFadeBuilder"
- methods: `:newVertical`, `:newVerticalForGreySlimScrollable`

### UIFillBarBackgroundBuilder

- defined in `classes.require_specific` as module "classes.interface.UIFillBarBackgroundBuilder"
- methods: `:new`

### UIGridViewBuilder

- defined in `classes.require_specific` as module "classes.interface.UIGridViewBuilder"
- methods: `:new`

### UIHorizontalContainerStyle

- defined in `classes.require_specific` as module "classes.interface.enums.UIHorizontalContainerStyle"
- fields: `.roundedRect_fillBarBackground_radius1_withBlackOutline`, `.contentContainerSeparator`, `.roundedRect_fillBarBackground_radius1_withBrownOutline`, `.roundedRect_fillBar_hp_green_radius1`, `.roundedRect_fillBar_sp_radius1`, `.roundedRect_blackTransparent50_radius2`, `.roundedRect_fillBarBackgroundBottom_radius1_withBrownOutline`, `.roundedRect_fillBar_hp_red_radius1`, `.roundedRect_fillBar_hp_yellow_radius1`, `.roundedRect_fillBar_spOvercharge_radius1`, `.roundedRect_fillBar_xp_radius1`, `.roundedRect_potentialBottom_radius1`, `.roundedRect_potential_radius1`

### UIRadioButton

- defined in `classes.require_specific` as module "classes.interface.UIRadioButton"
- methods: `:new`

### UIReflectedGradientHeader

- defined in `classes.require_specific` as module "classes.interface.UIReflectedGradientHeader"
- methods: `:new`

### UISaveBarBuilder

- defined in `classes.require_specific` as module "classes.interface.UISaveBarBuilder"
- methods: `:new`, `:newForManualSave`

### UIScrollBarBackgroundBuilder

- defined in `classes.require_specific` as module "classes.interface.UIScrollBarBackgroundBuilder"
- methods: `:newNew`, `:new`

### UIScrollBarBuilder

- defined in `classes.require_specific` as module "classes.interface.UIScrollBarBuilder"
- methods: `:newNew`, `:new`

### UIScrollIndicatorBuilder

- defined in `classes.require_specific` as module "classes.interface.UIScrollIndicatorBuilder"
- methods: `:newForSlideView`, `:newScrollIndicator`

### UISeparatorBuilder

- defined in `classes.require_specific` as module "classes.interface.UISeparatorBuilder"
- methods: `:newHorizontal`, `:newColumnGridBuilder`, `:newVertical`

### UITableViewBuilder

- defined in `classes.require_specific` as module "classes.interface.UITableViewBuilder"
- methods: `:new`

### UITopBar

- defined in `classes.require_specific` as module "classes.interface.UITopBar"
- methods: `:new`

### UIVerticalContainerStyle

- defined in `classes.require_specific` as module "classes.interface.enums.UIVerticalContainerStyle"
- fields: `.contentContainerSeparator`

### UniversalLinks

- defined in `main` as module "classes.modules.UniversalLinks"
- methods: `:init`

### Window

- defined in `classes.require_core` as module "classes.libraries.Window"
- methods: `:isFullscreen`, `:setScale`, `:setFullscreen`

### abstractInventoryBuilder

- defined in `classes.require_specific` as module "classes.modules.abstractInventoryBuilder"
- methods: `:new`

### activeDebugEffects

- defined in `classes.maps.debug.developerHome_area` as table
- fields: `.rain`, `.thunder`, `.flashlight`

### amishTownUtility

- defined in `classes.require_specific` as module "classes.maps.amishTown.amishTownUtility"
- methods: `:optionalBookHatLocalisation`, `:createBeezelCutscene`, `:executeTrainerHubCutscene`

### app

- defined in `main` as module "classes.configs.app"
- methods: `:isCoromon1`, `:isCoromonRoguePlanet`, `:isDevelopBuild`, `:usesDualTyping`, `:usesTapTap`, `:getAppName`, `:usesCrimsoniteAsType`, `:usesEpicAndroidStore`, `:usesGogDesktopPlugin`, `:usesGoogleAndroidStore`, `:usesSteamDesktopPlugin`, `:usesEpicDesktopPlugin`, `:usesEpicIOSStore`, `:usesTapTapAndroidStore`, `:isBetaBuild`, `:usesAppleIOSStore`, `:usesGamecenterDesktopPlugin`, `:usesIndiepassDesktopPlugin`, `:usesLudiumDesktopPlugin`, `:usesTapTapDesktopPlugin`, `:usesTapTapIOSStore`
- fields: `.useOptimizedMaps`, `.version`, `.encryptionSalt`, `.battleVersion`, `.coromon1SaveslotDataVersion`, `.gameSettingsVersion`, `.coromon1SaveslotDataVersionToStore`, `.coromonRoguePlanetSaveslotDataVersion`, `.coromonRoguePlanetSaveslotDataVersionToStore`

### array

- defined in `classes.require_core` as module "classes.libraries.array"
- fields: `.map`, `.findByFunction`, `.filter`, `.forEach`, `.remove`, `.insert`, `.contains`, `.anyMatches`, `.random`, `.constructByFunction`, `.indexOf`, `.sort`, `.add`, `.findMaxValue`, `.concat`, `.countByFunction`, `.sum`, `.construct`, `.convertToSet`, `.copy`, `.union`, `.average`, `.removeMultipleByFunction`, `.mapToTable`, `.removeRandom`, `.last`, `.findMax`, `.range`, `.distinct`, `.findIndexByFunction`, `.constructRange`, `.sortIncreasing`, `.allMatches`, `.mapToSet`, `.sorted`, `.noneMatches`, `.sortDecreasing`, `.findMinValue`, `.removeByFunction`, `.reversed` ...

### audio

- defined in `classes.definitions.audio.def` as table
- fields: `.AmbientMixMode`, `.MixMode`, `.setSessionProperty`, `.supportsSessionProperty`

### battleAI

- defined in `classes.require_specific` as module "classes.modules.battle.battleAI"
- methods: `:getStrengthAgainstOpponents`

### battleDialog

- defined in `classes.require_specific` as module "classes.interface.dialog.battleDialog"
- methods: `:addText`, `:onAfterHide`, `:addQuestion`, `:newNonClosable`, `:onTextShown`, `:setHeaderText`, `:destroy`, `:onBeforeContinue`, `:onTextStarted`

### battleEffectUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.battleEffectUtility"
- methods: `:speedPriority`, `:registerBattleEffect`, `:shouldBlockWeatherEffectEffect`, `:mutateStatBoostStage`, `:unregisterBattleEffect`, `:mutateWeatherEffectTurns`, `:setMainBattleEffects`, `:onBeforeApplyEntryHazardEffect`, `:shouldAdaptToPositiveWeatherEffect`, `:mutateSkillStrikes`, `:onAfterMonsterSpriteSpawnedInstant`, `:onAfterMonsterSpriteUnspawned`, `:mutateRecoverHealthConsumableEffect`, `:onAfterMonsterSpritesRemovedFromBattle`, `:shouldBlockFruitConsumption`, `:shouldBlockSkill`, `:mutateRecoverEnergyConsumableEffect`, `:mutateRelativeDamage`, `:mutateZoneEncounter`, `:onAfterDamageInBattle`, `:onBeforePrepareMonsterSprite`, `:getBattleEffects`, `:getPlayerEscapeButtonMode`, `:mutateBaseStat`, `:mutateTrainerBattleGoldBounty`, `:onAfterApplyMonsterSpriteStatus`, `:onBeforePlayerEscapeButtonMessage`, `:onBeforePlayerInventoryButtonMessage`, `:onBeforeUseItemMessage`, `:onPlayerStepped`, `:shouldBlockSpawn`, `:shouldCriticalHit`, `:shouldForceCatch`, `:shouldMiss`, `:shouldShowBigWorldDarknessFlashlight`, `:getDamageRandomizer`, `:mutateAIScore`, `:mutateAfterParticipantWonEnergy`, `:mutateAmountOfMonsterRolls`, `:mutateAmountOfPotentialRolls` ...

### battleHelper

- defined in `classes.require_specific` as module "classes.modules.battle.battleHelper"
- methods: `:getBattleCenterOffset`

### battlePriorities

- defined in `classes.require_specific` as module "classes.battle.config.battlePriorities"
- fields: `.move`, `.onBeforeRound`, `.onAfterRound`, `.onAfterPartialSkillMove`, `.mutateSkillPower`, `.onBeforeTurn`, `.mutateSkillDamage`, `.onAfterMonsterSpriteSpawned`, `.onAfterParticipantWon`, `.onEnterBattle`, `.onAfterSkillMove`, `.mutateStatBoostStatus`, `.onAfterMonsterSpritesRemovedFromBattle`, `.onAfterApplyMonsterSpriteStatus`, `.shouldCriticalHit`, `.getDamageRandomizer`, `.getMainActionButtonReplacementPriority`, `.getPlayerEscapeButtonMode`, `.mutateMovePriority`, `.mutateXpEarned`, `.mutateDamage`, `.onAfterAfterRound`, `.onAfterApplyWeatherEffect`, `.onBeforeEscapeMoveSuccess`, `.onSkillMove`, `.mutateEnergyCost`, `.mutateStat`, `.mutateStatBoostStage`, `.onAfterTurn`

### berserkStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.berserkStatus"
- methods: `:new`

### blazingCoalsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.blazingCoalsEntryHazard"
- methods: `:new`

### bleedingStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.bleedingStatus"
- methods: `:new`

### blessedGroundsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.blessedGroundsEntryHazard"
- methods: `:new`

### blockHealStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.blockHealStatus"
- methods: `:new`

### blockNegativeStatBoostStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.blockNegativeStatBoostStatus"
- methods: `:new`

### blockNonDamagingSkillStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.blockNonDamagingSkillStatus"
- methods: `:new`

### blockNonMostRecentSkillStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.blockNonMostRecentSkillStatus"
- methods: `:new`

### burnCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.burnCondition"
- methods: `:new`

### burnConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.burnConditionStatus"
- methods: `:new`

### catchableMonsterParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.catchableMonsterParticipant"
- methods: `:new`

### catchableTrainerMonsterParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.catchableTrainerMonsterParticipant"
- methods: `:new`

### characterConfigList

- defined in `classes.require_specific` as module "classes.lists.characterConfigList"
- fields: `.homeTown_DEXTER`, `.swampRoute_HORACE`

### characterConfigUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.characterConfigUtility"
- methods: `:replaceHair`, `:replaceHeadgear`, `:isPartKeyOfType`, `:replaceSkintone`, `:replaceEyes`, `:getSkintone`, `:replaceClothing`, `:createBase`, `:getClothing`, `:getFacialhair`, `:getHair`, `:replaceBody`, `:replaceFacialhair`, `:replaceGauntlet`, `:replaceGlasses`, `:replaceHead`, `:getBody`, `:getEyes`, `:getGauntlet`, `:getGlasses`, `:getHead`, `:getHeadLocation`, `:getHeadgear`, `:replaceBlush`, `:replaceEarrings`, `:replaceFacialhairtype`, `:replaceHaircolor`, `:replaceHairtype`, `:replaceScar`, `:replaceWrinkle`, `:resolveHeadLocationForBody`, `:getBlush`, `:getEarrings`, `:getFacialhairtype`, `:getHaircolor`, `:getHairtype`, `:getScar`, `:getWrinkle`, `:isNonSelectablePartKey`
- fields: `.partKeyPrefixes`

### characterList

- defined in `classes.require_specific` as module "classes.lists.characterList"
- methods: `:getSpeakerFor`, `:getCharacterConfigFor`, `:getNameFor`, `:getCharacters`, `:getSpeakerStyleFor`

### chargingStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.chargingStatus"
- methods: `:new`

### colors

- defined in `main` as module "classes.constants.colors"
- fields: `.WHITE`, `.BLACK`, `.appPalette`, `.TEXT_LIGHTBLUE`, `.TEXT_YELLOW`, `.TEXT_SUBTLE_HIGHLIGHT`, `.RED`, `.UI_TEXT_ROGUE_DIALOG`, `.TEXT_DISABLED`, `.TEXT_GREEN`, `.UI_NEUTRAL_GLOW`, `.GREEN`, `.TEXT_POSITIVE_HIGHLIGHT`, `.TEXT_RED`, `.TEXT_NEGATIVE_HIGHLIGHT`, `.TEXT_POTENTIAL`, `.TEXT_XP`, `.TEXT_GREEN_SUBTLE`, `.UI_NEUTRAL_GLOW_HIGHLIGHTED`, `.BATTLE_HEXAGON_TILE_TEXT`, `.TEXT_SP_LIGHT`, `.HOLD_INDICATOR_BLUE`, `.LINE_LIGHTBLUE`, `.MILESTONE_BLUE`, `.MILESTONE_DARKBLUE`, `.TEXT_GREYFANCY`, `.TEXT_NEGATIVE_HIGHLIGHT_2`, `.BATTLE_HEXAGON_TILE_TEXT_SOFTDISABLED`, `.BLUE`, `.ORANGE`, `.SHADOW_GREYFANCY`, `.TEXT_HP_FAINTED`, `.TEXT_POSITIVE_HIGHLIGHT_2`, `.UI_TEXT_RED_UNSELECTED`, `.BACKGROUND_BLACK`, `.TEXT_DISABLED_LIGHT`, `.TEXT_HP`, `.TEXT_HP_LIGHT`, `.TEXT_ORANGE`, `.TEXT_SP` ...

### combinedNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.combinedNavigationBuilder"
- methods: `:new`

### common

- defined in `classes.modules.mte.collisions.class` as table
- defined in `classes.modules.mte.collisions.init` as common
- defined in `classes.modules.mte.collisions.polygon` as common
- defined in `classes.modules.mte.collisions.shapes` as common
- defined in `classes.modules.mte.collisions.spatialhash` as common
- fields: `.class`, `.instance`

### createCharacterScreen

- defined in `classes.require_specific` as module "classes.interface.screens.createCharacterScreen"
- methods: `:getScreenForAppearanceKit`, `:getScreenForCharacterInitialisation`, `:getScreenForClothing`, `:getScreenForGauntlet`, `:getScreenForCharacterInitialisationInWorldDebug`

### crimsoniteWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.crimsoniteWeatherEffect"
- methods: `:new`

### cronHelper

- defined in `classes.require_core` as module "classes.modules.cronHelper"
- methods: `:cancel`, `:every`, `:everyMinuteAndHourFrame`

### croppedDisplayObjectBuilder

- defined in `classes.require_core` as module "classes.modules.interface.croppedDisplayObjectBuilder"
- methods: `:new`

### curseCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.curseCondition"
- methods: `:new`

### curseConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.curseConditionStatus"
- methods: `:new`

### cursedGroundsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.cursedGroundsEntryHazard"
- methods: `:new`

### cutsceneHelper

- defined in `classes.require_specific` as module "classes.modules.cutsceneHelper"
- methods: `:loadCutscene`, `:runCutscene`, `:addGlobalCutscene`, `:loadCutsceneWithOnComplete`, `:loadFunction`, `:loadOptionalCutsceneWithOnComplete`, `:initCutscenesForMap`, `:initFunctionsForMap`, `:loadCutsceneWithOnSkipOrContinue`, `:loadOptionalCutsceneWithSkipOrContinue`

### cutsceneUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.cutsceneUtility"
- methods: `:createNpcDialogCutscene`, `:createNpcInteractCutscene`, `:createPlayerDialogCutscene`, `:createSpotEncounterCutscene`, `:getBlackScreenOverlay`, `:createSpeakerlessDialogCutscene`, `:createPlayerTileCutsceneAndDestroyOnTrigger`, `:createObjectInteractCutscene`, `:ensureSingleWearableItemByOptionallyDeactivatingOutfit`, `:doCharacterSpin`, `:executeTrainerBattle`, `:createNpcDialogCutsceneWithEmojiWhile`, `:createOnloadCutscene`, `:getWhiteScreenOverlay`, `:executeBattle`, `:startRecallBlockerWorldEffect`, `:stopRecallBlockerWorldEffect`, `:executePlayerDialogCutscene`, `:playerSteppedOnTile`, `:createCutsceneWith`, `:createNpcDialogCutsceneWithEmojiAtStart`, `:createShopCutscene`, `:createPlayerTileCutscene`, `:createCustomDialogCutscene`, `:executeBattleDomeBattle`, `:convertStringOrArrayToWubbonianLanguage`, `:createNpcDialogCutsceneWithEmojiAfter`, `:createMonsterEmojiCutscene`, `:createTrainerHubCutscene`, `:evolveMonster`, `:executeItemPickup`, `:executeNpcDialogCutscene`, `:newTallMonsterButtonOverlayForTrading`, `:createCutscene`, `:createMonsterInteractCutscene`, `:createPlayerOnloadCutscene`, `:doPlayerGotHurtAnimation`, `:executeWildEncounter`, `:installAndSelectGauntletModule`, `:createBattleDomeWildGrassOnloadCutscene` ...

### debugBurnConditionConfigScreen

- defined in `classes.require_specific` as module "classes.interface.screens.debugBurnConditionConfigScreen"
- methods: `:getScreenForMonster`

### debugHelper

- defined in `classes.require_core` as module "classes.modules.debugHelper"
- methods: `:makeDraggable`, `:getOverrideObjectWithEmptyFunctions`, `:disableDebugStats`, `:enableDebugStats`, `:makeDraggableAndOutputDelta`, `:sleepOnceEvery`

### debugMapSelectScreen

- defined in `classes.require_specific` as module "classes.interface.screens.debugMapSelectScreen"
- methods: `:getScreen`

### debugQuestStateScreen

- defined in `classes.require_specific` as module "classes.interface.screens.debugQuestStateScreen"
- methods: `:getScreenForQuest`

### debugScreenScreenOptions

- defined in `classes.debug.configuration.debug_configure_monsters_burnConditionConfig` as value
- defined in `classes.debug.configuration.debug_configure_npcCharacter` as table
- defined in `classes.debug.simulation.debug_load_onlineBattle` as table
- defined in `classes.debug.simulation.debug_load_screen` as value
- defined in `main` as nil
- fields: `.onlineMatchmakingMode`

### debugSettings

- defined in `classes.require_core` as module "classes.configs.debugSettings"
- methods: `:getInitialItems`, `:getInitialSquad`
- fields: `.coromonRoguePlanet`, `.battle`, `.log`, `.UI`, `.MTE`, `.coromon1`, `.game`, `.diagnostics`, `.items`, `.world`, `.invalidateOpenGLEveryFrame`, `.simulator`

### delayedPoisonStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.delayedPoisonStatus"
- methods: `:new`

### desertTownUtility

- defined in `classes.require_specific` as module "classes.maps.desertTown.desertTownUtility"
- methods: `:getShopItems`, `:executeRandomGuardResponseCutscene`

### device

- defined in `classes.require_core` as module "classes.libraries.device"
- methods: `:hasToUnlockFullGame`, `:calculateHeightCompactnessFactorFor`, `:isSwitchWithoutOnline`
- fields: `.width`, `.height`, `.isSwitch`, `.isSimulator`, `.isAndroid`, `.isDesktop`, `.maxContentWidth`, `.maxContentHeight`, `.isMobile`, `.supportsInAppPurchases`, `.isRunningOnWindows`, `.isIOS`, `.usesICloud`, `.hasTouchScreen`, `.isMacOS`, `.supportsOpenSSL`, `.targetAppStore`, `.isWindows`, `.isTvOS`, `.supportsPushNotifications`, `.deviceHeightCompactnessFactor`, `.localeIdentifier`, `.diagonal`, `.isApple`, `.model`, `.safeBottomInset`, `.safeLeftInset`, `.deviceHeight`, `.deviceWidth`, `.languageCode`, `.minContentHeight`, `.androidApiLevel`, `.deviceWidthCompactnessFactor`, `.isOnAppleAppStore`, `.maxwidth`, `.minContentWidth`, `.platform`, `.safeRightInset`, `.supportsAdAttribution`

### deviceSettings

- defined in `main` as module "classes.configs.deviceSettings"
- fields: `.exportPath`

### dialog

- defined in `classes.require_specific` as module "classes.interface.dialog.dialog"
- methods: `:new`, `:onAfterHide`, `:addText`, `:addQuestion`, `:onTextStarted`, `:addQuestionAndShowGold`, `:onTextShown`, `:get`, `:addQuestionAndOptionallyShowTrainerHubRecoveriesLeft`, `:destroy`, `:isCreated`, `:onBeforeContinue`

### difficultyUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.difficultyUtility"
- methods: `:getDifficultyIndex`, `:getDifficulties`

### directionHelper

- defined in `classes.require_core` as module "classes.modules.directionHelper"
- methods: `:opposite`, `:isHorizontal`, `:toHorizontalNumber`, `:rotateRight`, `:toNumber`, `:toVerticalNumber`, `:isVertical`, `:toDimension`, `:toNumbers`, `:getDirections`, `:isHorizontalEdge`, `:isInDimension`, `:getRandomDirection`, `:getRandomHorizontalDirection`, `:rotateLeft`, `:toAtlas`, `:toEdge`, `:toHorizontalNumberOrNil`, `:isSameDimension`, `:oppositeEdge`, `:toVerticalNumberOrNil`

### display

- defined in `classes.libraries.display` as display
- defined in `classes.require_core` as module "classes.libraries.display"
- methods: `:isDisplayObject`, `:applyDisplayObjectMutations`, `:setTimeScale`, `:setDebugTimeScale`, `:isAt`, `:getChildrenRecursive`, `:spawnPrepared`, `:handleWeirdReloadingBug`, `:applyRectMutations`, `:getObjectAtLocation`, `:isColliding`, `:isSpriteObject`, `:isWithin`, `:isWithinObject`, `:synchronizeProperties`, `:getChildrenIncludingParentRecursive`, `:isAtLeastPartiallyRendered`, `:isDisplayGroup`, `:isLeftHalfOf`, `:isRightHalfOfOrFurtherThan`, `:newLazyLoadable`, `:useLinearFilter`, `:xToColumn`, `:addPropertyChangeListener`, `:horizontallyRepeatWithin`, `:isOutsideClippingGroup`, `:swap`, `:yToRow`
- fields: `.remove`, `.contentToScreenScale`, `.currentStage`, `.setDefault`, `.removeAll`, `.saveToFile`, `.deviceWidth`, `.getCurrentStage`, `.deviceHeight`, `.setInvisible`, `.newImage`, `.setVisible`, `.timeScale`, `.screenToContentScale`, `.fps`, `.newImageRect`, `.contentWidth`, `.isActuallyVisible`, `.msPerFrame`, `.newSprite`, `.save`, `.capture`, `.colorSample`, `.contentHeight`, `.newContainer`, `.newRect`, `.contentCenterX`, `.contentCenterY`, `.enableStatistics`, `.getDefault`, `.getSafeAreaInsets`, `.getStatistics`, `.getSums`, `.getTimings`, `.maxContentHeight`, `.maxContentWidth`, `.minContentHeight`, `.minContentWidth`, `.newCircle`, `.newGroup` ...

### displayGroups

- defined in `main` as table
- fields: `.world`, `.overlay`, `.aboveOverlay`, `.menu`, `.belowWorld`, `.titleScreen`, `.battle`

### displayObjectPool

- defined in `classes.require_core` as module "classes.modules.interface.displayObjectPool"
- methods: `:new`

### drowsyCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.drowsyCondition"
- methods: `:new`

### drowsyConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.drowsyConditionStatus"
- methods: `:new`

### dumbTrainerAI

- defined in `classes.require_specific` as module "classes.battle.AI.dumbTrainerAI"
- methods: `:new`

### electricSkillMoveUtility

- defined in `classes.require_specific` as module "classes.battle.skills.utility.electricSkillMoveUtility"
- methods: `:createShockOverlay`

### electricTownUtility

- defined in `classes.require_specific` as module "classes.maps.electricTown.electricTownUtility"
- methods: `:createOptionalElevatorQuestionCutscene`, `:giveFuseItemsBasedOnDifficulty`

### electrifiedStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.electrifiedStatus"
- methods: `:new`

### electroMinesEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.electroMinesEntryHazard"
- methods: `:new`

### emojiBuilder

- defined in `classes.require_specific` as module "classes.spawnables.other.emojiBuilder"
- methods: `:new`, `:newInfiniteLoop`, `:newInfiniteLoopPaused`

### empoweringGroundsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.empoweringGroundsEntryHazard"
- methods: `:new`

### encryptionHelper

- defined in `main` as module "classes.modules.encryptionHelper"
- methods: `:decryptOld`, `:encrypt`, `:decrypt`, `:base64Decode`, `:base64Encode`, `:createMd5Hash`

### escapeMove

- defined in `classes.require_specific` as module "classes.battle.moves.escapeMove"
- methods: `:new`

### eventManager

- defined in `classes.require_core` as module "classes.modules.eventManager"
- methods: `:listen`, `:listenWithWrapper`, `:listenUntilObjectDestroyed`, `:dispatch`, `:stopListening`, `:listenOnce`

### expressionBuilder

- defined in `classes.require_specific` as module "classes.spawnables.other.expressionBuilder"
- methods: `:new`, `:newInfinite`

### feelersStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.feelersStatus"
- methods: `:new`

### fileHelper

- defined in `classes.require_core` as module "classes.modules.fileHelper"
- methods: `:saveToSystemResources`, `:loadJsonFromResources`, `:saveToTemporaryResources`, `:getFilesInResourcesRecursive`, `:loadFromResources`, `:exists`, `:getFilesInResources`, `:createFolder`, `:loadFromTemporaryResources`, `:saveTo`

### fillBarBuilder

- defined in `classes.require_core` as module "classes.modules.interface.fillBarBuilder"
- methods: `:new`

### fillEffectHelper

- defined in `classes.require_core` as module "classes.modules.fillEffectHelper"
- methods: `:setDuotone`, `:clear`, `:setSaturation`, `:getFontOutlineFillEffect`, `:changeSaturation`, `:setBrightness`, `:setMonotone`, `:swapColors`

### fillHelper

- defined in `classes.require_core` as module "classes.modules.fillHelper"
- methods: `:setGradientFill`, `:setImageFill`, `:translateX`, `:useRepeatingFill`, `:setHeightForRepeatingFill`, `:setWidthForRepeatingFill`

### finalGiftStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.finalGiftStatus"
- methods: `:new`

### fireSkillUtility

- defined in `classes.require_specific` as module "classes.battle.skills.utility.fireSkillUtility"
- methods: `:spawnExplosionSprite`

### firedUpStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.firedUpStatus"
- methods: `:new`

### fiveFrameImageBuilder

- defined in `classes.require_core` as module "classes.modules.interface.fiveFrameImageBuilder"
- methods: `:new`

### focusBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.focusBuilder"
- methods: `:new`

### fontHelper

- defined in `classes.require_core` as module "classes.modules.fontHelper"
- methods: `:requireForAllFontsMerged`

### fontInfoList

- defined in `classes.require_specific` as module "classes.lists.fontInfoList"
- fields: `.plain_8`, `.outline_10_bold`, `.plain_10`, `.textVerticalCenterCorrectionWhenNotTrimmed`

### forceRemoveStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.forceRemoveStatus"
- methods: `:new`

### forcedParentNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.forcedParentNavigationBuilder"
- methods: `:new`

### forfeitMove

- defined in `classes.require_specific` as module "classes.battle.moves.forfeitMove"
- methods: `:new`

### fourFrameImageBuilder

- defined in `classes.require_core` as module "classes.modules.interface.fourFrameImageBuilder"
- methods: `:new`

### freezeCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.freezeCondition"
- methods: `:new`

### freezeConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.freezeConditionStatus"
- methods: `:new`

### frigidBarrierStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.frigidBarrierStatus"
- methods: `:new`

### fruitDroneScreen

- defined in `classes.require_specific` as module "classes.interface.screens.fruitDroneScreen"
- methods: `:getScreenForFruitDrone`

### functionHelper

- defined in `classes.require_core` as module "classes.modules.functionHelper"
- methods: `:afterCount`, `:forEachOnComplete`, `:optionalOnComplete`, `:forEachOnCompleteParallel`, `:forEachOnCompleteParallelWithDelay`, `:executeMultiple`, `:createCounter`, `:executeOnce`, `:onCompleteCounter`, `:createObjectFunctionArray`, `:countFromToUntilReturn`, `:forEachOnCompleteParallelSimple`, `:onCompleteIfNotNil`, `:onCompletes`, `:onCompletesParallel`, `:doTwice`, `:executeObjectFunctions`, `:forEachOnCompleteSafe`, `:onCompleteFunctions`, `:onCompleteFunctionsParallel`, `:onCompleteFunctionsWithSkipRemaining`, `:onCompletesWithSkipRemaining`, `:skipOrContinues`

### gameSettings

- defined in `main` as module "classes.modules.gameSettings"
- methods: `:isBattleCreatedAsOnlineOrReducedRandomnessInBattles`, `:getOptionalFileSuffixForTimescaleForBattle`, `:getSafeHorizontalInset`, `:saveSettings`, `:getReduceFlashesSetting`, `:getSafeHorizontalInsetOrAtleast`, `:shouldReduceMotion`, `:getEnableOnlineSavesSetting`, `:setShowMilestoneAchievedPopupSetting`, `:setShowWeatherAnimations`, `:shouldSaveOnlineOrOnICloud`, `:getColorBlindnessSetting`, `:getTimescaleForOverworld`, `:setShowEncounterAnimations`, `:shouldShowEncounterAnimations`, `:shouldShowWeatherAnimations`, `:getHideDirectionalInputSetting`, `:hasBoughtNonConsumableIAP`, `:calculateMaxSafeAreaInset`, `:getDirectionalInputMethod`, `:getEasyTrainerBattles`, `:getLanguageCode`, `:getPauseButtonHoldAction`, `:getSafeBottomInsetOrAtLeast`, `:getSafeWidth`, `:setSafeHorizontalInset`, `:setShowAchievementAchievedPopupSetting`, `:setTimescaleForBattle`, `:setTimescaleForOverworld`, `:getAdjustedSafeBottomInsetOrZero`, `:getShowMilestoneAchievedPopupSetting`, `:getTimescaleForBattle`, `:hasUnlockedMilestoneClaimAllButton`, `:setReducedRandomnessInBattles`, `:shouldUseFasterBattleDialog`, `:addBoughtNonConsumableIAP`, `:getAfterCatchMonsterNicknameMode`, `:getAutomaticallyRunSetting`, `:getDpadSpriteOffsetX`, `:getDpadSpriteOffsetY` ...

### gauntletModuleUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.gauntletModuleUtility"
- methods: `:getOrderedModules`, `:createIcon`

### ghostTownUtility

- defined in `classes.require_specific` as module "classes.maps.ghostTown.ghostTownUtility"
- methods: `:createGoDirectionCutscene`, `:isInAlternateDimension`, `:createPurringCatCutscene`, `:getPortalPillarsBlue`, `:shouldMountPurrgyUponTeleport`

### gifHelper

- defined in `classes.require_core` as module "classes.modules.gifHelper"
- methods: `:newBuilder`, `:newSocialBuilder`, `:createContainerAndBackground`, `:getPlatforms`

### graphics

- defined in `classes.definitions.graphics.def` as table
- fields: `.newMask`, `.newImageSheet`, `.defineEffect`, `.newTexture`

### gravityPullStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.gravityPullStatus"
- methods: `:new`

### gridHelper

- defined in `classes.require_core` as module "classes.modules.gridHelper"
- methods: `:indexToGrid`, `:amountOfRows`, `:createArrayStartingAtZero`, `:findBestGrid`, `:gridToIndex`, `:amountOfColumns`, `:createArrayStartingAtOne`, `:getRandomTileInDistance`

### gridMoveDataUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.gridMoveDataUtility"
- methods: `:new`

### gridNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.gridNavigationBuilder"
- methods: `:new`

### groupHelper

- defined in `classes.require_core` as module "classes.modules.groupHelper"
- methods: `:new`, `:newContainer`, `:clear`, `:newAnchored`, `:newObject`, `:borrowObject`, `:returnBorrowedObject`, `:setObjectContainer`, `:newStack`

### handCursorBuilder

- defined in `classes.require_specific` as module "classes.interface.handCursorBuilder"
- methods: `:new`

### harborUtility

- defined in `classes.require_specific` as module "classes.maps.harbor.harborUtility"
- methods: `:askIfReadyToGoToElectricTown`

### hauntedGroundsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.hauntedGroundsEntryHazard"
- methods: `:new`

### hazyCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.hazyCondition"
- methods: `:new`

### hazyConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.hazyConditionStatus"
- methods: `:new`

### heatwaveWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.heatwaveWeatherEffect"
- methods: `:new`

### horizontalNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.horizontalNavigationBuilder"
- methods: `:new`

### iceCaveUtility

- defined in `classes.require_specific` as module "classes.maps.iceCave.iceCaveUtility"
- methods: `:createOptionalFloorQuestionCutscene`

### iceTownUtility

- defined in `classes.require_specific` as module "classes.maps.iceTown.iceTownUtility"
- methods: `:progressFestivalActivities`, `:isVorstCorruptedByCrimsonite`

### iceWallStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.iceWallStatus"
- methods: `:new`

### icyNailsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.icyNailsEntryHazard"
- methods: `:new`

### imageHelper

- defined in `classes.require_core` as module "classes.modules.imageHelper"
- methods: `:new`, `:newObject`, `:newFrame`, `:newFilled`, `:newHorizontallyRepeated`, `:newScaled`, `:newRepeatedObject`, `:newScaledFrame`, `:newScaledFromB64`, `:newVerticallyRepeated`

### increaseEnergyCostStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.increaseEnergyCostStatus"
- methods: `:new`

### innerBottomBarTabBar

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.bottomBarObjects.innerBottomBarTabBar"
- methods: `:new`, `:createSizeOptionsWithTabBarWidth`, `:createSizeOptionsWithTabWidth`

### innerTopBarGold

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.innerTopBarGold"
- methods: `:getOrCreateInstance`, `:doCurrencyAnimation`, `:getInstance`, `:isCreated`

### innerTopBarMonstersOwnedCounter

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersOwnedCounter"
- methods: `:new`

### innerTopBarMonstersSeenCounter

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersSeenCounter"
- methods: `:new`

### innerTopBarMonstersStoredCounter

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersStoredCounter"
- methods: `:new`, `:setAmount`

### innerTopBarStyleCrystals

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.innerTopBarStyleCrystals"
- methods: `:doCurrencyAnimation`, `:isCreated`, `:getOrCreateInstance`

### innerTopBarTitle

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.innerTopBarTitle"
- methods: `:getOrCreateInstance`

### inputHelper

- defined in `classes.require_core` as module "classes.modules.input.inputHelper"
- methods: `:addTouchable`, `:addMouseHoverable`, `:blockInput`, `:unblockInput`, `:getTouchListener`, `:onMouseHoverBeganOrEnded`, `:onReleaseWithinBounds`, `:listenToTouchOrUseButton`, `:decreaseInputLevel`, `:returnTrue`, `:increaseInputLevel`, `:onMouseScrollAndMove`, `:repeatIfButtonIsStillPressed`, `:unblockInputNavigation`, `:isUsingKeyboard`, `:releaseInput`, `:isGamepadNavigationSelected`, `:isTouchNavigationSelected`, `:getInputLevel`, `:isUsingAppleTVRemote`, `:isButtonActuallyPressed`, `:isInputBlocked`, `:onMouseScroll`, `:removeMouseHoverable`, `:setKeyEventShouldDetectUnknownGamepads`, `:getLastHorizontalDirection`, `:isKeyboardAndMouseNavigationSelected`, `:isKeyboardDevice`, `:removeTouchable`, `:blockInputNavigation`, `:enableNativeBackToExitForAndroid`, `:getLastVerticalDirection`, `:getOptionalMouseLocation`, `:isKeyboardNavigationSelected`, `:releaseWithinBounds`, `:setMultitouchEnabled`, `:addTouchableOverlay`, `:clearProgrammaticReleaseIgnoredButtonUIDs`, `:disableNativeBackToExitForAndroid`, `:ignoreProgrammaticReleaseForButtonUIDs` ...

### inputNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.inputNavigationBuilder"
- methods: `:new`

### itemList

- defined in `classes.require_specific` as module "classes.lists.itemList"
- fields: `.FRUIT_RECOVER_HEALTH`, `.SPINNER_REGULAR_1`, `.FRUIT_DRONE`, `.RECALL_PREMIUM`, `.DRILL_SHOVEL_SILVER`, `.CLOTHING_LAB`, `.DRILL_SHOVEL_GOLD`, `.FRUIT_RECOVER_ENERGY`, `.GAUNTLET_LUXSOLIS_BLUE`, `.ROTTEN_APPLE`, `.OUTFIT_GUARD`, `.FRUIT_APPLY_STATBOOST_ATTACK`, `.HEADGEAR_WORKER`, `.POCKET_SNIPS`, `.SWAMP_MUSHROOM_GREEN`, `.GLASSES_SLIM_GREY`, `.HEADGEAR_BOOK`, `.PAMPHLET_GEMS`, `.POTENTIAL_READER_PREMIUM`, `.SWAMP_MUSHROOM_BLUE`, `.SWAMP_MUSHROOM_RED`, `.CAKE_RECOVER_HEALTH_1`, `.DEVOLVE_PILL`, `.FRUIT_APPLY_STATBOOST_DEFENSE`, `.FRUIT_APPLY_STATBOOST_SPECIALATTACK`, `.FRUIT_APPLY_STATBOOST_SPECIALDEFENSE`, `.FRUIT_XP_BOOST`, `.GAUNTLET_GOLD_BLUE`, `.IAPSHOP_COUPON_POTENTIAL_STONE`, `.POTENTIAL_READER`, `.SURFBOARD`, `.SWAMP_MUSHROOM_PURPLE`, `.TRAINER_HUB_ENTRY_PASS`, `.CAKE_CURE_CONDITION`, `.CARROT`, `.ESSENCE_LOCATOR`, `.FRUIT_CURE_CONDITION_BURN`, `.FRUIT_CURE_CONDITION_HAZY`, `.HEADGEAR_KARATEBAND`, `.HEADGEAR_SWAMP_MUSHROOM_RAINBOW` ...

### itemScreen

- defined in `classes.require_specific` as module "classes.interface.screens.itemScreen"
- methods: `:getScreenForBuying`, `:getScreenForInventory`, `:getScreenForSelling`, `:getScreenForHoldItemSelection`, `:getScreenForSettingHoldItemOnMonster`, `:getScreenForSpinnerSwap`, `:getScreenForBattle`, `:getScreenForBindItemSelection`, `:getScreenForFruitGrowingPot`, `:getScreenForLuxWardrobe`, `:getScreenForPowerTowerFuses`, `:getScreenForPyramidTableRiddleStatue`, `:getScreenParamsForInventoryOnHold`

### itemUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.itemUtility"
- methods: `:getShopItems`, `:createOrderedItemArrayWithSubcategories`

### json

- defined in `classes.definitions.json.def` as table
- defined in `classes.require_core` as module "json"
- fields: `.decode`, `.encode`

### keyboardOverlayBuilder

- defined in `classes.require_specific` as module "classes.interface.overlays.keyboardOverlayBuilder"
- methods: `:new`
- fields: `.infiniteDebugWidth`

### keys

- defined in `classes.require_core` as module "classes.modules.convenience.keys"
- methods: `:parseNumberOfKeyOrNumpadKey`, `:parseNumberOfFunctionKey`, `:parseNumberOfNumpadKey`
- fields: `.onKeyDown`, `.onKeyUp`

### kindredSoulStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.kindredSoulStatus"
- methods: `:new`

### knockdownStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.knockdownStatus"
- methods: `:new`

### languageHelper

- defined in `main` as module "classes.modules.languageHelper"
- methods: `:selectedLanguageCodeRendersRightToLeft`, `:addPlaceholderFunction`, `:getSelectedLanguageCode`, `:addPropertyFiles`, `:setSelectedLanguageCode`, `:getLanguageCodes`, `:getTranslationInSelectedLanguageCode`, `:addEnglishJargonKeyFunction`, `:addEnglishJargonKey`, `:getTranslation`, `:getSelectedLanguageCodeOrderedFontFilePrefixes`, `:init`, `:selectedLanguageCodeRendersStaticInfoTextLeftOfDynamicInfoText`, `:removePropertyFiles`, `:selectedLanguageCodeUsesPronouns`, `:characterHasGlyph`, `:forEachLanguageCode`, `:getLanguageCodesForLanguageSelectPopup`, `:isPropertyFileAdded`, `:negateIfSelectedLanguageCodeRendersRightToLeft`, `:replacePlaceholders`, `:selectedLanguageCodeHasNoSpaces`, `:selectedLanguageCodeRequiresPlainOverlay`, `:setIsEnglishJargonEnabled`, `:tryGetAutoSelectedLanguage`

### lastStandStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.singleRound.lastStandStatus"
- methods: `:new`

### logbookScreen

- defined in `classes.require_specific` as module "classes.interface.screens.logbookScreen"
- methods: `:getScreenName`

### lua

- defined in `main` as module "classes.modules.lua"
- methods: `:encode`

### luxSolisTownUtility

- defined in `classes.require_specific` as module "classes.maps.luxSolisTown.luxSolisTownUtility"
- methods: `:spawnReceptionGauntletPlatform`

### magnet

- defined in `classes.require_core` as module "classes.modules.magnet"
- methods: `:center`, `:bottomCenter`, `:topCenter`, `:topLeft`, `:bottomRight`, `:bottomLeft`, `:topRight`, `:centerLeft`, `:atBottomCenter`, `:atTopCenter`, `:atRightCenter`, `:evenlyDistributed`, `:centerRight`, `:atLeftCenter`, `:top`, `:bottom`, `:getXLocationFor`, `:getYLocationFor`, `:invalidateOnSafeAreaChangedEvent`, `:atTop`, `:borrowObjectWithConsistentLocation`, `:returnBorrowedObject`, `:getLocationFor`, `:horizontalCenter`, `:verticalCenter`, `:atTopLeft`, `:atTopRight`, `:right`, `:atBottom`, `:left`, `:atBottomLeft`, `:atRight`, `:getDeltaLocationFor`, `:atLeftBottom`, `:atRightBottom`, `:atRightTop`, `:evenlyDistributedInArea`, `:getDeltaXLocationFor`, `:atBottomCenterBetween`, `:atBottomRight` ...
- fields: `.center`

### magnetContentAware

- defined in `classes.require_core` as value
- methods: `:center`, `:atLeftCenter`, `:topCenter`

### magnetRightToLeftAware

- defined in `classes.require_core` as value
- methods: `:topLeft`, `:centerLeft`, `:topRight`, `:bottomRight`, `:bottomLeft`, `:centerRight`, `:center`, `:atRightCenter`, `:atLeftCenter`, `:topCenter`, `:bottomCenter`, `:atLeftTop`, `:atRight`, `:verticalCenter`, `:atBottomLeft`, `:atLeft`, `:atRightTop`, `:atTopRight`, `:evenlyDistributed`, `:left`, `:atTopLeft`, `:horizontalCenter`, `:top`, `:atBottom`, `:atBottomCenter`, `:bottom`, `:right`, `:atBottomRight`, `:atLeftBottom`, `:atRightBottom`, `:getXLocationFor`

### maskHelper

- defined in `classes.require_core` as module "classes.modules.maskHelper"
- methods: `:setLocationForFrame`

### maskedDisplayObjectBuilder

- defined in `classes.require_core` as module "classes.modules.interface.maskedDisplayObjectBuilder"
- methods: `:new`

### math

- defined in `classes.libraries.math` as math
- fields: `.floor`, `.random`, `.max`, `.min`, `.round`, `.abs`, `.ceil`, `.clamp`, `.chance`, `.between`, `.randomseed`, `.roundByInterval`, `.sqrt`, `.withRandomseed`, `.pi`, `.roundedDivideIntoTwo`, `.huge`, `.cos`, `.getScaledValueRounded`, `.sin`, `.getHeuristicDistance`, `.greatestCommonDivisor`, `.modf`, `.randomBoolean`, `.spreadOut`, `.asin`, `.atan2`, `.betweenExclusiveStart`, `.clampAndReturnDirectionNumber`, `.fmod`, `.getExpectedRandomCallFileAndLineNumbers`, `.getUnexpectedRandomCallFileAndLineNumbers`, `.oneTo`, `.pow`, `.randomOneIn`, `.randomOneOrMinusOne`, `.zeroTo`, `.acos`, `.atan`, `.betweenSafe` ...

### mescherRealmUtility

- defined in `classes.require_specific` as module "classes.maps.mescherRealm.mescherRealmUtility"
- methods: `:enableExtensionsForFIND_MESCHER_REALM_SOULS`, `:enableExtensionsForMaze`, `:enableExtensionsForInbetweenRealm`

### milestoneScreen

- defined in `classes.require_specific` as module "classes.interface.screens.milestoneScreen"
- methods: `:getScreenForMilestones`, `:getScreenForBattleDomeStars`

### milliseconds

- defined in `classes.require_core` as module "classes.constants.milliseconds"
- fields: `.SECOND`, `.MINUTE`

### mirrorChallengeAI

- defined in `classes.require_specific` as module "classes.battle.AI.mirrorChallengeAI"
- methods: `:new`

### monsterBattleConfigList

- defined in `classes.require_specific` as module "classes.lists.monsterBattleConfigList"
- fields: `.GHOST_WOLF_1`

### monsterDataList

- defined in `classes.require_specific` as module "classes.lists.monsterDataList"
- fields: `.NORMAL_BEE_1`, `.NORMAL_CYBORG_1`, `.ELECTRIC_TIGER_1`, `.GHOST_CAT_1`, `.TITAN_ELECTRIC`, `.ELECTRIC_BEETLE_1`, `.ELECTRIC_BEETLE_2`, `.FIRE_BULL_1`, `.FIRE_TURTLE_1`, `.GHOST_OCTO_1`, `.GHOST_WOLF_3`, `.ICE_BEAR_1`, `.NORMAL_ADDER_1`, `.NORMAL_BEE_2`, `.TITAN_WATER`, `.WATER_SHARK_1`, `.WATER_SHARK_3`

### monsterDataUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.monsterDataUtility"
- methods: `:getSpeakerForRandomizableTitan`, `:countAmountOfMonsterDataWithNumber`, `:getSortedMonsterDataListWithNumber`, `:getSpeakerNameForRandomizableTitan`, `:resolveDefaultSpriteSkinForCrimsoniteMonster`, `:getSpeakerHeadForRandomizableTitan`, `:getSpeakerStyleForRandomizableTitan`, `:resolveDefaultSpriteSkinForRandomizableTitan`

### monsterDatabaseScreen

- defined in `classes.require_specific` as module "classes.interface.screens.monsterDatabaseScreen"
- methods: `:getScreen`, `:getScreenForMonster`, `:getScreenWithActiveViewMode`

### monsterParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.monsterParticipant"
- methods: `:new`

### monsterPotentialUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.monsterPotentialUtility"
- methods: `:getLowestPotentialForCategory`, `:getCategories`, `:getHighestPotentialForCategory`, `:createCategoryIcon`, `:isPotent`

### monsterStorageScreen

- defined in `classes.require_specific` as module "classes.interface.screens.monsterStorageScreen"
- methods: `:getScreenForWithdraw`, `:getScreenForSelection`

### monsterSummaryScreen

- defined in `classes.require_specific` as module "classes.interface.screens.monsterSummaryScreen"
- methods: `:getScreenEditable`, `:getScreenNonEditable`, `:getScreenForMonsterNonEditable`, `:getScreenForMonsterEditable`, `:getScreenForOnlineSquadEditable`

### monsterUsableItemMove

- defined in `classes.require_specific` as module "classes.battle.moves.monsterUsableItemMove"
- methods: `:new`

### monsterUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.monsterUtility"
- methods: `:getMaxLevel`, `:rollPotential`, `:getPotentialCategoryForPotential`, `:rollPotentialCategory`, `:showMonsterNicknameKeyboardOverlay`, `:getMonsterByeByeMessage`, `:getLevelOfUpcomingTitan`, `:showMonsterReleaseConfirmPopupWithByeByeMessage`, `:showMonsterReleaseConfirmPopup`, `:tryRollHoldItemUID`
- fields: `.MAX_MONSTER_NAME_WIDTH_PLAIN_8`, `.AVATAR_HEIGHT`

### mysticMeshStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.mysticMeshStatus"
- methods: `:new`

### native

- defined in `classes.definitions.native.def` as table
- fields: `.requestExit`, `.showAlert`, `.setProperty`, `.setKeyboardFocus`, `.canShowPopup`, `.getProperty`, `.showPopup`, `.newTextField`, `.newWebView`

### navigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.navigationBuilder"
- methods: `:new`

### navigations

- defined in `classes.require_core` as module "classes.modules.convenience.navigations"
- methods: `:createUseButtonNavigation`, `:createShowNavigation`, `:createNumericKeyTouchNavigation`, `:createBackButtonNavigation`, `:createStartButtonNavigation`, `:setShowOnFocus`, `:createNonFocusableNavigation`, `:createAlphaShowNavigation`, `:createHorizontalButtonsNavigationWithLastSelected`, `:createSecondExtraButtonNavigation`, `:createCombinedNavigation`, `:createFirstExtraButtonNavigation`, `:createDownButtonNavigation`, `:createUpButtonNavigation`, `:createVerticalButtonsNavigation`, `:createNumericFunctionKeyTouchNavigation`, `:createGridButtonsNavigation`, `:createVerticalNavigationWithLastSelected`, `:findByFunctionRecursive`, `:onStartButtonDown`, `:setAlphaShowOnFocus`, `:switchFromKeyboardToGamepadNavigationMethodOnDpad`
- fields: `.mapKeyEventToTouches`, `.doMapKeyEventToTouch`

### network

- defined in `classes.definitions.network.def` as table
- fields: `.request`, `.cancel`, `.upload`

### neutralizedStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.neutralizedStatus"
- methods: `:new`

### nineFrameImageBuilder

- defined in `classes.require_core` as module "classes.modules.interface.nineFrameImageBuilder"
- methods: `:new`

### ninjaStanceStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.singleRound.ninjaStanceStatus"
- methods: `:new`

### offlineOpponentTrainerParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.offlineOpponentTrainerParticipant"
- methods: `:new`

### offlinePlayerTrainerParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.offlinePlayerTrainerParticipant"
- methods: `:new`

### onlineOpponentTrainerParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.onlineOpponentTrainerParticipant"
- methods: `:new`

### onlinePlayerTrainerParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.onlinePlayerTrainerParticipant"
- methods: `:new`

### os

- defined in `classes.libraries.os` as os
- fields: `.date`, `.time`, `.executeMakeDir`, `.execute`, `.executeMove`, `.executeReplaceDir`, `.executeRemove`, `.timeInMilliseconds`, `.parse`, `.remove`, `.convertGifToMp4`, `.convertGifToSquare`, `.convertImagesToGif`, `.difftime`, `.executeRemoveDir`, `.removePngMetadata`, `.separator`

### outerTopBarDebugButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarDebugButtonBuilder"
- methods: `:new`

### outerTopBarInfoButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarInfoButtonBuilder"
- methods: `:new`

### outerTopBarMonsterFilterButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarMonsterFilterButtonBuilder"
- methods: `:new`

### outerTopBarMonsterSortButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarMonsterSortButtonBuilder"
- methods: `:new`

### outerTopBarOnlineLeaderboardsButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarOnlineLeaderboardsButtonBuilder"
- methods: `:new`

### outerTopBarQuitButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarQuitButtonBuilder"
- methods: `:new`

### outerTopBarRandomButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarRandomButtonBuilder"
- methods: `:new`

### outerTopBarRestorePurchasesButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarRestorePurchasesButtonBuilder"
- methods: `:getOrCreateInstance`

### outerTopBarSetMonsterLevelToButtonBuilder

- defined in `classes.require_specific` as module "classes.interface.navBarObjects.topBarObjects.outerTopBarSetMonsterLevelToButtonBuilder"
- methods: `:new`

### overclockerStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.overclockerStatus"
- methods: `:new`

### paramHelper

- defined in `classes.require_core` as module "classes.modules.paramHelper"
- methods: `:optionalString`

### parentNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.parentNavigationBuilder"
- methods: `:new`

### pauseMenu

- defined in `classes.require_specific` as module "classes.interface.pauseMenu"
- methods: `:showScreen`, `:addOnAfterCloseFunction`, `:createInstance`, `:close`, `:createInstanceAndPauseWorld`, `:isCreated`, `:closeIfCreated`, `:getTopGroup`, `:back`, `:isCreatedAsOnline`, `:enableBackButton`, `:addOnBeforeCloseFunction`, `:getBottomBar`, `:getCurrentScreenName`, `:getCurrentScreenObject`, `:getHistory`, `:getNewOrCurrentScreenName`, `:getTopBar`, `:forceDestroy`, `:forceDestroyIfCreated`, `:pauseInputNavigationFocus`, `:decreaseInputLevelIfNotAlreadyDone`, `:getNewOrCurrentScreenScreenParams`, `:getScreenContainer`, `:isOnline`, `:resumeInputNavigationFocus`

### pauseMenuScreenBuilder

- defined in `classes.require_specific` as module "classes.interface.pauseMenuScreenBuilder"
- methods: `:new`, `:newBuilder`, `:newSimpleBuilder`

### pieChartBuilder

- defined in `classes.require_core` as module "classes.modules.interface.pieChartBuilder"
- methods: `:new`

### playerBattleDomeSession

- defined in `classes.require_specific` as module "classes.modules.playerBattleDomeSession"
- methods: `:isStartedAndActive`, `:getAmountOfOpponentsDefeated`, `:getModeObject`, `:isStartedOrPaused`, `:hasUnlockedRecoverEnergy`, `:startBattleDomeSession`, `:getDifficultyObject`, `:calculateOpponentLevel`, `:destroyBattleDomeSession`, `:getPotentialStatResetCost`, `:getRecoverCost`, `:getStageResetCost`, `:getTraitResetCost`, `:hasUnlockedShopStageThree`, `:isOpponentRevealed`, `:resolveOpponentConfiguration`, `:unpause`, `:destroyBattleDomeSessionAndShowResultAndReturnToLobby`, `:getIncreaseOpponentLevelGain`, `:getUnlockPotentialStatResetCost`, `:getUnlockRecoverEnergyCost`, `:getUnlockShopStageCost`, `:getUnlockStageResetCost`, `:hasUnlockedPotentialStatReset`, `:hasUnlockedShopStageTwo`, `:hasUnlockedStageReset`, `:pause`, `:getRevealOpponentCost`, `:createOpponentPreview`, `:increaseAmountOfOpponentsDefeated`, `:increaseOpponentLevel`, `:revealOpponent`, `:unlockPotentialStatReset`, `:unlockRecoverEnergy`, `:unlockShopStageThree`, `:unlockShopStageTwo`, `:unlockStageReset`

### playerCurrency

- defined in `classes.require_specific` as module "classes.modules.playerCurrency"
- methods: `:getGold`, `:addGold`, `:spendGold`, `:getRestrictedGold`, `:createGoldIcon`, `:clearGold`, `:setBattleDomeTokens`

### playerGauntlet

- defined in `classes.require_specific` as module "classes.modules.playerGauntlet"
- methods: `:setSelectedGauntletModule`, `:installGauntletModule`, `:hasInstalledGauntletModule`, `:getSelectedGauntletModule`

### playerInventory

- defined in `classes.require_specific` as module "classes.modules.playerInventory"
- methods: `:addItem`, `:getAmount`, `:getItemArrayByInstanceOf`, `:removeItem`, `:getItemArrayByFilter`, `:removeAllOfItem`, `:onLoadSaveslotData`, `:destroy`, `:clearItems`, `:getItemArray`, `:getMaxAmountOfRogueItemSlots`, `:getPersistedItem`, `:persistItem`, `:removePersistedItem`, `:setBattleDomeItems`, `:getRestrictedAmount`, `:isCreated`, `:onSaveSaveslotData`

### playerMonsters

- defined in `classes.require_specific` as module "classes.modules.playerMonsters"
- methods: `:getSquad`, `:setSquad`, `:getMonsterStorage`, `:isFirstConsciousMonsterInSquad`, `:hasUnlockedMonsterSpriteSkinUID`, `:add`, `:addToHiddenMonsterStorage`, `:addToSquad`, `:releaseFromSquad`, `:setSquadFullyRestored`, `:addToMonsterStorage`, `:getOnlineLoanSquad`, `:getMaxSquadSize`, `:hasFullSquad`, `:getFirstConsciousMemberInSquad`, `:getInsaneSpinnerSquad`, `:getMonsterInHiddenStorage`, `:isOnlyAliveMonsterInSquad`, `:populateOnlineLoanSquad`, `:releaseFromMonsterStorage`, `:setUnlockedMonsterSpriteSkinUID`, `:debugSetMonsterStorage`, `:getMonsterInSquad`, `:getMonstersIncludingMonsterGraveyard`, `:releaseFromInsaneSpinnerSquad`, `:addToInsaneSpinnerSquad`, `:getMonsterGraveyard`, `:getOwnedMonstersExcludingInsaneSpinnerSquad`, `:getSquadOrInsaneSpinnerSquad`, `:moveFromSquadToGraveyard`, `:onLoadSaveslotData`, `:releaseFromHiddenMonsterStorage`, `:setBattleDomeSquad`, `:swapWithinSquad`, `:destroy`, `:getBattleEffects`, `:getMonster`, `:getMonstersExcludingMonsterGraveyard`, `:getOwnedMonstersIncludingMonsterGraveyard`, `:hasFullInsaneSpinnerSquad` ...

### playerOnlineCasualCustomPreferences

- defined in `classes.require_specific` as module "classes.modules.playerOnlineCasualCustomPreferences"
- methods: `:get`, `:getAsQueuePreferences`

### playerOnlineSquads

- defined in `classes.require_specific` as module "classes.modules.playerOnlineSquads"
- methods: `:getOnlineSquadsFor`, `:setLastSelectedOnlineSquadIndex`, `:getLastSelectedSquad`, `:getOnlineSquadsIncludingPlayerOnlineLoanSquad`, `:setLastSelectedOnlineRankedMatchmakingMode`, `:getLastSelectedOnlineRankedMatchmakingMode`, `:resolveOnlineLoanSquadEntries`, `:setLastSelectedOnlineCasualMatchmakingMode`, `:getLastSelectedOnlineCasualMatchmakingMode`, `:getOnlineSquadsIncludingPlayerSquads`, `:increaseAmountIfOnlineSquadsIfAllInUse`, `:populateOnlineLoanSquadEntries`
- fields: `.categories`

### playerOnlineStyle

- defined in `classes.require_specific` as module "classes.modules.playerOnlineStyle"
- methods: `:getOnlineBattleEnvironment`, `:getWinBattleTaunt`, `:setOnlineBattleEnvironment`, `:setWinBattleTaunt`, `:getBattleMusic`, `:setBattleMusic`, `:getCharacterConfig`, `:getCharacterConfigUID`

### playerPerks

- defined in `classes.require_specific` as module "classes.modules.playerPerks"
- methods: `:hasCatchProbabilityPerk`, `:setObtainedPerk`, `:hasObtainedPerk`, `:hasReducedShopPricePerk`, `:perkExists`

### playerQuests

- defined in `classes.require_specific` as module "classes.modules.playerQuests"
- methods: `:isCompleted`, `:isInProgress`, `:isStarted`, `:debugSetCompleted`, `:debugSetInProgress`, `:start`, `:complete`, `:getQuestName`, `:unstart`, `:onLoadSaveslotData`, `:onSaveSaveslotData`, `:getQuestDescription`, `:uncomplete`, `:createQuestCharacterHead`, `:getActiveQuests`, `:getAmountOfChaptersCompleted`, `:getCompletedQuests`, `:getCurrentChapter`, `:isCreated`

### playerSettings

- defined in `classes.require_specific` as module "classes.modules.playerSettings"
- methods: `:getDifficultyObject`, `:getPlayerCharacterConfig`, `:setWearableItemUID`, `:addVisitedLocation`, `:getDifficulty`, `:setDifficulty`, `:isCreated`, `:getWearableItemUID`, `:addRecallLocation`, `:setPlayerName`, `:getNotDisabledWearableItemUID`, `:getPlayerName`, `:hasRecallLocation`, `:getOnlineProfileId`, `:getSaveableBattleEffects`, `:hasVisitedMap`, `:registerSaveableBattleEffect`, `:unregisterSaveableBattleEffect`, `:getSaveableBattleEffect`, `:getStarterUID`, `:hasVisitedLocation`, `:applyRandomizationSeed`, `:getPlayerPronoun`, `:setCharacterHair`, `:wearsOutfitWhichWillBlock`, `:setStarterUID`, `:getCharacterSkintone`, `:hasCustomDifficulty`, `:isFlappySwurmyBeezelModeEnabled`, `:setCharacterFacialHair`, `:setOnlineProfileId`, `:addPhoneMessage`, `:addVisitedMap`, `:createIdentifier`, `:getBindItemUID`, `:getDifficultyString`, `:getFlappySwurmySelectedPotentialCategory`, `:getPhoneMessages`, `:getPlayerNameMaxWidthConfig`, `:getRecallLocations` ...
- fields: `.getPlayerCharacterConfig`

### playerStateHelper

- defined in `classes.require_specific` as module "classes.modules.playerStateHelper"
- methods: `:initialisePlayerLibraries`, `:getSelectedSaveslotDeviceId`, `:manualSave`, `:unblockSave`, `:resolveSelectedSaveslotDeviceIdOrShowError`, `:blockSave`, `:quitCurrentGame`, `:createNewGame`, `:debugSetSelf`, `:isSaveBlocked`, `:loadGame`, `:shouldSilenceOnlineSaveErrorsThisSession`, `:autoSaveIfPrepared`, `:prepareAutoSave`, `:setShouldSilenceOnlineSaveErrorsThisSession`, `:unblockGauntletPower`, `:blockGauntletPower`, `:getSelectedSaveslotIdentifier`, `:isGauntletPowerBlocked`

### playerStats

- defined in `classes.require_specific` as module "classes.modules.playerStats"
- methods: `:setMonsterSeen`, `:setMonsterOwned`, `:setBattleDomeWinningStreakIfHighest`, `:getSteps`, `:hasSeenMonster`, `:addMonsterCaughtWithSpinner`, `:getAmountOfBattlesByFunction`, `:getLongestOnlineConsecutiveWins`, `:addStep`, `:hasOwnedMonster`, `:addLuxSolisRankExperience`, `:getFlappySwurmyHighscore`, `:getLuxSolisRank`, `:getSwurmyRushHighscore`, `:hasReachedMaxLuxSolisRankExperience`, `:getHighestBattleDomeWinningStreak`, `:getLuxSolisRankExperience`, `:onLoadSaveslotData`, `:addBattle`, `:addTrainerHubRecovery`, `:getAmountDistinctMonstersWithNumberSeenWithPotentialCategory`, `:getMilestoneStageClaimed`, `:hasClaimedLuxSolisBenefit`, `:hasSeenMonsterInRandomizedEvolution`, `:increaseOnlineConsecutiveWins`, `:setAchievementProgress`, `:addEvolutionTriggered`, `:addFruitPlantHarvested`, `:calculateAmountOfBattleDomeStarsAchieved`, `:createMinigameHighscoreEncryption`, `:getAmountOfEvolutionsCancelled`, `:getAmountOfMonstersCaughtWithSpinner`, `:getAmountOfMonstersCaughtWithSpinnerWithPotentialCategory`, `:getAmountOfMonstersFainted`, `:getAmountOfTrainerHubRecoveries`, `:getMonstersSeen`, `:getUnclaimedButAchievedMilestoneStages`, `:hasClaimedBattleDomeStarReward`, `:hasFlappySwurmyUnlockedPotentialCategory`, `:hasMonsterStorageNotificationMonsterIdentifier` ...

### playerWorldData

- defined in `classes.require_specific` as module "classes.modules.playerWorldData"
- methods: `:setProperty`, `:getProperty`, `:unsetProperty`, `:resolveConsistentSavePropertiesFromSpawnableOrProperty`, `:setTempProperty`, `:getTempProperty`, `:clearTempProperties`, `:getSpawnableConstructorsForMap`, `:removeSpawnableConstructorForMap`, `:setSpawnableConstructorForMap`

### poisonCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.poisonCondition"
- methods: `:new`

### poisonConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.poisonConditionStatus"
- methods: `:new`

### pollutedStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.pollutedStatus"
- methods: `:new`

### potentialRerollWorldEffect

- defined in `classes.require_specific` as module "classes.world.effects.world.potentialRerollWorldEffect"
- methods: `:new`

### potentialStatSoftResetWorldEffect

- defined in `classes.require_specific` as module "classes.world.effects.world.potentialStatSoftResetWorldEffect"
- methods: `:new`

### premonitionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.premonitionStatus"
- methods: `:new`

### purifyingGroundsEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.purifyingGroundsEntryHazard"
- methods: `:new`

### pyramidAreaUtility

- defined in `classes.require_specific` as module "classes.maps.desertRoute.pyramidAreaUtility"
- methods: `:createOptionalFloorQuestionCutscene`

### rainWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.rainWeatherEffect"
- methods: `:new`, `:spawnRain`

### rateAppHelper

- defined in `classes.require_specific` as module "classes.modules.rateAppHelper"
- methods: `:tryShowPopup`, `:init`

### recallBlockerWorldEffect

- defined in `classes.require_specific` as module "classes.world.effects.world.recallBlockerWorldEffect"
- methods: `:new`

### rechargeMove

- defined in `classes.require_specific` as module "classes.battle.moves.rechargeMove"
- methods: `:new`

### rechargingStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.rechargingStatus"
- methods: `:new`

### rectHelper

- defined in `classes.require_core` as module "classes.modules.rectHelper"
- methods: `:newContainerObject`, `:newRect`, `:newFullScreenRect`, `:newLine`, `:newDot`, `:newContainer`, `:newRectObject`, `:newFullScreenRectObject`, `:newFullScreenContainer`, `:newRectWithoutCorners`, `:newReflectedGradientRect`, `:newRectWithoutDoubleCorners`, `:newFullScreenContainerObject`, `:newLineRect`, `:newLineRectProgressBar`, `:newLineRectWithoutCorners`

### regularTrainerAI

- defined in `classes.require_specific` as module "classes.battle.AI.regularTrainerAI"
- methods: `:new`

### regurgitatingStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.regurgitatingStatus"
- methods: `:new`

### repeatMostRecentSkillStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.repeatMostRecentSkillStatus"
- methods: `:new`

### restMove

- defined in `classes.require_specific` as module "classes.battle.moves.restMove"
- methods: `:new`

### robbedStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.participant.robbedStatus"
- methods: `:new`

### rockWallStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.rockWallStatus"
- methods: `:new`

### rubberWebStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.rubberWebStatus"
- methods: `:new`

### sandSkewersEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.sandSkewersEntryHazard"
- methods: `:new`

### sandstormWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.sandstormWeatherEffect"
- methods: `:new`

### saveslotDataHelper

- defined in `classes.require_specific` as module "classes.modules.saveslotData.saveslotDataHelper"
- methods: `:createMetadata`, `:decrypt`, `:updateDataToNewestVersion`, `:createScreenshotForMetadata`, `:decodeMetadata`, `:encodeMetadata`, `:encrypt`
- fields: `.decodeMetadata`

### saveslotDataUtility

- defined in `classes.require_specific` as module "classes.modules.saveslotData.saveslotDataUtility"
- methods: `:getMainCharacterMapFile`, `:getMainCharacterMapPath`

### saveslotDataVersionHelper

- defined in `classes.require_specific` as module "classes.modules.saveslotData.saveslotDataVersionHelper"
- methods: `:isPlayerInMap`, `:changeItemUID`, `:placePlayerInMapAt`, `:forEachSavedMonster`, `:changeTiledSpawnableName`, `:isQuestCompleted`, `:changeMapName`, `:movePlayerToAndInvalidateOtherSpawnableLocations`, `:changeSkillUID`, `:getAllSavedMonsters`, `:addSaveslotChangedNotificationMessage`, `:changeTraitUID`, `:changeQuestChapterUID`, `:isQuestStarted`, `:setMaxAmountOfItemUID`, `:changePlayerWorldDataPropertyUID`, `:isQuestInProgress`, `:changeMonsterSpriteSkinUID`, `:findSavedMonster`, `:forEachCastedMonster`, `:changeWorldEffectClassPath`, `:forEachOnlineSquadEntry`, `:removeItem`, `:findMaxCastedMonsterValue`, `:removeSupportedGlyph`, `:removeWorldEffect`, `:changeSkillObjectUID`, `:removeWorldEffectIf`, `:replaceInTiledSpawnableSaveableName`, `:moveSpawnables`, `:removeQuestChapterUID`, `:anySavedMonsterMatches`, `:forEachWorldEffectWithClassPath`, `:getAmountOfHoldItemUID`, `:changeMonsterUID`, `:changeQuestUID`, `:getPlayerTile`, `:movePlayerTo`

### seconds

- defined in `classes.require_core` as module "classes.constants.seconds"
- fields: `.MINUTE`, `.HOUR`, `.DAY`

### serverSettings

- defined in `main` as module "classes.configs.serverSettings"
- fields: `.server_authentication`, `.server_inventory`, `.server_profile`, `.server_ranking`, `.server_rewards`, `.server_shop`, `.server_userblob`, `.socket_match_state_mediator`, `.socket_matchmaking`

### settingsScreen

- defined in `classes.require_specific` as module "classes.interface.screens.settingsScreen"
- methods: `:getScreenForPauseMenuScreen`, `:getScreenParamsForPauseMenuScreenHold`, `:getScreenForTitleScreen`

### shareHelper

- defined in `classes.require_specific` as module "classes.modules.shareHelper"
- methods: `:canShare`, `:shareString`

### sharedFateStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.sharedFateStatus"
- methods: `:new`

### sheetHelper

- defined in `classes.require_core` as module "classes.modules.sheetHelper"
- methods: `:new`

### shockCondition

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.shockCondition"
- methods: `:new`

### shockConditionStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.conditions.shockConditionStatus"
- methods: `:new`

### silentSkipMove

- defined in `classes.require_specific` as module "classes.battle.moves.silentSkipMove"
- methods: `:new`

### skillDataList

- defined in `classes.require_specific` as module "classes.lists.skillDataList"
- fields: `.BERSERK`, `.BUBBLE_BURST`, `.FROST_CHOMP`, `.PREMONITION`, `.PYRE_PECK`, `.SLAM`

### skillMove

- defined in `classes.require_specific` as module "classes.battle.moves.skillMove"
- methods: `:new`

### skillMoveUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.skillMoveUtility"
- methods: `:doDefaultHitWithBlinkWithDamageAndFloatingText`, `:getTransitionableBattleObjects`, `:doSmallShake`, `:doTinyShake`, `:tryRecoverHealth`, `:doDefaultHitWithBlinkWithoutDamage`, `:doDefaultHitWithBlinkWithDamage`, `:doSingleBlinkWithoutDamage`, `:doMediumShake`, `:doDefaultHitMultipleWithBlinkWithDamage`, `:createSkillMovePerTarget`, `:tryRecoverEnergy`, `:isConsecutiveSkillUse`, `:doPositionAndFloatObject`, `:getRandomFloatingTextOffsets`, `:tryDepleteEnergyWithDefaultDepletionText`, `:clampDamageIfNotAtOneHp`, `:doConfusionAnimation`, `:doInfectionAnimation`, `:setNextHitSound`, `:tryDepleteEnergyIfNotFaintedOfflineEnemyWithDefaultDepletionText`, `:tryDoRecoilDamage`, `:doRecoverHealthAnimation`, `:tryDepleteEnergyIfNotFaintedOfflineEnemy`, `:calculateDamageForPowerInBattle`, `:canDepleteEnergy`, `:createHealthIconAndTextGroup`, `:doBigShake`, `:doDefaultHitWithoutBlinkWithDamage`, `:doDefaultHitWithoutBlinkWithoutDamage`, `:doSplashAnimation`, `:getTransitionableBattleObjectsIncludingSkills`, `:optionallyShowOnAfterFruitStolenText`, `:tryDepleteEnergy`, `:tryRecoverDrainedEnergy`, `:tryStealFruit`, `:createEnergyIconAndTextGroup`, `:doDefaultHitWithoutBlinkWithDamageAndFloatingText`, `:doSkillDamages`, `:rollMissedMonsterSprites` ...

### skillPowerBoostStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.singleRound.skillPowerBoostStatus"
- methods: `:new`

### skillSelectScreen

- defined in `classes.require_specific` as module "classes.interface.screens.skillSelectScreen"
- methods: `:getScreen`
- fields: `.skillDescriptionWidth`

### skipMonsterSpriteMove

- defined in `classes.require_specific` as module "classes.battle.moves.skipMonsterSpriteMove"
- methods: `:new`

### sleepable

- defined in `classes.require_core` as module "classes.modules.sleepable"
- methods: `:wrap`, `:run`, `:runner`, `:setShouldCaptureTraceback`

### slideViewOverlayBuilder

- defined in `classes.require_specific` as module "classes.interface.dialog.slideViewOverlayBuilder"
- methods: `:new`

### smarterTrainerAI

- defined in `classes.require_specific` as module "classes.battle.AI.smarterTrainerAI"
- methods: `:new`

### snapshotHelper

- defined in `classes.require_core` as module "classes.modules.snapshotHelper"
- methods: `:new`, `:newAndRecreateIfAndroid`

### snowWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.snowWeatherEffect"
- methods: `:new`

### sortOrders

- defined in `classes.require_specific` as module "classes.spawnables.other.sortOrders"
- fields: `.early`, `.late`, `.normal`, `.veryEarly`

### soundHelper

- defined in `classes.require_core` as module "classes.modules.soundHelper"
- methods: `:playSound`, `:loadSound`, `:playMusic`, `:playIntro`, `:unloadSound`, `:stopSound`, `:resumeMusic`, `:stopMusic`, `:stopMusicIfPlaying`, `:fadeMusicVolumeModifier`, `:getCurrentMusicPath`, `:pauseMusic`, `:setMusicVolume`, `:setSoundVolume`, `:destroySounds`, `:getMusicVolumeModifier`, `:init`, `:pauseSounds`, `:playLoopingStream`, `:playStream`, `:resumeSounds`, `:setChannelVolume`

### sparkWallStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.sparkWallStatus"
- methods: `:new`

### spawnableHelper

- defined in `classes.require_specific` as module "classes.modules.spawnableHelper"
- methods: `:endCutscene`, `:getPlayerSpawnable`, `:startCutscene`, `:destroySpawnable`, `:prepareTeleport`, `:getPlayerSpawnableConstructor`, `:createMagnetObject`, `:getTileInFrontOf`, `:getTileInDirectionOf`, `:findSpawnablesAtTile`, `:resolveUnmountedSpawnable`, `:isColliding`, `:getGenericSpriteMask`, `:getTileInDirectionOfTile`, `:getTileIndexIn`, `:isPlayerCollidingWithObject`, `:findOptionallyNonPrimarySpawnablesAndObjectPropertiesAtTile`, `:isAtSameLocation`, `:modifyGridMoveToLedgeJump`, `:destroySpawnableAndNeverSpawnAgain`, `:findSpawnablesInDirection`, `:findSpawnablesInDirectionUntilBlocking`, `:getRoguePlayerSpawnable`, `:getStepsUntilOutsideBoundary`, `:getStepsUntilTileX`, `:getStepsUntilTileY`

### specialEventHelper

- defined in `classes.require_core` as module "classes.modules.specialEventHelper"
- methods: `:isReleaseDay`, `:isHalloween`, `:isChristmas`, `:isEaster`, `:getAmountOfYearsReleased`, `:isAprilFoolsDay`, `:isKingsDay`, `:isNewYear`, `:isPrideMonth`, `:isSaintPatricksDay`, `:isThanksgivingDay`, `:isValentinesDay`

### spectralLatticeStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.other.spectralLatticeStatus"
- methods: `:new`

### spikeTrapEntryHazard

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.entryHazards.spikeTrapEntryHazard"
- methods: `:new`

### spinnerSwapWorldEffect

- defined in `classes.require_specific` as module "classes.world.effects.world.spinnerSwapWorldEffect"
- methods: `:new`

### spriteAnimation

- defined in `classes.require_core` as module "classes.modules.convenience.spriteAnimation"
- methods: `:sequences`

### spriteEvent

- defined in `classes.require_core` as module "classes.modules.convenience.spriteEvent"
- fields: `.removeSelfOnEnded`, `.onFrame`, `.newSequenceOnEnded`, `.onEnded`, `.synchroniseFrames`, `.onFrameInSequence`, `.onLoop`, `.newStaticSequenceOnEnded`, `.onFrameInSheet`, `.resetOnEnded`, `.synchroniseFramesAndSequences`, `.onLoopX`, `.synchroniseFramesInSequence`, `.synchroniseFramesToMask`, `.newSequenceOnLoop`, `.newSequenceOnLoopX`, `.onFrameChange`, `.setInvisibleOnEnded`, `.synchroniseFramesAndSequencesAndExtend`, `.synchroniseFramesAndSequencesSafe`

### spriteHelper

- defined in `classes.require_core` as module "classes.modules.spriteHelper"
- methods: `:newPlaying`, `:new`, `:nextFrame`, `:newFakeSequence`, `:newAnimatedFill`, `:newWithDisplayObjectSequences`, `:syncSetFrame`, `:mapSpriteFunctionsTo`, `:newFakeSequences`, `:newWithDisplayObjectFrames`, `:previousFrame`, `:syncSetSequenceWithoutReset`, `:unsyncSetFrame`, `:syncSetSequence`, `:unsyncSetSequenceWithoutReset`

### spriteList

- defined in `classes.require_specific` as module "classes.lists.spriteList"
- fields: `.hiddenItemSparkle`

### statBoostStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.statBoostStatus"
- methods: `:new`

### statBoostUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.statBoostUtility"
- methods: `:getFactor`, `:getFactorStringWithColor`

### statUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.statUtility"
- methods: `:getOrderedBaseStats`, `:getStatBoostableStats`, `:getMaxPotentialStat`, `:getOrderedBaseStatsWithoutEnergy`, `:getStatBoostableBaseStats`, `:getLocalised`, `:getColorForStat`, `:getOppositeStatForDefenseOrAttackStat`, `:getOrderedStatBoostableStatsForTwoColumnGrid`

### staticFurStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.staticFurStatus"
- methods: `:new`

### staticHazeWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.staticHazeWeatherEffect"
- methods: `:new`

### stayingFrostyStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.stayingFrostyStatus"
- methods: `:new`

### steamHelper

- defined in `classes.require_core` as module "classes.modules.steamHelper"
- methods: `:isEnabled`, `:getAuthSessionTicket`, `:isSteamDeck`, `:resetAchievements`, `:unlockAchievement`

### sumoStanceStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.sumoStanceStatus"
- methods: `:new`

### superKnockdownStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.other.superKnockdownStatus"
- methods: `:new`

### switchMonsterMove

- defined in `classes.require_specific` as module "classes.battle.moves.switchMonsterMove"
- methods: `:new`

### system

- defined in `classes.definitions.system.def` as table
- fields: `.getTimer`, `.setPreferences`, `.getPreference`, `.getInfo`, `.pathForFile`, `.ResourceDirectory`, `.deletePreferences`, `.TemporaryDirectory`, `.DocumentsDirectory`, `.xor_crypt`, `.activate`, `.deactivate`, `.getInputDevices`, `.newEventDispatcher`, `.b64`, `.getKeyNameForQwertyKeyName`, `.openURL`, `.setIdleTimer`, `.unb64`, `.vibrate`

### systemHelper

- defined in `classes.require_core` as module "classes.modules.systemHelper"
- methods: `:getPathForResourceDirectory`, `:getPathForTemporaryDirectory`, `:getPathForBaseDir`

### table

- defined in `classes.libraries.table` as table
- fields: `.randomKey`, `.getKeys`, `.removeKey`, `.sum`, `.merge`, `.insert`, `.countKeys`, `.countKeysByFunction`, `.filterToKeys`, `.filterToValues`, `.deepclone`, `.findValueByFunction`, `.clone`, `.concat`, `.forEachSorted`, `.remove`, `.getKeysSorted`, `.modifyKeys`, `.sort`, `.findMaxKey`, `.print`, `.flatMap`, `.mapKeysToArray`, `.findKeyByFunction`, `.findKeyByValue`, `.findMaxValue`, `.map`, `.rollKeyFromTotal`, `.equals`, `.mapToArray`, `.processed`, `.filter`, `.filterToValuesSortedByKey`, `.getValues`, `.reverseKeyValue`, `.anyMatches`, `.cloneWithMetatable`, `.deepcloneWithMetatable`, `.deepequals`, `.findMax` ...

### targetingUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.targetingUtility"
- methods: `:isEnemyTargetInBattle`, `:isNoneTarget`, `:getTargetMonsterSprites`, `:isEnemyTargetRandom`, `:shouldSelectTarget`, `:getTargetMonsters`, `:getTargetedMonsterSprites`, `:isEnemyTarget`, `:isEnemyTeamInBattle`, `:isAllInBattle`, `:isEnemyTeam`, `:isSelf`, `:isSelfTarget`, `:isSelfTeam`, `:shouldSelectTargetInBattle`

### textHelper

- defined in `classes.require_core` as module "classes.modules.textHelper"
- methods: `:new`, `:newPrepared`, `:spawnPrepared`, `:width`, `:addCharacterObjectCreateFunction`, `:height`, `:playSoundOnTextChange`, `:typeWriter`, `:escapeParsingCharacters`, `:scrollingTypeWriter`, `:isHindiRightAlignedMarker`, `:setTypeWriterSpeedFactor`, `:copyMissingCharacterObjectCreateFunctionConfigurations`, `:getRenderDependentVowelFunctionFor`, `:getReplaceCharacters`, `:isHindiRightPipeCharacter`, `:unescapeParsingCharacters`

### textureCacheHelper

- defined in `classes.require_core` as module "classes.modules.textureCacheHelper"
- methods: `:getOrCreateImageTexture`, `:releaseTextures`

### threeFrameImageBuilder

- defined in `classes.require_core` as module "classes.modules.interface.threeFrameImageBuilder"
- methods: `:new`, `:newObject`, `:newRepeated`

### tiledLayers

- defined in `classes.require_specific` as module "classes.modules.tiledLayers"
- methods: `:highestNonStickToScreen`, `:highestAboveFloor`, `:highest`, `:highestFloor`, `:highestAboveFloorName`, `:highestAbovePlayer`, `:highestAbovePlayerName`, `:highestFloorName`, `:highestLevel`, `:highestLevelName`, `:highestName`, `:highestNonStickToScreenName`

### timeHelper

- defined in `classes.require_core` as module "classes.modules.timeHelper"
- methods: `:startOfCurrentHour`, `:startOfCurrentDay`

### timer

- defined in `classes.libraries.timer` as table
- defined in `classes.require_core` as module "classes.libraries.timer"
- fields: `.delay`, `.performWithDelay`, `.cancel`, `.performWithDelayAndNow`, `.pause`, `.performWithRandomDelay`, `.cancelAll`, `.resume`, `.toggle`, `.performWithDelayArray`, `.isPaused`, `.performWithRandomDelayAndNow`, `.toggleWithOnComplete`, `.performWithDelayIgnoringTimescale`, `.atleast`, `.blockingDelay`, `.toggleVisibility`

### titanEncounterOverlayBuilder

- defined in `classes.require_specific` as module "classes.interface.battle.encounterOverlays.titanEncounterOverlayBuilder"
- methods: `:new`

### titanParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.titanParticipant"
- methods: `:new`

### titleScreen

- defined in `classes.require_specific` as module "classes.interface.screens.titleScreen"
- defined in `main` as module "classes.interface.screens.titleScreen"
- methods: `:new`, `:addGameSettingsMigrationTitleScreenMessage`

### touches

- defined in `classes.require_core` as module "classes.modules.convenience.touches"
- methods: `:simulateClick`
- fields: `.passFocusAfterMoveY`, `.doClick`, `.holdDuration_short`, `.holdDuration_medium`, `.doClickPress`, `.doClickReleaseInsideBounds`, `.passFocusAfterMove`, `.holdDuration_long`, `.ifMovedAtLeast`, `.ifMovedAtLeastY`, `.loseFocusAfterMove`

### trainerEncounterOverlayBuilder

- defined in `classes.require_specific` as module "classes.interface.battle.encounterOverlays.trainerEncounterOverlayBuilder"
- methods: `:new`

### trainerHubUtility

- defined in `classes.require_specific` as module "classes.maps.trainerHubUtility"
- methods: `:extendSpecialEvents`, `:getTrainerHubAnswers`
- fields: `.ED_CONSECUTIVE_WINS`

### traitRerollWorldEffect

- defined in `classes.require_specific` as module "classes.world.effects.world.traitRerollWorldEffect"
- methods: `:new`

### traitUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.traitUtility"
- methods: `:getNameForEnhancementStage`, `:getDescriptionForEnhancementStage`, `:hasTraitEnhancement`

### transition

- defined in `classes.require_core` as module "classes.libraries.transition"
- methods: `:createRightToLeftAwareTransition`
- fields: `.to`, `.toDelta`, `.fadeOut`, `.timeShake`, `.fadeIn`, `.removeSelf`, `.doRemoveSelf`, `.path`, `.frameShake`, `.cancel`, `.show`, `.wiggle`, `.number`, `.fromDelta`, `.toBottomOrFadeOut`, `.color`, `.fromBottomOrFadeIn`, `.cancelAll`, `.toRightOrFadeOut`, `.fromRight`, `.fromRightOrFadeIn`, `.press`, `.toLeft`, `.toRight`, `.withDelayOrImmediate`, `.from`, `.fromTopOrFadeIn`, `.pause`, `.resume`, `.toTopOrFadeOut`, `.isTransitioning`, `.cancelRecursive`, `.createWiggleSynchronizer`, `.grow`, `.numberAndNow`, `.fromBottom`, `.fromLeft`, `.onBeforeSetPropertySetValue`, `.toBottom`, `.toMagnetX` ...

### transitionRightToLeftAware

- defined in `classes.require_core` as value
- fields: `.fromRightOrFadeIn`, `.toRightOrFadeOut`, `.fromLeftOrFadeIn`, `.fromRight`, `.toLeftOrFadeOut`, `.toDelta`, `.toRight`

### trappedStatus

- defined in `classes.require_specific` as module "classes.battle.statuses.monster.multiRound.trappedStatus"
- methods: `:new`

### twilightWeatherEffect

- defined in `classes.require_specific` as module "classes.battle.statuses.battle.weatherEffects.twilightWeatherEffect"
- methods: `:new`

### twoFrameImageBuilder

- defined in `classes.require_core` as module "classes.modules.interface.twoFrameImageBuilder"
- methods: `:new`

### typeUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.typeUtility"
- methods: `:createTypeIconOrUnknownIcon`

### urlHelper

- defined in `classes.require_specific` as module "classes.modules.urlHelper"
- methods: `:encode`, `:tableToParamString`

### usableItemMove

- defined in `classes.require_specific` as module "classes.battle.moves.usableItemMove"
- methods: `:new`

### utf8

- defined in `classes.require_core` as module "classes.libraries.utf8"
- fields: `.upper`, `.gmatch`, `.gsub`, `.len`, `.format`, `.sub`, `.width`, `.byte`, `.reverse`, `.capitalise`, `.lower`, `.toNumber`

### vararg

- defined in `classes.require_core` as module "classes.libraries.vararg"
- fields: `.concat`, `.concatSafe`, `.countNonNil`

### verticalNavigationBuilder

- defined in `classes.require_core` as module "classes.modules.navigation.verticalNavigationBuilder"
- methods: `:new`

### vibrateHelper

- defined in `classes.require_specific` as module "classes.modules.vibrateHelper"
- methods: `:vibrate`

### volcanoCaveUtility

- defined in `classes.require_specific` as module "classes.maps.volcano.volcanoCaveUtility"
- methods: `:createOptionalFloorQuestionCutscene`, `:didSpawnAtEnd`

### waterTownUtility

- defined in `classes.require_specific` as module "classes.maps.waterTown.waterTownUtility"
- methods: `:isChalchiuCorruptedByCrimsonite`

### worldBattleDomeTokens

- defined in `classes.require_specific` as module "classes.world.worldBattleDomeTokens"
- methods: `:updateBattleDomeTokensIndicatorTextAnimated`, `:showOnDefaultLayer`, `:showOnAboveOverlayLayer`, `:createInstance`, `:hide`

### worldBattleEffect

- defined in `classes.require_specific` as module "classes.world.worldBattleEffect"
- methods: `:new`

### worldBattleEnvironment

- defined in `classes.require_specific` as module "classes.world.worldBattleEnvironment"
- methods: `:createInstance`, `:get`, `:isCreated`, `:createInstanceForHexagonWorld`, `:destroy`

### worldCinematicOverlay

- defined in `classes.require_specific` as module "classes.world.worldCinematicOverlay"
- methods: `:createInstance`

### worldCrimsoniteHeatMeter

- defined in `classes.require_specific` as module "classes.world.worldCrimsoniteHeatMeter"
- methods: `:createInstance`, `:destroy`, `:onAfterStepOnCrimsoniteHeatedWaterArea`, `:setHeat`

### worldDarkness

- defined in `classes.require_specific` as module "classes.world.worldDarkness"
- methods: `:createInstance`, `:isCreated`, `:destroy`

### worldDebugMapPresetSelect

- defined in `classes.require_debug` as module "classes.debug.worldInterface.worldDebugMapPresetSelect"
- methods: `:showPresets`

### worldDesertRouteHeatMeter

- defined in `classes.require_specific` as module "classes.world.worldDesertRouteHeatMeter"
- methods: `:getHeat`, `:decreaseHeat`, `:createInstance`, `:decreaseHeatAnimated`, `:increaseHeat`, `:isCreated`, `:onAfterStepOnDesertRouteSandArea`, `:setHeat`

### worldDesertShadow

- defined in `classes.require_specific` as module "classes.world.worldDesertShadow"
- methods: `:isCreated`

### worldDungeon

- defined in `classes.require_specific` as module "classes.world.worldDungeon"
- methods: `:createInstance`

### worldDungeonDrips

- defined in `classes.require_specific` as module "classes.world.worldDungeonDrips"
- methods: `:createInstance`, `:isCreated`

### worldHelper

- defined in `classes.require_specific` as module "classes.world.worldHelper"
- methods: `:getSpawnableByName`, `:getWorldMapData`, `:createInstance`, `:unloadMapWithTransition`, `:spawnDelayedSpawnable`, `:getMapFile`, `:getEventDispatcher`, `:pause`, `:getSpawnablesByInstanceOf`, `:isCreated`, `:addOnDestroyFunction`, `:getSpawnableById`, `:resume`, `:destroy`, `:getMapPath`, `:getMapLoadSpawnLocation`, `:getLocation`, `:getAllSpawnables`, `:spawnSpawnable`, `:isPaused`, `:getLocationObject`, `:getWorldLocation`, `:spawnPropertiesWithClass`, `:addOnPauseFunction`, `:addOnResumeFunction`, `:addOnUpdateFunction`, `:deleteSpawnable`, `:getLocationObjects`, `:hasDispatchedBeforeLoadTransition`, `:save`
- fields: `.unloadMapWithTransition`, `.getAllSpawnables`

### worldInterface

- defined in `classes.require_specific` as module "classes.world.worldInterface"
- methods: `:createItemPopup`, `:startNewChapterAndShowIndicator`, `:createMonsterPopup`, `:completeQuestAndShowIndicator`, `:startQuestAndShowIndicator`, `:isCreated`, `:showCheckpointIndicatorIfNotVisitedCurrentMap`, `:isShown`, `:refreshGauntletButtonIcon`, `:addRecallLocationAndShowIndicator`, `:destroy`, `:createPhoneMessagePopup`, `:hide`, `:createMapNamePopup`, `:show`, `:updateInteractButton`, `:createGauntletModuleInstalledPopup`, `:getInputNavigation`, `:getWarningSaveBlockedMessageToastOptions`, `:refreshBindItemIcon`, `:showCheckpointIndicator`, `:createInstance`, `:createItemPopupWithoutAdjustingInventory`, `:getPauseButton`, `:isInteractButtonPressed`, `:onAfterLoadTransition`, `:showQuestUpdatedIndicator`, `:startAdjusting`, `:updateGauntletModuleCooldownScale`
- fields: `.warningBindItemMessageToastOptions`, `.infoBindItemMessageToastOptions`

### worldLocationList

- defined in `classes.require_specific` as module "classes.lists.worldLocationList"
- fields: `.luxSolisTown`

### worldLocationUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.worldLocationUtility"
- methods: `:getLocalised`, `:createIcon`, `:createAnimatedIcon`

### worldMapDataUtility

- defined in `classes.require_specific` as module "classes.modules.utilities.worldMapDataUtility"
- methods: `:new`

### worldMapScreen

- defined in `classes.require_specific` as module "classes.interface.screens.worldMapScreen"
- methods: `:getScreenForPauseMenu`, `:getScreenForLuxRecallPremium`, `:getScreenForLuxTeleporter`

### worldMescherRealmLightSoulFlasks

- defined in `classes.require_specific` as module "classes.world.worldMescherRealmLightSoulFlasks"
- methods: `:createInstance`, `:fillNextFlask`

### worldOverlay

- defined in `classes.require_specific` as module "classes.world.worldOverlay"
- methods: `:createInstance`, `:get`, `:createInstanceAndShow`, `:destroy`
- fields: `.SLIGHTLY_DARK`, `.MESCHER_REALM`, `.HEATED`, `.LIGHTS_OFF`

### worldRain

- defined in `classes.require_specific` as module "classes.world.worldRain"
- methods: `:createInstance`

### worldSaveBlocker

- defined in `classes.require_specific` as module "classes.world.worldSaveBlocker"
- methods: `:isCreated`

### worldSnow

- defined in `classes.require_specific` as module "classes.world.worldSnow"
- methods: `:createInstance`, `:enableCrimsoniteSnow`

### worldSounds

- defined in `classes.require_specific` as module "classes.world.worldSounds"
- methods: `:load`

### worldThunder

- defined in `classes.require_specific` as module "classes.world.worldThunder"
- methods: `:createInstanceIfNotDefeatedElectricTitanOrStartedBattleDomeSession`, `:singleThunder`, `:turboCharge`, `:addThunderAlphaListener`, `:addThunderListener`, `:destroy`, `:isCreated`, `:pause`

### worldThunderFlash

- defined in `classes.require_specific` as module "classes.world.worldThunderFlash"
- methods: `:createInstanceIfNotDefeatedElectricTitan`

### worldTransitions

- defined in `classes.require_specific` as module "classes.modules.worldTransitions"
- methods: `:hideBlackRectangle`, `:inTransition`, `:showBlackRectangle`, `:outTransition`, `:hideWhiteRectangle`, `:inTransitionAndHideBlackRectangle`, `:wrapWithRogueDayOutTransition`

### xml

- defined in `main` as module "classes.modules.xml"
- methods: `:decode`

### zoneParticipant

- defined in `classes.require_specific` as module "classes.battle.participants.zoneParticipant"
- methods: `:new`

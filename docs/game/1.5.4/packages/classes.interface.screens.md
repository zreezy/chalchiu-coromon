# classes.interface.screens

Coromon 1.5.4. 32 module(s). [Back to index](../README.md)

[BattleDomeScreen](#battledomescreen), [CustomDifficultyScreen](#customdifficultyscreen), [GetFullGameScreen](#getfullgamescreen), [IAPShopProductScreen](#iapshopproductscreen), [IAPShopScreen](#iapshopscreen), [MonsterSpriteSkinMilestoneScreen](#monsterspriteskinmilestonescreen), [OnlineAvatarScreen](#onlineavatarscreen), [OnlineMatchmakingScreen](#onlinematchmakingscreen), [OnlineMenuScreen](#onlinemenuscreen), [OnlineSelectMonsterOrderScreen](#onlineselectmonsterorderscreen), [OnlineSelectSquadScreen](#onlineselectsquadscreen), [OnlineStyleScreen](#onlinestylescreen), [RogueBudgetAllocationScreen](#roguebudgetallocationscreen), [RogueCharacterScreen](#roguecharacterscreen), [RogueStartExpeditionScreen](#roguestartexpeditionscreen), [SaveslotClustersScreen](#saveslotclustersscreen), [SquadScreen](#squadscreen), [createCharacterScreen](#createcharacterscreen), [debugBurnConditionConfigScreen](#debugburnconditionconfigscreen), [debugMapSelectScreen](#debugmapselectscreen), [debugQuestStateScreen](#debugqueststatescreen), [fruitDroneScreen](#fruitdronescreen), [itemScreen](#itemscreen), [logbookScreen](#logbookscreen), [milestoneScreen](#milestonescreen), [monsterDatabaseScreen](#monsterdatabasescreen), [monsterStorageScreen](#monsterstoragescreen), [monsterSummaryScreen](#monstersummaryscreen), [settingsScreen](#settingsscreen), [skillSelectScreen](#skillselectscreen), [titleScreen](#titlescreen), [worldMapScreen](#worldmapscreen)

### BattleDomeScreen

`classes.interface.screens.BattleDomeScreen`

- returns `Screen`
- requires: `classes.interface.overlays.BattleDomeDifficultyPopup`, `classes.interface.settingObjects.SettingsScreen.ReducedRandomnessInBattlesPopupButton`, `classes.interface.PauseMenuBottomBar`

- `BattleDomeScreen:resolveBottomBarHeightReduction(screenParams)`
- `BattleDomeScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### CustomDifficultyScreen

`classes.interface.screens.CustomDifficultyScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.settingObjects.SettingObjectHelper`, `classes.modules.PlayerSettingsDifficultyObject`, `classes.interface.settingObjects.CustomDifficultyScreen.RecoverEnergyOnLevelUpCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.RecoverHealthOnLevelUpCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.CheaperShopCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.AllowReviveByCakeCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.LimitTrainerHubRecoveriesStepper`, `classes.interface.settingObjects.CustomDifficultyScreen.DisableHoldItemsCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.DisableRecallItemsCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.SmarterMonsterAICheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.SmarterTrainerAICheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.DisableEscapeBattleCommandCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.ReleaseMonsterOnFaintCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.LimitItemsInBattleStepper`, `classes.interface.settingObjects.CustomDifficultyScreen.RestrictLevelToUpcomingTitanLevelCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.CatchingRuleEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.PreventCatchingDuplicateMonsterFamiliesCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeItemsCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.MutateWildMonsterLevelsByPercentageStepper`, `classes.interface.settingObjects.CustomDifficultyScreen.MutateTrainerMonsterLevelsByPercentageStepper`, `classes.interface.settingObjects.CustomDifficultyScreen.MutateTitanLevelsByPercentageStepper`, `classes.interface.settingObjects.CustomDifficultyScreen.ShiftMonsterLevelsStepper`, `classes.interface.settingObjects.CustomDifficultyScreen.ConvertEveryMonsterSpriteToSwurmyCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeTraitsCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeEvolutionsModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeSkillsModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeTypesModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeQuestMonstersModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeStartersModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeTrainerMonstersModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeEncounterZonesModeEnumButton`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizeTitansCheckbox`, `classes.interface.settingObjects.CustomDifficultyScreen.RandomizationSeedKeyboardButton`

- `CustomDifficultyScreen:getScreenClosable()`
- `CustomDifficultyScreen:getScreenNonClosable()`
- `CustomDifficultyScreen:resolveBottomBarHeightReduction(screenParams)`
- `CustomDifficultyScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:getSettingsScrollViewContentGroupByTabIndex(_index)`
- `onTabSelectionChangedFunctions.confirm(_isTabSelected)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### GetFullGameScreen

`classes.interface.screens.GetFullGameScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.RestorePurchasesConfirmPopup`, `classes.interface.UIClock`

- `GetFullGameScreen:ensureIAPProduct(_onBeforeErrorMessage, _onSuccess, _onAfterErrorMessage)`
- `GetFullGameScreen:getScreen(_unlockFullGameIAP, _onBoughtFullGame)`
- `GetFullGameScreen:resolveBottomBarHeightReduction(screenParams)`
- `GetFullGameScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### IAPShopProductScreen

`classes.interface.screens.IAPShopProductScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.UIFadeBuilder`, `classes.modules.interface.scrollViewBuilder`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`, `classes.interface.PauseMenuBottomBar`

- `IAPShopProductScreen:getScreen(_productCategory)`
- `IAPShopProductScreen:resolveBottomBarHeightReduction(screenParams)`
- `IAPShopProductScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### IAPShopScreen

`classes.interface.screens.IAPShopScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.PauseMenuBottomBar`

- `IAPShopScreen:ensureProductsOrShowError(_onBeforeErrorMessage, _onSuccess, _onAfterErrorMessage)`
- `IAPShopScreen:getScreen()`
- `IAPShopScreen:resolveBottomBarHeightReduction(screenParams)`
- `IAPShopScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### MonsterSpriteSkinMilestoneScreen

`classes.interface.screens.MonsterSpriteSkinMilestoneScreen`

- returns `Screen`
- requires: `classes.interface.navBarObjects.topBarObjects.innerTopBarMonsterSpriteSkinCollectedCounter`, `classes.interface.MonsterSpriteSkinMilestoneDetailsContainer`

- `MonsterSpriteSkinMilestoneScreen:getScreenForViewing()`
- `MonsterSpriteSkinMilestoneScreen:resolveBottomBarHeightReduction(screenParams)`
- `MonsterSpriteSkinMilestoneScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:setMonsterSpriteSkinMilestoneDetails(_monsterSpriteSkin)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### OnlineAvatarScreen

`classes.interface.screens.OnlineAvatarScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.OnlineAvatarPopup`, `classes.interface.UIFadeBuilder`, `classes.modules.interface.scrollViewBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.interface.PauseMenuBottomBar`

- `OnlineAvatarScreen:getScreenForMode(_mode)`
- `OnlineAvatarScreen:resolveBottomBarHeightReduction(screenParams)`
- `OnlineAvatarScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### OnlineMatchmakingScreen

`classes.interface.screens.OnlineMatchmakingScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.settingObjects.SettingObjectHelper`, `classes.interface.dialog.dialogAnswersOverlayBuilder`, `classes.interface.overlays.OnlineLeaderboardsOverlay`, `classes.interface.overlays.OnlineActiveSeasonRewardsPopup`, `classes.interface.PauseMenuBottomBar`, `classes.interface.settingObjects.OnlineMatchmakingScreen.SquadSizeStepper`, `classes.interface.settingObjects.OnlineMatchmakingScreen.SetMonstersToLevel50Checkbox`, `classes.interface.settingObjects.OnlineMatchmakingScreen.AllowDuplicateMonstersCheckbox`, `classes.interface.settingObjects.OnlineMatchmakingScreen.AllowDuplicateHoldItemsCheckbox`

- `OnlineMatchmakingScreen:getScreenOrShowOnlineSquadErrorsFor(_onlineMatchmakingMode, _onNoError)`
- `OnlineMatchmakingScreen:getScreenFor(_onlineMatchmakingMode)`
- `OnlineMatchmakingScreen:restoreStateBeforeLastBattle(_automaticallyStartMatchmaking, _onShow)`
- `OnlineMatchmakingScreen:resolveBottomBarHeightReduction(screenParams)`
- `OnlineMatchmakingScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `onlineTierButton:refreshTierValue(_newValue)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### OnlineMenuScreen

`classes.interface.screens.OnlineMenuScreen`

- returns `Screen`
- requires: `classes.interface.overlays.OnlineMenuScreenOnlineMatchmakingModeSelectOverlay`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.OnlineLeaderboardsOverlay`, `classes.interface.settingObjects.SettingsScreen.ReducedRandomnessInBattlesPopupButton`, `classes.interface.PauseMenuBottomBar`

- `OnlineMenuScreen:resolveBottomBarHeightReduction(screenParams)`
- `OnlineMenuScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:getCasualMatchmakingButton()`
- `parentGroup:getRankedMatchmakingButton()`
- `parentGroup:getLeaderboardsButton()`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### OnlineSelectMonsterOrderScreen

`classes.interface.screens.OnlineSelectMonsterOrderScreen`

- returns `Screen`
- requires: `classes.interface.OnlineSquadMonsterButton`, `classes.interface.overlays.SelectableOnlineSquadMonsterButtonActionMenuOverlay`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.MessageToast`, `classes.interface.overlays.baseOverlayBuilder`, `classes.interface.overlays.OnlineSeasonRankPopup`, `classes.interface.overlays.OnlineBattleLostOverlay`, `classes.interface.overlays.OnlineBattleWinnerOverlay`, `classes.interface.PauseMenuBottomBar`

- `OnlineSelectMonsterOrderScreen:resolveBottomBarHeightReduction(screenParams)`
- `OnlineSelectMonsterOrderScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (9)</summary>

- `parentGroup:getPlayerOnlineSquadMonsterButtons()`
- `parentGroup:getPlayerOnlineSquadMonsters()`
- `parentGroup:getAmountOfMonstersToSelect()`
- `parentGroup:refreshPlayerSelectedMonsterText()`
- `parentGroup:doTransitionToArenaSequence()`
- `parentGroup:loadArenaAndClosePauseMenu(_battleEnvironment)`
- `parentGroup:showBattleEndedMessageAndReturnToMatchmakingScreen()`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### OnlineSelectSquadScreen

`classes.interface.screens.OnlineSelectSquadScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.OnlineSquadMonsterButton`, `classes.interface.overlays.OnlineSquadMonsterButtonActionPopup`, `classes.interface.PauseMenuBottomBar`

- `OnlineSelectSquadScreen:getScreenForEditing(_category)`
- `OnlineSelectSquadScreen:getScreenForSelectingOnline(_onlineMatchmakingMode, _onAfterSelection)`
- `OnlineSelectSquadScreen:getScreenForSelectingBattleDome(_battleDomeMode, _battleDomeDifficulty, _onAfterSelection)`
- `OnlineSelectSquadScreen:resolveBottomBarHeightReduction(screenParams)`
- `OnlineSelectSquadScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:getOnlineSquad(_onlineSquadIndex)`
- `parentGroup:getOnlineSquadMonsterButton(_onlineSquadIndex, _onlineSquadEntryIndex)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### OnlineStyleScreen

`classes.interface.screens.OnlineStyleScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.settingObjects.SettingObjectHelper`, `classes.interface.PauseMenuBottomBar`, `classes.interface.settingObjects.OnlineStyleScreen.OnlineAvatarPopupButtons`, `classes.interface.settingObjects.OnlineStyleScreen.OnlineProfileNameKeyboardOverlayButton`, `classes.interface.settingObjects.OnlineStyleScreen.OnlineBattleMusicEnumButton`, `classes.interface.settingObjects.OnlineStyleScreen.OnlineBattleEnvironmentEnumButton`, `classes.interface.settingObjects.OnlineStyleScreen.OnlineWinBattleTauntEnumButton`

- `OnlineStyleScreen:resolveBottomBarHeightReduction(screenParams)`
- `OnlineStyleScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### RogueBudgetAllocationScreen

`classes.interface.screens.RogueBudgetAllocationScreen`

- returns `Screen`
- requires: `classes.interface.PauseMenuBottomBar`

- `RogueBudgetAllocationScreen:resolveScreenForState()`
- `RogueBudgetAllocationScreen:getScreenForViewing()`
- `RogueBudgetAllocationScreen:getScreenForEditing()`
- `RogueBudgetAllocationScreen:resolveBottomBarHeightReduction(screenParams)`
- `RogueBudgetAllocationScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### RogueCharacterScreen

`classes.interface.screens.RogueCharacterScreen`

- returns `Screen`
- requires: `classes.interface.rogueCharacterXpBarBuilder`, `classes.interface.PauseMenuBottomBar`

- `RogueCharacterScreen:resolveBottomBarHeightReduction(screenParams)`
- `RogueCharacterScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### RogueStartExpeditionScreen

`classes.interface.screens.RogueStartExpeditionScreen`

- returns `Screen`
- requires: `classes.interface.PauseMenuBottomBar`

- `RogueStartExpeditionScreen:resolveBottomBarHeightReduction(screenParams)`
- `RogueStartExpeditionScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### SaveslotClustersScreen

`classes.interface.screens.SaveslotClustersScreen`

- returns `Screen`
- requires: `classes.interface.SaveslotMetadataContainer`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.PauseMenuBottomBar`

- `SaveslotClustersScreen:getScreenForTitleScreen(_saveslotClustersPerDeviceId, _onStartOrLoadGame)`
- `SaveslotClustersScreen:resolveBottomBarHeightReduction(screenParams)`
- `SaveslotClustersScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### SquadScreen

`classes.interface.screens.SquadScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.TallMonsterButton`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.moveHoldItemPopupBuilder`, `classes.interface.overlays.pauseMenuScreenMonsterActionMenuOverlayBuilder`, `classes.interface.navBarObjects.bottomBarObjects.innerBottomBarTipText`, `classes.interface.PauseMenuBottomBar`

- `SquadScreen:resolveBottomBarHeightReduction(screenParams)`
- `SquadScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getTallMonsterButtons()`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### createCharacterScreen

`classes.interface.screens.createCharacterScreen`

- returns `Screen`
- requires: `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.MessagePopup`

- `createCharacterScreen:getScreenForAppearanceKit()`
- `createCharacterScreen:getScreenForClothing()`
- `createCharacterScreen:getScreenForGauntlet()`
- `createCharacterScreen:getScreenForCharacterInitialisation(_onBeforeInitialSave)`
- `createCharacterScreen:getScreenForCharacterInitialisationInWorldDebug()`
- `createCharacterScreen:resolveBottomBarHeightReduction(screenParams)`
- `createCharacterScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:createRandomCharacterConfig()`
- `parentGroup:setDataInCurrentCharacterGridView(_data)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### debugBurnConditionConfigScreen

`classes.interface.screens.debugBurnConditionConfigScreen`

- returns `Screen`
- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.interface.PauseMenuBottomBar`

- `debugBurnConditionConfigScreen:getScreenForMonster(_monsterUID, _monsterSpriteSkinUID, _monsterSide)`
- `debugBurnConditionConfigScreen:resolveBottomBarHeightReduction(screenParams)`
- `debugBurnConditionConfigScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### debugMapSelectScreen

`classes.interface.screens.debugMapSelectScreen`

- returns `Screen`
- requires: `classes.interface.PauseMenuBottomBar`

- `debugMapSelectScreen:getScreen(_params)`
- `debugMapSelectScreen:resolveBottomBarHeightReduction(screenParams)`
- `debugMapSelectScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### debugQuestStateScreen

`classes.interface.screens.debugQuestStateScreen`

- returns `Screen`
- requires: `classes.interface.PauseMenuBottomBar`

- `debugQuestStateScreen:getScreenForQuest(_questUID)`
- `debugQuestStateScreen:resolveBottomBarHeightReduction(screenParams)`
- `debugQuestStateScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### fruitDroneScreen

`classes.interface.screens.fruitDroneScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessageToast`, `classes.interface.screens.itemScreen`, `classes.interface.PauseMenuBottomBar`

- `fruitDroneScreen:getScreenForFruitDrone(_onItemUpdate)`
- `fruitDroneScreen:resolveBottomBarHeightReduction(screenParams)`
- `fruitDroneScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:setSelectedFruitGrowingPot(_fruitGrowingPotLongName)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### itemScreen

`classes.interface.screens.itemScreen`

- returns `Screen`

- `itemScreen:getScreenForInventory(_items)`
- `itemScreen:getScreenParamsForInventoryOnHold(_items)`
- `itemScreen:getScreenForLuxWardrobe(_items)`
- `itemScreen:getScreenForBuying(_items, _onBuy)`
- `itemScreen:getScreenForSelling(_items)`
- `itemScreen:getScreenForBindItemSelection(_items, _onBindItemSelected)`
- `itemScreen:getScreenForSpinnerSwap(_items, _onSpinnerAndMonsterSelected)`
- `itemScreen:getScreenForHoldItemSelection(_items, _holdItemMonster, _onBeforeHoldItemSelectMessage, _onHoldItemSelected)`
- `itemScreen:getScreenForSettingHoldItemOnMonster(_items, _holdItemMonster)`
- `itemScreen:getScreenForPowerTowerFuses(_items, _onPowerTowerFuseSelected)`
- `itemScreen:getScreenForPyramidTableRiddleStatue(_items, _onPyramidGemSelected)`
- `itemScreen:getScreenForFruitGrowingPot(_items, _onUseFruit, _isFromFruitDroneScreen)`
- `itemScreen:getScreenForBattle(_items, _participant, _shouldSelectLastSelectedItem, _selectedTabIndex, _selectedTabCategory)`
- `itemScreen:resolveBottomBarHeightReduction(screenParams)`
- `itemScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:setItem(_item)`
- `parentGroup:setEmptyState()`
- `parentGroup:refreshTabBar(_preferredTabIndex)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### logbookScreen

`classes.interface.screens.logbookScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.modules.PlayerSettingsDifficultyObject`, `classes.interface.navBarObjects.topBarObjects.innerTopBarAchievementsCounter`, `classes.interface.AchievementIcon`

- `logbookScreen:resolveBottomBarHeightReduction(screenParams)`
- `logbookScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (7)</summary>

- `groupedHiddenAchievements:getLocalisedValue()`
- `groupedHiddenAchievements:createUnachievedIcon(_parent)`
- `groupedHiddenAchievements:createAchievedIcon(_parent)`
- `groupedHiddenAchievements:isAchieved()`
- `groupedHiddenAchievements:getProgress()`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### milestoneScreen

`classes.interface.screens.milestoneScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`, `classes.interface.LuxSolisBenefitContainer`, `classes.interface.navBarObjects.topBarObjects.outerTopBarClaimAllButtonBuilder`, `classes.interface.navBarObjects.topBarObjects.outerTopBarLuxSolisRankBuilder`, `classes.interface.PauseMenuBottomBar`

- `milestoneScreen:ensureStaticMilestones(_onBeforeErrorMessagePopup, _onAfterErrorMessagePopup, _onSuccess)`
- `milestoneScreen:getScreenForMilestones()`
- `milestoneScreen:getScreenForBattleDomeStars()`
- `milestoneScreen:resolveBottomBarHeightReduction(screenParams)`
- `milestoneScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (6)</summary>

- `onTabSelectionChangedFunctions.milestones()`
- `onTabSelectionChangedFunctions.luxSolisRank()`
- `parentGroup:refreshMilestonesTabIndicator()`
- `parentGroup:refreshLuxSolisRankTabIndicator()`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### monsterDatabaseScreen

`classes.interface.screens.monsterDatabaseScreen`

- returns `Screen`
- requires: `classes.interface.BattleEnvironmentPreview`, `classes.interface.overlays.TraitEnhancementStagesPopup`, `classes.interface.navBarObjects.bottomBarObjects.innerBottomBarTabBar`, `classes.interface.PauseMenuBottomBar`

- `monsterDatabaseScreen:getScreen()`
- `monsterDatabaseScreen:getScreenWithActiveViewMode(_viewMode)`
- `monsterDatabaseScreen:getScreenForMonster(_monsterData, _monsterPotentialCategory)`
- `monsterDatabaseScreen:resolveBottomBarHeightReduction(screenParams)`
- `monsterDatabaseScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:setMonster(_monsterData)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### monsterStorageScreen

`classes.interface.screens.monsterStorageScreen`

- returns `Screen`
- requires: `classes.interface.overlays.MessageToast`, `classes.interface.ColoredMonsterTypesInnerContainer`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.overlays.monsterStorageScreenMonsterActionPopupBuilder`, `classes.modules.utilities.monsterUtility`

- `monsterStorageScreen:getScreenForWithdraw(_isRemoteMonsterStorage)`
- `monsterStorageScreen:getScreenForSelection(_isOnline, _onBeforeMonsterSelect, _onMonsterSelect)`
- `monsterStorageScreen:resolveBottomBarHeightReduction(screenParams)`
- `monsterStorageScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:setMonster(_monster)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### monsterSummaryScreen

`classes.interface.screens.monsterSummaryScreen`

- returns `Screen`
- requires: `classes.interface.TallMonsterButton`, `classes.modules.interface.slideViewBuilder`

- `monsterSummaryScreen:getScreenEditable(_monsters, _monster, _onSelectedMonsterChanged)`
- `monsterSummaryScreen:getScreenForMonsterEditable(_monster)`
- `monsterSummaryScreen:getScreenNonEditable(_monsters, _monster, _onSelectedMonsterChanged)`
- `monsterSummaryScreen:getScreenForMonsterNonEditable(_monster, _isOnline)`
- `monsterSummaryScreen:getScreenForOnlineSquadEditable(_monsters, _monster, _isInBattleDome, _onBeforeHoldItemSelectMessage, _onHoldItemSelected, _onSelectedSkillsChanged, _onSelectedMonsterChanged, _onMonsterSpriteSkinChanged, _onVisualPotentialCategoryChanged)`
- `monsterSummaryScreen:resolveBottomBarHeightReduction(screenParams)`
- `monsterSummaryScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (9)</summary>

- `monsterSlideContainer:getMonsterIdentifier()`
- `monsterSlideContainer:refresh()`
- `monsterSlideContainer:updatePotentialStatValue()`
- `monsterSlideContainer:showPotentialStatValue()`
- `monsterSlideContainer:hidePotentialStatValue()`
- `parentGroup:refreshMonsterAvatars()`
- `parentGroup:refreshTabDetailsContainer(_index, _slideShownFromAbove, _slideShownFromBelow)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### settingsScreen

`classes.interface.screens.settingsScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.settingObjects.SettingObjectHelper`, `classes.interface.settingObjects.SettingsScreen.SoundSlider`, `classes.interface.settingObjects.SettingsScreen.MusicSlider`, `classes.interface.settingObjects.SettingsScreen.LanguageSelectPopupButton`, `classes.interface.settingObjects.SettingsScreen.PlayerPronounSelectOverlayButton`, `classes.interface.settingObjects.SettingsScreen.EnglishJargonMessagePopupButton`, `classes.interface.settingObjects.SettingsScreen.EnglishJargonCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShareInformationCheckbox`, `classes.interface.settingObjects.SettingsScreen.EnableOnlineSaveCheckbox`, `classes.interface.settingObjects.SettingsScreen.SilenceOnlineSaveErrorCheckbox`, `classes.interface.settingObjects.SettingsScreen.OnlineLinkPopupButton`, `classes.interface.settingObjects.SettingsScreen.GamePushNotificationsCheckbox`, `classes.interface.settingObjects.SettingsScreen.CoroNetPushNotificationsCheckbox`, `classes.interface.settingObjects.SettingsScreen.SaveslotIdentifierMessagePopupButton`, `classes.interface.settingObjects.SettingsScreen.CodeRedeemButton`, `classes.interface.settingObjects.SettingsScreen.ScreenshotModeButton`, `classes.interface.settingObjects.SettingsScreen.AppVersionText`, `classes.interface.settingObjects.SettingsScreen.CustomInputDeviceConfigButton`, `classes.interface.settingObjects.SettingsScreen.KeyboardControlsPopupButton`, `classes.interface.settingObjects.SettingsScreen.FullscreenCheckbox`, `classes.interface.settingObjects.SettingsScreen.WindowScaleSlider`, `classes.interface.settingObjects.SettingsScreen.SafeAreaConfigButton`, `classes.interface.settingObjects.SettingsScreen.ReduceFlashesCheckbox`, `classes.interface.settingObjects.SettingsScreen.WorldInterfaceConfigButton`, `classes.interface.settingObjects.SettingsScreen.PreventGlitchesCheckbox`, `classes.interface.settingObjects.SettingsScreen.TipsAndTricksPopupButton`, `classes.interface.settingObjects.SettingsScreen.CreditsOverlayButton`, `classes.interface.settingObjects.SettingsScreen.ShowAchievementAchievedPopupCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShowEvolutionLevelsCheckbox`, `classes.interface.settingObjects.SettingsScreen.DirectionalInputMethodRadioButtons`, `classes.interface.settingObjects.SettingsScreen.HideDirectionalInputCheckbox`, `classes.interface.settingObjects.SettingsScreen.TypeWriterSpeedFactorRadioButtons`, `classes.interface.settingObjects.SettingsScreen.AutomaticallyRunCheckbox`, `classes.interface.settingObjects.SettingsScreen.ColorBlindnessCheckbox`, `classes.interface.settingObjects.SettingsScreen.VibrationsCheckbox`, `classes.interface.settingObjects.SettingsScreen.PlayerNameKeyboardOverlayButton`, `classes.interface.settingObjects.SettingsScreen.PauseButtonHoldActionSelectOverlayButton`, `classes.interface.settingObjects.SettingsScreen.TimescaleForOverworldRadioButtons`, `classes.interface.settingObjects.SettingsScreen.ReducedRandomnessInBattlesCheckbox`, `classes.interface.settingObjects.SettingsScreen.ReducedRandomnessInBattlesPopupButton`, `classes.interface.settingObjects.SettingsScreen.EasyWildEncountersCheckbox`, `classes.interface.settingObjects.SettingsScreen.EasyTrainerEncountersCheckbox`, `classes.interface.settingObjects.SettingsScreen.EasyTrainerBattlesCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShowPotentialSparklesOnTrainerMonstersCheckbox`, `classes.interface.settingObjects.SettingsScreen.FasterBattleDialogCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShowWeatherAnimationsCheckbox`, `classes.interface.settingObjects.SettingsScreen.MonsterSpriteSkinForEncounterZonesModeEnumButton`, `classes.interface.settingObjects.SettingsScreen.MonsterSpriteSkinForTrainerMonstersModeEnumButton`, `classes.interface.settingObjects.SettingsScreen.ShowEncounterAnimationsCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShowMilestoneAchievedPopupCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShowStylizedSpinnersCheckbox`, `classes.interface.settingObjects.SettingsScreen.ShowTypeEffectivenessIndicatorsCheckbox`, `classes.interface.settingObjects.SettingsScreen.TimescaleForBattleRadioButtons`, `classes.interface.settingObjects.SettingsScreen.AfterCatchMonsterNicknameModeEnumButton`, `classes.interface.settingObjects.SettingsScreen.AfterCatchMonsterSummaryModeEnumButton`, `classes.interface.settingObjects.SettingsScreen.AfterCatchAutoSendToStorageWhenSquadFullCheckbox`, `classes.interface.settingObjects.SettingsScreen.AfterCatchAskToReleaseOrKeepMonsterCheckbox`

- `settingsScreen:getScreenForTitleScreen()`
- `settingsScreen:getScreenForPauseMenuScreen()`
- `settingsScreen:getScreenParamsForPauseMenuScreenHold()`
- `settingsScreen:resolveBottomBarHeightReduction(screenParams)`
- `settingsScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getSettingsScrollViewContentGroupByTabIndex(_index)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

### skillSelectScreen

`classes.interface.screens.skillSelectScreen`

- returns `Screen`
- requires: `classes.interface.PauseMenuBottomBar`, `classes.interface.overlays.MessagePopup`, `classes.interface.SkillSideEffectTurnIndicator`, `classes.lists.skillButtonOffsetList`

- `skillSelectScreen:getScreen(_monster, _editable, _listMode, _options)`
- `skillSelectScreen:resolveBottomBarHeightReduction(screenParams)`
- `skillSelectScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:setSelectedSkillData(_yIndex, _data)`
- `parentGroup:inTransition(_onComplete)`
- `parentGroup:onBeforeClose(_isBackwards)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

<details><summary>Fields with default values (1)</summary>

- `skillSelectScreen.skillDescriptionWidth` = `226`

</details>

### titleScreen

`classes.interface.screens.titleScreen`

- returns `Screen`
- requires: `classes.sprites.TitleScreenBackground`, `classes.sprites.CoromonLogo`, `classes.sprites.Bird`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.MessagePopup`

- `titleScreen:addGameSettingsMigrationTitleScreenMessage(_message)`
- `titleScreen:addGameSettingsMigrationTitleScreenOnCompleteFunction(_onComplete)`
- `titleScreen:new(_onShow)`

### worldMapScreen

`classes.interface.screens.worldMapScreen`

- returns `Screen`
- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.overlays.worldLocationDetailsPopupBuilder`, `classes.interface.PauseMenuBottomBar`

- `worldMapScreen:getScreenForPauseMenu()`
- `worldMapScreen:getScreenForLuxTeleporter(_onTeleport)`
- `worldMapScreen:getScreenForLuxRecallPremium(_onTeleport)`
- `worldMapScreen:resolveBottomBarHeightReduction(screenParams)`
- `worldMapScreen:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:inTransition(_onComplete)`
- `parentGroup:outTransition(_isBackwards, _onComplete)`

</details>

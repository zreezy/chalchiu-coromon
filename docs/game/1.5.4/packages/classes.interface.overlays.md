# classes.interface.overlays

Coromon 1.5.4. 79 module(s). [Back to index](../README.md)

[AbstractActionMenuOverlay](#abstractactionmenuoverlay), [AbstractActionMenuPopup](#abstractactionmenupopup), [AbstractContentContainerWithHeaderPopup](#abstractcontentcontainerwithheaderpopup), [AbstractItemStepperPopup](#abstractitemstepperpopup), [AbstractRecipePopup](#abstractrecipepopup), [AbstractSelectPopup](#abstractselectpopup), [AjaxLoaderOverlay](#ajaxloaderoverlay), [ArtifactItemChestPopup](#artifactitemchestpopup), [BattleDomeDifficultyPopup](#battledomedifficultypopup), [BattleDomeModifyOpponentMonsterActionMenuOverlay](#battledomemodifyopponentmonsteractionmenuoverlay), [BattleDomeResultPopup](#battledomeresultpopup), [BlurredAndDesaturatedScreenshotOverlay](#blurredanddesaturatedscreenshotoverlay), [ClosableWebviewOverlay](#closablewebviewoverlay), [CreditsOverlay](#creditsoverlay), [FadingGradientOverlay](#fadinggradientoverlay), [FruitDroneDeliveryOverlay](#fruitdronedeliveryoverlay), [GauntletModuleRadialWheelOverlay](#gauntletmoduleradialwheeloverlay), [HexagonTileEventOverlay](#hexagontileeventoverlay), [InsaneSpinnerMonsterButtonActionMenuOverlay](#insanespinnermonsterbuttonactionmenuoverlay), [ItemSelectPopup](#itemselectpopup), [KeyboardControlsPopup](#keyboardcontrolspopup), [LanguageSelectPopup](#languageselectpopup), [LocalisableEnumSelectPopup](#localisableenumselectpopup), [LuxKitchenRecipePopup](#luxkitchenrecipepopup), [LuxSolisBenefitContainerPopup](#luxsolisbenefitcontainerpopup), [MessagePopup](#messagepopup), [MessageToast](#messagetoast), [MonsterEvolutionDetailsPopup](#monsterevolutiondetailspopup), [MonsterSpriteSkinMilestoneDetailsPopup](#monsterspriteskinmilestonedetailspopup), [OnlineActiveSeasonRewardsPopup](#onlineactiveseasonrewardspopup), [OnlineAvatarPopup](#onlineavatarpopup), [OnlineBattleLostOverlay](#onlinebattlelostoverlay), [OnlineBattleWinnerOverlay](#onlinebattlewinneroverlay), [OnlineLeaderboardsOverlay](#onlineleaderboardsoverlay), [OnlineLinkPopup](#onlinelinkpopup), [OnlineMenuScreenOnlineMatchmakingModeSelectOverlay](#onlinemenuscreenonlinematchmakingmodeselectoverlay), [OnlineSeasonRankPopup](#onlineseasonrankpopup), [OnlineSquadMonsterButtonActionPopup](#onlinesquadmonsterbuttonactionpopup), [PostWildEncounterItemOverlay](#postwildencounteritemoverlay), [PotentialStatsOverlayMonsterInformationActionOverlay](#potentialstatsoverlaymonsterinformationactionoverlay), [RecipeItemStepperPopup](#recipeitemstepperpopup), [ReflectionCubeLevelStepperPopup](#reflectioncubelevelstepperpopup), [RestorePurchasesConfirmPopup](#restorepurchasesconfirmpopup), [RogueRunResultPopup](#roguerunresultpopup), [SaveslotClusterPopup](#saveslotclusterpopup), [ScentRecipeBookPopup](#scentrecipebookpopup), [SelectableOnlineSquadMonsterButtonActionMenuOverlay](#selectableonlinesquadmonsterbuttonactionmenuoverlay), [ShopItemStepperPopup](#shopitemstepperpopup), [SilenceableMessagePopup](#silenceablemessagepopup), [TallMonsterButtonOverlay](#tallmonsterbuttonoverlay), [TraitDetailsPopup](#traitdetailspopup), [TraitEnhancementStagesPopup](#traitenhancementstagespopup), [TraitSelectPopup](#traitselectpopup), [abstractLostOverlayBuilder](#abstractlostoverlaybuilder), [abstractPhonePopupBuilder](#abstractphonepopupbuilder), [baseOverlayBuilder](#baseoverlaybuilder), [basePopupBuilder](#basepopupbuilder), [battleLostOverlayBuilder](#battlelostoverlaybuilder), [battleTargetOverlayBuilder](#battletargetoverlaybuilder), [confirmPopupBuilder](#confirmpopupbuilder), [customInputDeviceConfiguratorPopupBuilder](#custominputdeviceconfiguratorpopupbuilder), [darkOverlayBuilder](#darkoverlaybuilder), [difficultyPopupBuilder](#difficultypopupbuilder), [keyboardOverlayBuilder](#keyboardoverlaybuilder), [monsterFilterPopupBuilder](#monsterfilterpopupbuilder), [monsterSpriteDetailsOverlayBuilder](#monsterspritedetailsoverlaybuilder), [monsterStorageScreenMonsterActionPopupBuilder](#monsterstoragescreenmonsteractionpopupbuilder), [moveHoldItemPopupBuilder](#moveholditempopupbuilder), [pauseButtonHoldActionSelectOverlayBuilder](#pausebuttonholdactionselectoverlaybuilder), [pauseMenuScreenMonsterActionMenuOverlayBuilder](#pausemenuscreenmonsteractionmenuoverlaybuilder), [phoneCallPopupBuilder](#phonecallpopupbuilder), [phoneMessagePopupBuilder](#phonemessagepopupbuilder), [playerPronounSelectOverlayBuilder](#playerpronounselectoverlaybuilder), [playerTrainerParticipantMonsterActionMenuOverlayBuilder](#playertrainerparticipantmonsteractionmenuoverlaybuilder), [safeAreaConfiguratorPopupBuilder](#safeareaconfiguratorpopupbuilder), [typeEffectivenessPopupBuilder](#typeeffectivenesspopupbuilder), [worldEffectPopupBuilder](#worldeffectpopupbuilder), [worldLocationDetailsPopupBuilder](#worldlocationdetailspopupbuilder), [worldLostOverlayBuilder](#worldlostoverlaybuilder)

### AbstractActionMenuOverlay

`classes.interface.overlays.AbstractActionMenuOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `AbstractActionMenuOverlay:new(_objectToBorrow, _createContextButtonObjectsFunction, _optionalContextMenuOffsetY, _forceTopAlignment, _secondObjectToBorrowAndDestroy)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### AbstractActionMenuPopup

`classes.interface.overlays.AbstractActionMenuPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `AbstractActionMenuPopup:new(_leftSideObject, _leftSideObjectOffsetY, _createContextButtonObjectsFunction)`

<details><summary>Instance / other functions (1)</summary>

- `contextMenuButton:refreshEnabledIndicator()`

</details>

### AbstractContentContainerWithHeaderPopup

`classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `AbstractContentContainerWithHeaderPopup:new(_options)`

### AbstractItemStepperPopup

`classes.interface.overlays.AbstractItemStepperPopup`

- returns `Obj`
- requires: `classes.modules.interface.stepperBuilder`, `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `AbstractItemStepperPopup:new(_width, _item, _maxAmount, _headerText, _confirmButtonText, _onAmountChange, _onYesButton, _stepSize)`

### AbstractRecipePopup

`classes.interface.overlays.AbstractRecipePopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.RecipeItemStepperPopup`

- `AbstractRecipePopup:newSelectable(_headerText, _itemStepperPopupHeaderText, _itemStepperPopupConfirmButtonText, _recipes, _onRecipeSelected, _onCancel)`
- `AbstractRecipePopup:newNonSelectable(_headerText, _itemStepperPopupHeaderText, _itemStepperPopupConfirmButtonText, _recipes, _onCancel)`

### AbstractSelectPopup

`classes.interface.overlays.AbstractSelectPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `AbstractSelectPopup:newParams(_headerText, _objects, _createGridBoxContentFunction)`
- `AbstractSelectPopup:new(_options)`

<details><summary>Instance / other functions (12)</summary>

- `params:setWidth(_width)`
- `params:setCancellable(_onCancel)`
- `params:setCancellableByButton(_onCancel)`
- `params:setConfirmButton(_createButtonContentFunction, _onPress, _shouldRecreateEverySelection)`
- `params:setGetDescriptionFunction(_getDescriptionFunction)`
- `params:setConvertToCategoryFunction(_convertToCategoryFunction)`
- `params:setOverrideGridBoxStyleFunction(_overrideGridBoxStyleFunction)`
- `params:setOnGridBoxSelect(_onGridBoxSelect)`
- `params:setOnGridBoxUnselect(_onGridBoxUnselect)`
- `params:setIsSelectedObjectFunction(_isSelectedObjectFunction)`
- `parentGroup:getScrollViewContentGroup()`
- `parentGroup:refreshConfirmButtonContent()`

</details>

### AjaxLoaderOverlay

`classes.interface.overlays.AjaxLoaderOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `AjaxLoaderOverlay:new()`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:getBackgroundRect()`

</details>

### ArtifactItemChestPopup

`classes.interface.overlays.ArtifactItemChestPopup`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `ArtifactItemChestPopup:new(_onPickArtifact)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setSelectedChestArtifact(_index)`

</details>

### BattleDomeDifficultyPopup

`classes.interface.overlays.BattleDomeDifficultyPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.horizontalTabBarBuilder`

- `BattleDomeDifficultyPopup:new(_battleDomeMode, _onConfirm)`

### BattleDomeModifyOpponentMonsterActionMenuOverlay

`classes.interface.overlays.BattleDomeModifyOpponentMonsterActionMenuOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`

- `BattleDomeModifyOpponentMonsterActionMenuOverlay:new(_tallMonsterButton, _onRevealOpponent, _onIncreaseOpponentLevel, _onMonsterSummary)`

### BattleDomeResultPopup

`classes.interface.overlays.BattleDomeResultPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `BattleDomeResultPopup:new()`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onOpen()`

</details>

### BlurredAndDesaturatedScreenshotOverlay

`classes.interface.overlays.BlurredAndDesaturatedScreenshotOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.interface.BlurredAndDesaturatedScreenshot`

- `BlurredAndDesaturatedScreenshotOverlay:new(_source, _optionalParent)`

### ClosableWebviewOverlay

`classes.interface.overlays.ClosableWebviewOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `ClosableWebviewOverlay:new(_url, _header, _onUrlRequestOrError)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:onOpen()`
- `parentGroup:onBeforeClose()`

</details>

### CreditsOverlay

`classes.interface.overlays.CreditsOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.sprites.TitleScreenBackground`, `classes.sprites.CoromonLogo`, `classes.sprites.TRAGsoftLogo`, `classes.interface.overlays.confirmPopupBuilder`

- `CreditsOverlay:new(_onClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### FadingGradientOverlay

`classes.interface.overlays.FadingGradientOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `FadingGradientOverlay:new(_optionalParent)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setCloseOnBackgroundTouch(_onAfterClose)`

</details>

### FruitDroneDeliveryOverlay

`classes.interface.overlays.FruitDroneDeliveryOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `FruitDroneDeliveryOverlay:new(_fruitsPerGrowingPot)`

<details><summary>Instance / other functions (3)</summary>

- `droneContainer:inTransition(_onComplete)`
- `droneContainer:outTransition(_onComplete)`
- `droneContainer:dropFruits(_onComplete)`

</details>

### GauntletModuleRadialWheelOverlay

`classes.interface.overlays.GauntletModuleRadialWheelOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.BlurredAndDesaturatedScreenshotOverlay`, `classes.modules.utilities.gauntletModuleUtility`

- `GauntletModuleRadialWheelOverlay:new(_isOpenedByKeyEvent)`

<details><summary>Instance / other functions (8)</summary>

- `parentGroup:getSelectedIndex()`
- `slotButton:setHovered(_boolean)`
- `slotButton:setSelected(_boolean)`
- `parentGroup:updateSelectionFromStick(_stickX, _stickY, _deadzone)`
- `parentGroup:setNextOrPreviousSelection(_directionNumber)`
- `parentGroup:onOpen()`
- `parentGroup:onBeforeClose()`
- `parentGroup:confirmSelectionAndClose()`

</details>

### HexagonTileEventOverlay

`classes.interface.overlays.HexagonTileEventOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `HexagonTileEventOverlay:new(_event, _onEventComplete, _objectsToBorrow)`

<details><summary>Instance / other functions (1)</summary>

- `eventAnswerContainer:ensureSelectedState(_shouldBeSelected)`

</details>

### InsaneSpinnerMonsterButtonActionMenuOverlay

`classes.interface.overlays.InsaneSpinnerMonsterButtonActionMenuOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`

- `InsaneSpinnerMonsterButtonActionMenuOverlay:new(_tallMonsterButton, _onMonsterSummary, _onMonsterNickname, _onMonsterRelease)`

### ItemSelectPopup

`classes.interface.overlays.ItemSelectPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `ItemSelectPopup:new(_items, _headerText, _onAfterItemSelected)`

### KeyboardControlsPopup

`classes.interface.overlays.KeyboardControlsPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `KeyboardControlsPopup:new(_onClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### LanguageSelectPopup

`classes.interface.overlays.LanguageSelectPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `LanguageSelectPopup:new(_closeable, _onLanguageSelected)`
- `LanguageSelectPopup:newCloseable(_onLanguageSelected)`
- `LanguageSelectPopup:newNonCloseable(_onLanguageSelected)`

### LocalisableEnumSelectPopup

`classes.interface.overlays.LocalisableEnumSelectPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `LocalisableEnumSelectPopup:new(_headerText, _enum, _enumValueObjects, _selectedEnumValueObject, _onEnumValueConfirmed, _onGridboxSelect, _onCreateGridBoxContent)`

### LuxKitchenRecipePopup

`classes.interface.overlays.LuxKitchenRecipePopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractRecipePopup`

- `LuxKitchenRecipePopup:newSelectable(_onRecipeSelected, _onCancel)`

### LuxSolisBenefitContainerPopup

`classes.interface.overlays.LuxSolisBenefitContainerPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.LuxSolisBenefitContainer`

- `LuxSolisBenefitContainerPopup:newForPromotionBonus(_isGold, _itemUID, _itemAmount, _onComplete)`
- `LuxSolisBenefitContainerPopup:newForBattleDomeStars(_isGold, _itemUID, _itemAmount, _onComplete)`
- `LuxSolisBenefitContainerPopup:newForStyleCrystalsReward(_styleCrystalAmount, _onComplete)`
- `LuxSolisBenefitContainerPopup:newForIAP(_itemUID, _itemAmount, _onComplete)`
- `LuxSolisBenefitContainerPopup:newForOnlineStyleProduct(_onlineStyleProductUID, _onComplete)`
- `LuxSolisBenefitContainerPopup:newForOnlineSeasonRewards(_shouldAddToInventory, _onlineSeasonRewards)`

### MessagePopup

`classes.interface.overlays.MessagePopup`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`

- `MessagePopup:new(_text, _onComplete)`
- `MessagePopup:newImportant(_text, _onComplete)`
- `MessagePopup:newCustom(_options)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:getPopupBackground()`
- `parentGroup:onClose()`

</details>

### MessageToast

`classes.interface.overlays.MessageToast`

- returns `Obj`

- `MessageToast:showAndHide(_text, _options, _onComplete)`

### MonsterEvolutionDetailsPopup

`classes.interface.overlays.MonsterEvolutionDetailsPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.horizontalTabBarBuilder`, `classes.modules.utilities.traitDescriptionHighlightUtility`

- `MonsterEvolutionDetailsPopup:new(_monster, _mode, _newMonsterUID, _onEvolve, _onCancel)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onBeforeClose()`

</details>

### MonsterSpriteSkinMilestoneDetailsPopup

`classes.interface.overlays.MonsterSpriteSkinMilestoneDetailsPopup`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`, `classes.interface.MonsterSpriteSkinMilestoneDetailsContainer`

- `MonsterSpriteSkinMilestoneDetailsPopup:new(_monsterSpriteSkin)`

### OnlineActiveSeasonRewardsPopup

`classes.interface.overlays.OnlineActiveSeasonRewardsPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`, `classes.interface.overlays.OnlineLeaderboardsOverlay`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`

- `OnlineActiveSeasonRewardsPopup:new()`

### OnlineAvatarPopup

`classes.interface.overlays.OnlineAvatarPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `OnlineAvatarPopup:getAvailableOnlineAvatars(_mode, _deviceId, _initiallySelectedAvatarUID, _onlineAvatarCategory)`
- `OnlineAvatarPopup:newForRandomizedStarter(_initiallySelectedAvatarUID, _onAvatarEdited)`
- `OnlineAvatarPopup:tryOpenForSelectOnlineAvatarWithAjaxLoader(_initiallySelectedAvatarUID, _onlineAvatarCategory, _onAvatarEdited)`
- `OnlineAvatarPopup:tryOpenForBuyOnlineAvatarWithAjaxLoader(_initiallySelectedAvatarUID, _onlineAvatarCategory, _onAvatarEdited)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setSelectedAvatar(_onlineAvatar)`

</details>

### OnlineBattleLostOverlay

`classes.interface.overlays.OnlineBattleLostOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.abstractLostOverlayBuilder`

- `OnlineBattleLostOverlay:new(_onContinue)`

### OnlineBattleWinnerOverlay

`classes.interface.overlays.OnlineBattleWinnerOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.OnlineSeasonRankPopup`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`, `classes.sprites.TitleScreenBackground`

- `OnlineBattleWinnerOverlay:new(_onlineMatchResult, _onPauseMenuShow)`

### OnlineLeaderboardsOverlay

`classes.interface.overlays.OnlineLeaderboardsOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`, `classes.modules.interface.scrollViewBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`

- `OnlineLeaderboardsOverlay:tryLoadTenPagesAndOpen(_onlineMatchmakingMode)`
- `OnlineLeaderboardsOverlay:tryGetOnlineSeasonReward(_seasonId, _tier, _rankIndex)`
- `OnlineLeaderboardsOverlay:new(_onlineMatchmakingMode, _initialSeason, _initialLeaderboardEntries)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:loadSeason(_seasonId)`

</details>

### OnlineLinkPopup

`classes.interface.overlays.OnlineLinkPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.settingObjects.SettingObjectHelper`, `classes.interface.settingObjects.SettingsScreen.OnlineConnectWithAppleCheckbox`, `classes.interface.settingObjects.SettingsScreen.OnlineConnectWithGoogleCheckbox`, `classes.interface.settingObjects.SettingsScreen.OnlineConnectWithSteamCheckbox`, `classes.interface.settingObjects.SettingsScreen.OnlineConnectWithNintendoCheckbox`

- `OnlineLinkPopup:new(_links)`

### OnlineMenuScreenOnlineMatchmakingModeSelectOverlay

`classes.interface.overlays.OnlineMenuScreenOnlineMatchmakingModeSelectOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `OnlineMenuScreenOnlineMatchmakingModeSelectOverlay:new(_buttonToBorrow, _onlineMatchmakingModes, _onTouch, _onHold)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### OnlineSeasonRankPopup

`classes.interface.overlays.OnlineSeasonRankPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `OnlineSeasonRankPopup:new(_seasonRank)`

### OnlineSquadMonsterButtonActionPopup

`classes.interface.overlays.OnlineSquadMonsterButtonActionPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuPopup`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.OnlineSquadMonsterButton`, `classes.interface.overlays.TraitSelectPopup`, `classes.interface.battle.SetPotentialStatsOverlay`, `classes.interface.overlays.MonsterEvolutionDetailsPopup`

- `OnlineSquadMonsterButtonActionPopup:new(_category, _onlineSquadEntry, _onlineSquadMonsterButton, _onlineSquad, _refreshOnlineSquadErrors, _onSelectedMonsterChanged, _onTraitUpdated)`

### PostWildEncounterItemOverlay

`classes.interface.overlays.PostWildEncounterItemOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `PostWildEncounterItemOverlay:new(_amountOfGold, _onPickItem)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setSelectedPossibleItem(_index)`

</details>

### PotentialStatsOverlayMonsterInformationActionOverlay

`classes.interface.overlays.PotentialStatsOverlayMonsterInformationActionOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`

- `PotentialStatsOverlayMonsterInformationActionOverlay:new(_monsterInfoButton, _onMonsterSkills, _onMonsterBaseStats)`

<details><summary>Instance / other functions (1)</summary>

- `buttonActionMenuOverlay:onClose()`

</details>

### RecipeItemStepperPopup

`classes.interface.overlays.RecipeItemStepperPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractItemStepperPopup`

- `RecipeItemStepperPopup:new(_recipe, _itemStepperPopupHeaderText, _itemStepperPopupConfirmButtonText, _onYesButton)`

### ReflectionCubeLevelStepperPopup

`classes.interface.overlays.ReflectionCubeLevelStepperPopup`

- returns `Obj`
- requires: `classes.modules.interface.stepperBuilder`, `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `ReflectionCubeLevelStepperPopup:new(_onYesButton, _onNoButton)`

### RestorePurchasesConfirmPopup

`classes.interface.overlays.RestorePurchasesConfirmPopup`

- returns `Obj`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`

- `RestorePurchasesConfirmPopup:new(_onRestoredProducts)`

### RogueRunResultPopup

`classes.interface.overlays.RogueRunResultPopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `RogueRunResultPopup:new()`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onOpen()`

</details>

### SaveslotClusterPopup

`classes.interface.overlays.SaveslotClusterPopup`

- returns `SaveslotClusterPopup`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.overlays.MessagePopup`, `classes.interface.SaveslotMetadataContainer`

- `SaveslotClusterPopup:new(_saveslotCluster, _saveslotIndex, _saveslotForPreview, _onPickedSaveslot)`

### ScentRecipeBookPopup

`classes.interface.overlays.ScentRecipeBookPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractRecipePopup`

- `ScentRecipeBookPopup:newSelectable(_onRecipeSelected, _onCancel)`
- `ScentRecipeBookPopup:newNonSelectable(_onCancel)`

### SelectableOnlineSquadMonsterButtonActionMenuOverlay

`classes.interface.overlays.SelectableOnlineSquadMonsterButtonActionMenuOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`

- `SelectableOnlineSquadMonsterButtonActionMenuOverlay:new(_amountOfMonstersToSelect, _onlineSquadMonsterButton, _onlineSquadMonsterButtons, _onlineSquadMonsters, _onlineSquadMonster)`

### ShopItemStepperPopup

`classes.interface.overlays.ShopItemStepperPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractItemStepperPopup`

- `ShopItemStepperPopup:new(_item, _mode, _itemPrice, _onYesButton)`

<details><summary>Instance / other functions (1)</summary>

- `itemStepperPopup:onClose()`

</details>

### SilenceableMessagePopup

`classes.interface.overlays.SilenceableMessagePopup`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`

- `SilenceableMessagePopup:new(_text, _onComplete)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### TallMonsterButtonOverlay

`classes.interface.overlays.TallMonsterButtonOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`, `classes.interface.overlays.MessagePopup`, `classes.interface.TallMonsterButton`

- `TallMonsterButtonOverlay:new(_monsters, _tallMonsterButtonMode, _onSelect, _options)`
- `TallMonsterButtonOverlay:newAutoClosable(_monsters, _tallMonsterButtonMode, _onNonDisabledTallMonsterButton, _onAfterTallMonsterButtonsComplete, _onClose, _options)`
- `TallMonsterButtonOverlay:newSilentClosable(_monsters, _tallMonsterButtonMode, _onSelect, _options)`
- `TallMonsterButtonOverlay:newOptionallySilentClosable(_monsters, _tallMonsterButtonMode, _closable, _onSelect, _options)`
- `TallMonsterButtonOverlay:newClosable(_monsters, _tallMonsterButtonMode, _onClose, _onSelect, _options)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:getTallMonsterButtons()`

</details>

### TraitDetailsPopup

`classes.interface.overlays.TraitDetailsPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `TraitDetailsPopup:new(_trait, _onClose)`

### TraitEnhancementStagesPopup

`classes.interface.overlays.TraitEnhancementStagesPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `TraitEnhancementStagesPopup:new(_traitUID)`

### TraitSelectPopup

`classes.interface.overlays.TraitSelectPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `TraitSelectPopup:new(_monster, _originalTraitUID, _onAfterTraitSelected, _goldCost)`

### abstractLostOverlayBuilder

`classes.interface.overlays.abstractLostOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.spawnables.roguePlayableCharacter`

- `abstractLostOverlayBuilder:new(_loseText, _mode)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:addActionButton(_preparedText, _onTouch)`
- `parentGroup:open(_onShow)`

</details>

### abstractPhonePopupBuilder

`classes.interface.overlays.abstractPhonePopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `abstractPhonePopupBuilder:new(_isShownAboveDialog)`

### baseOverlayBuilder

`classes.interface.overlays.baseOverlayBuilder`

- returns `Obj`

- `baseOverlayBuilder:getAmountOfActiveOverlays()`
- `baseOverlayBuilder:forceDestroyAll()`
- `baseOverlayBuilder:new(_optionalParent)`

<details><summary>Instance / other functions (33)</summary>

- `parentGroup:getBottomGroup()`
- `parentGroup:getContentGroup()`
- `parentGroup:getTopGroup()`
- `parentGroup:addGamepadNavigation(_navigation)`
- `parentGroup:addKeyboardNavigation(_navigation)`
- `parentGroup:addGlobalNavigation(_navigation)`
- `parentGroup:setMultitouchEnabled(_boolean)`
- `parentGroup:setCloseOnUseButton(_onClose)`
- `parentGroup:setCloseOnBackButton(_onClose)`
- `parentGroup:setCloseOnStartButton(_onClose)`
- `parentGroup:setCloseOnBackgroundTouch(_onClose)`
- `parentGroup:setOpenSound(_sound)`
- `parentGroup:setCloseSound(_sound)`
- `parentGroup:addInTransition(_function)`
- `parentGroup:addOutTransition(_function)`
- `parentGroup:isAlreadyClosing()`
- `parentGroup:onBeforeDecreaseInputLevel()`
- `parentGroup:addOnOpen(_onOpen)`
- `parentGroup:addOnClose(_onClose)`
- `parentGroup:addOnBeforeOpen(_onBeforeOpen)`
- `parentGroup:addOnBeforeClose(_onBeforeClose)`
- `parentGroup:onOpen()`
- `parentGroup:onClose()`
- `parentGroup:onBeforeOpen()`
- `parentGroup:onBeforeClose()`
- `parentGroup:isOpened()`
- `parentGroup:open(_onShow)`
- `parentGroup:close(_onAfterClose, _isCancel)`
- `parentGroup.doClose()`
- `parentGroup:handleRemoveFocus()`
- `parentGroup:handleObtainFocus()`
- `parentGroup:destroy(_isCancel)`
- `parentGroup:forceDestroy()`

</details>

### basePopupBuilder

`classes.interface.overlays.basePopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `basePopupBuilder:new(_popupBackground, _yOffset)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:getPopupBackground()`

</details>

### battleLostOverlayBuilder

`classes.interface.overlays.battleLostOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.BattleDomeResultPopup`, `classes.interface.overlays.abstractLostOverlayBuilder`

- `battleLostOverlayBuilder:new(_extraSpawnableConstructors)`

### battleTargetOverlayBuilder

`classes.interface.overlays.battleTargetOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`

- `battleTargetOverlayBuilder:new(_skillButton, _battleActionPreviewContainer, _options)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### confirmPopupBuilder

`classes.interface.overlays.confirmPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`

- `confirmPopupBuilder:newIf(_boolean, _options)`
- `confirmPopupBuilder:new(_options)`

### customInputDeviceConfiguratorPopupBuilder

`classes.interface.overlays.customInputDeviceConfiguratorPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.gamepadSpriteBuilder`, `classes.modules.input.InputDeviceConfigurator`

- `customInputDeviceConfiguratorPopupBuilder:new(_unknownDevice)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:testAllStates(_onStateChanged)`
- `parentGroup:onClose()`

</details>

### darkOverlayBuilder

`classes.interface.overlays.darkOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `darkOverlayBuilder:new(_optionalParent, _optionalAlpha)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:getBackgroundRect()`
- `parentGroup:setCloseOnBackgroundTouch(_onAfterClose)`

</details>

### difficultyPopupBuilder

`classes.interface.overlays.difficultyPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.horizontalTabBarBuilder`

- `difficultyPopupBuilder:new(_closable, _onClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### keyboardOverlayBuilder

`classes.interface.overlays.keyboardOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.keyboardBuilder`, `classes.interface.overlays.darkOverlayBuilder`, `classes.interface.overlays.MessagePopup`

- `keyboardOverlayBuilder:new(_title, _closable, _options)`

<details><summary>Instance / other functions (7)</summary>

- `parentGroup:cancel()`
- `parentGroup:optionallyHideNativeTextField()`
- `parentGroup:optionallyShowNativeTextField()`
- `parentGroup:getInputContainer()`
- `parentGroup:getUnescapedInputText()`
- `parentGroup:setUnescapedInputText(_newUnescapedText)`
- `parentGroup:onClose()`

</details>

<details><summary>Fields with default values (1)</summary>

- `keyboardOverlayBuilder.infiniteDebugWidth` = `{}`

</details>

### monsterFilterPopupBuilder

`classes.interface.overlays.monsterFilterPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `monsterFilterPopupBuilder:new(_alreadySelectedFilter, _onFilterSelected)`

### monsterSpriteDetailsOverlayBuilder

`classes.interface.overlays.monsterSpriteDetailsOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.MonsterPreview`, `classes.interface.ColoredMonsterTypesInnerContainer`, `classes.interface.monsterHealthBarBuilder`, `classes.interface.monsterEnergyBarBuilder`

- `monsterSpriteDetailsOverlayBuilder:new(_monsterSprite, _onClose, _optionalShoulderSwitchMonsterSprites)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:onBeforeClose()`
- `parentGroup:onClose()`

</details>

### monsterStorageScreenMonsterActionPopupBuilder

`classes.interface.overlays.monsterStorageScreenMonsterActionPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`, `classes.interface.TallMonsterButton`, `classes.interface.overlays.MessagePopup`

- `monsterStorageScreenMonsterActionPopupBuilder:new(_monster, _mode, _onBeforeMonsterSelect, _onMonsterSelect, _onMonsterSummary, _onMonsterNickname, _onMonsterWithdraw, _onMonsterRelease)`

<details><summary>Instance / other functions (1)</summary>

- `monsterActionMenuOverlay:onClose()`

</details>

### moveHoldItemPopupBuilder

`classes.interface.overlays.moveHoldItemPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`

- `moveHoldItemPopupBuilder:new(_monster, _options)`

### pauseButtonHoldActionSelectOverlayBuilder

`classes.interface.overlays.pauseButtonHoldActionSelectOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `pauseButtonHoldActionSelectOverlayBuilder:new(_onPauseButtonHoldActionSelected)`

### pauseMenuScreenMonsterActionMenuOverlayBuilder

`classes.interface.overlays.pauseMenuScreenMonsterActionMenuOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`, `classes.modules.utilities.monsterItemSuggestionUtility`

- `pauseMenuScreenMonsterActionMenuOverlayBuilder:new(_monster, _tallMonsterButton, _onMonsterSummary, _onMonsterSwitch, _onMonsterNickname, _onMonsterGiveHoldItem, _onMonsterMoveHoldItem, _onMonsterRemoveHoldItem, _onMonsterRelease, _tallMonsterButtonFocusRoundedRect, _refreshTallMonsterButtonAfterSuggestedItemUse)`

### phoneCallPopupBuilder

`classes.interface.overlays.phoneCallPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.abstractPhonePopupBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `phoneCallPopupBuilder:startRingingAndShowPopup(_callerCharacter, _playerSpawnable, _onCallTaken)`
- `phoneCallPopupBuilder:new(_phoneRingtoneLoopChannel, _callerCharacter, _playerSpawnable, _onCallTaken)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:spawnExpression(_callerOrPlayer, _type, _onComplete)`
- `parentGroup:spawnEmoji(_callerOrPlayer, _type, _loopCount, _onComplete)`
- `parentGroup:unspawnEmoji(_callerOrPlayer, _onComplete)`
- `parentGroup:onOpen()`

</details>

### phoneMessagePopupBuilder

`classes.interface.overlays.phoneMessagePopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.abstractPhonePopupBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`, `classes.modules.interface.slideViewBuilder`

- `phoneMessagePopupBuilder:new(_messages, _onClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onBeforeClose()`

</details>

### playerPronounSelectOverlayBuilder

`classes.interface.overlays.playerPronounSelectOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractSelectPopup`

- `playerPronounSelectOverlayBuilder:new(_closeable, _onClose)`
- `playerPronounSelectOverlayBuilder:newCloseable()`
- `playerPronounSelectOverlayBuilder:newNonCloseableIfRequired(_onClose)`

### playerTrainerParticipantMonsterActionMenuOverlayBuilder

`classes.interface.overlays.playerTrainerParticipantMonsterActionMenuOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractActionMenuOverlay`

- `playerTrainerParticipantMonsterActionMenuOverlayBuilder:new(_tallMonsterButton, _onMonsterSummary, _onMonsterSwitch)`

### safeAreaConfiguratorPopupBuilder

`classes.interface.overlays.safeAreaConfiguratorPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.horizontalFillSliderBuilder`

- `safeAreaConfiguratorPopupBuilder:new(_maxSafeAreaInset, _onNewValueConfirmed)`

### typeEffectivenessPopupBuilder

`classes.interface.overlays.typeEffectivenessPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `typeEffectivenessPopupBuilder:new()`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onBeforeClose()`

</details>

### worldEffectPopupBuilder

`classes.interface.overlays.worldEffectPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.horizontalTabBarBuilder`

- `worldEffectPopupBuilder:new(_worldEffects, _initiallySelectedWorldEffect, _onDone)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### worldLocationDetailsPopupBuilder

`classes.interface.overlays.worldLocationDetailsPopupBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`, `classes.interface.overlays.MessagePopup`, `classes.interface.BattleEnvironmentPreview`

- `worldLocationDetailsPopupBuilder:new(_worldLocationUID, _isLockedRecallLocation, _onTeleport)`

### worldLostOverlayBuilder

`classes.interface.overlays.worldLostOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.abstractLostOverlayBuilder`

- `worldLostOverlayBuilder:new(_extraSpawnableConstructorsOrOnComplete, _retryMapPath, _retryMapFile, _retryLocation, _mode)`

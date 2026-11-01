# classes.tests.ui_screenshots.sections

Coromon 1.5.4. 11 module(s). [Back to index](../README.md)

[battle](#battle), [overlays](#overlays), [overlays_withManyVariants](#overlays_withmanyvariants), [pause_menu_core](#pause_menu_core), [pause_menu_extras](#pause_menu_extras), [pause_menu_monster_summary](#pause_menu_monster_summary), [pause_menu_online](#pause_menu_online), [rogue](#rogue), [shared_ui](#shared_ui), [title_screen](#title_screen), [world_interface](#world_interface)

### battle

`classes.tests.ui_screenshots.sections.battle`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.battleLostOverlayBuilder`

- `battle:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

<details><summary>Instance / other functions (1)</summary>

- `playerParticipant:showActionsPanelFor(_nametag, _onComplete)`

</details>

### overlays

`classes.tests.ui_screenshots.sections.overlays`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.ArtifactItemChestPopup`, `classes.interface.overlays.BattleDomeDifficultyPopup`, `classes.interface.overlays.BattleDomeModifyOpponentMonsterActionMenuOverlay`, `classes.interface.overlays.BattleDomeResultPopup`, `classes.interface.overlays.ClosableWebviewOverlay`, `classes.interface.overlays.CreditsOverlay`, `classes.interface.overlays.FadingGradientOverlay`, `classes.interface.overlays.HexagonTileEventOverlay`, `classes.interface.overlays.InsaneSpinnerMonsterButtonActionMenuOverlay`, `classes.interface.overlays.ItemSelectPopup`, `classes.interface.overlays.KeyboardControlsPopup`, `classes.interface.overlays.LanguageSelectPopup`, `classes.interface.overlays.LuxKitchenRecipePopup`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`, `classes.interface.overlays.OnlineActiveSeasonRewardsPopup`, `classes.interface.overlays.OnlineAvatarPopup`, `classes.interface.overlays.OnlineBattleLostOverlay`, `classes.interface.overlays.OnlineLeaderboardsOverlay`, `classes.interface.overlays.OnlineLinkPopup`, `classes.interface.overlays.OnlineSeasonRankPopup`, `classes.interface.overlays.OnlineSquadMonsterButtonActionPopup`, `classes.interface.overlays.PostWildEncounterItemOverlay`, `classes.interface.overlays.RecipeItemStepperPopup`, `classes.interface.overlays.ReflectionCubeLevelStepperPopup`, `classes.interface.overlays.RestorePurchasesConfirmPopup`, `classes.interface.overlays.ScentRecipeBookPopup`, `classes.interface.overlays.TraitDetailsPopup`, `classes.interface.overlays.TraitEnhancementStagesPopup`, `classes.interface.overlays.TraitSelectPopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.darkOverlayBuilder`, `classes.interface.games.MiniGameTitleScreenOverlay`, `classes.interface.overlays.monsterFilterPopupBuilder`, `classes.interface.overlays.moveHoldItemPopupBuilder`, `classes.interface.overlays.pauseButtonHoldActionSelectOverlayBuilder`, `classes.interface.overlays.playerPronounSelectOverlayBuilder`, `classes.interface.overlays.safeAreaConfiguratorPopupBuilder`, `classes.interface.overlays.typeEffectivenessPopupBuilder`, `classes.interface.overlays.worldLostOverlayBuilder`, `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.overlays.OnlineBattleWinnerOverlay`, `classes.interface.overlays.MonsterEvolutionDetailsPopup`, `classes.interface.overlays.monsterSpriteDetailsOverlayBuilder`, `classes.interface.battle.IncreasePotentialStatsOverlay`, `classes.interface.battle.ResetPotentialStatsOverlay`, `classes.interface.battle.SetPotentialStatsOverlay`, `classes.interface.overlays.PotentialStatsOverlayMonsterInformationActionOverlay`, `classes.interface.battle.statsOverlayBuilder`, `classes.interface.overlays.monsterStorageScreenMonsterActionPopupBuilder`, `classes.interface.overlays.playerTrainerParticipantMonsterActionMenuOverlayBuilder`

- `overlays:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

<details><summary>Instance / other functions (2)</summary>

- `OnlineRankingData:ensureActiveSeasonAndRankForOpponent(_profileId, _onlineMatchmakingMode, _onError, _onSuccess)`
- `OnlineProfileServer:get(_profileId, _onError, _onSuccess)`

</details>

### overlays_withManyVariants

`classes.tests.ui_screenshots.sections.overlays_withManyVariants`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.TallMonsterButtonOverlay`, `classes.interface.overlays.customInputDeviceConfiguratorPopupBuilder`, `classes.interface.overlays.difficultyPopupBuilder`, `classes.interface.settingObjects.SettingsScreen.ReducedRandomnessInBattlesPopupButton`, `classes.interface.settingObjects.SettingsScreen.TipsAndTricksPopupButton`, `classes.interface.overlays.LocalisableEnumSelectPopup`, `classes.interface.overlays.phoneMessagePopupBuilder`

- `overlays_withManyVariants:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### pause_menu_core

`classes.tests.ui_screenshots.sections.pause_menu_core`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.ShopItemStepperPopup`, `classes.interface.overlays.pauseMenuScreenMonsterActionMenuOverlayBuilder`, `classes.interface.overlays.worldLocationDetailsPopupBuilder`

- `pause_menu_core:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### pause_menu_extras

`classes.tests.ui_screenshots.sections.pause_menu_extras`

- returns `t`, uses coroutines

- `pause_menu_extras:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### pause_menu_monster_summary

`classes.tests.ui_screenshots.sections.pause_menu_monster_summary`

- returns `t`, uses coroutines

- `pause_menu_monster_summary:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### pause_menu_online

`classes.tests.ui_screenshots.sections.pause_menu_online`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.SelectableOnlineSquadMonsterButtonActionMenuOverlay`, `classes.interface.overlays.OnlineMenuScreenOnlineMatchmakingModeSelectOverlay`, `classes.interface.overlays.OnlineSquadMonsterButtonActionPopup`

- `pause_menu_online:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### rogue

`classes.tests.ui_screenshots.sections.rogue`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.RogueRunResultPopup`

- `rogue:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### shared_ui

`classes.tests.ui_screenshots.sections.shared_ui`

- returns `t`
- requires: `classes.interface.battle.nametag.MonsterNametag`

- `shared_ui:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### title_screen

`classes.tests.ui_screenshots.sections.title_screen`

- returns `t`, uses coroutines

- `title_screen:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

### world_interface

`classes.tests.ui_screenshots.sections.world_interface`

- returns `t`, uses coroutines
- requires: `classes.interface.overlays.GauntletModuleRadialWheelOverlay`, `classes.interface.overlays.phoneCallPopupBuilder`, `classes.interface.overlays.worldEffectPopupBuilder`

- `world_interface:run(_doTakeCapture, _doTakeScreenCapture, _takeScreenCaptureAndContinue, _doShowScreenAndCapture, _doShowScreen, _showAndCaptureScreenWithYieldAndContinue, _showAndCaptureOverlayWithYieldAndContinue, _doShowAndCaptureOverlayAndDestroy, _takeOverlayCaptureAndDestroy, _showToast, _showToastCaptureWithYieldAndContinue, _continue, _data)`

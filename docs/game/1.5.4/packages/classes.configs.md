# classes.configs

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[app](#app), [debugSettings](#debugsettings), [defaultInputDeviceConfigs](#defaultinputdeviceconfigs), [deviceSettings](#devicesettings), [serverSettings](#serversettings)

### app

`classes.configs.app`

- returns `t`
- requires: `classes.require_app`, `classes.require_build_configuration`, `classes.require_android_appstore`, `classes.require_ios_appstore`, `classes.require_desktop_plugin`

- `app:getAppName()`
- `app:isCoromon1()`
- `app:isCoromonRoguePlanet()`
- `app:usesDualTyping()`
- `app:usesCrimsoniteAsType()`
- `app:isBetaBuild()`
- `app:isDevelopBuild()`
- `app:usesGoogleAndroidStore()`
- `app:usesEpicAndroidStore()`
- `app:usesTapTapAndroidStore()`
- `app:usesAppleIOSStore()`
- `app:usesEpicIOSStore()`
- `app:usesTapTapIOSStore()`
- `app:usesSteamDesktopPlugin()`
- `app:usesEpicDesktopPlugin()`
- `app:usesGogDesktopPlugin()`
- `app:usesLudiumDesktopPlugin()`
- `app:usesGamecenterDesktopPlugin()`
- `app:usesIndiepassDesktopPlugin()`
- `app:usesTapTapDesktopPlugin()`
- `app:usesTapTap()`

<details><summary>Fields with default values (12)</summary>

- `app.name` = `"Coromon"`
- `app.version` = `"1.5.4"`
- `app.solar2DVersion` = `"2026.3729.e"`
- `app.battleVersion` = `"0.0.24"`
- `app.gameSettingsVersion` = `26`
- `app.identifier` = `"emptyBundleID"`
- `app.encryptionSalt` = `"<redacted>"`
- `app.coromon1SaveslotDataVersion` = `247`
- `app.coromon1SaveslotDataVersionToStore` = `247`
- `app.coromonRoguePlanetSaveslotDataVersion` = `1`
- `app.coromonRoguePlanetSaveslotDataVersionToStore` = `1`
- `app.useOptimizedMaps` = `true`

</details>

### debugSettings

`classes.configs.debugSettings`

- returns `t`
- defines globals: `debugMapPath` = "luxSolisTown/", `debugMapFile` = "trainerHub_luxSolisTown", `debugMapOptions` = table

- `debugSettings:getInitialItems()`
- `debugSettings:getInitialSquad()`

<details><summary>Fields with default values (39)</summary>

- `debugSettings.UI.allowWorldDebug` = `false`
- `debugSettings.items.hasAllItems` = `false`
- `debugMapOptions.spawnLocation` = `"virtualRealityBooth"`
- `debugSettings.coromon1.skipWildBattles` = `false`
- `debugSettings.coromon1.skipTrainerBattles` = `false`
- `debugSettings.world.skipWorldTransition` = `false`
- `debugSettings.battle.alwaysCatchSuccessfully` = `false`
- `debugSettings.invalidateOpenGLEveryFrame` = `false`
- `debugSettings.simulator.simulateSupportingInAppPurchases` = `false`
- `debugSettings.diagnostics.frameDiagnosticsEnabled` = `false`
- `debugSettings.diagnostics.frameDiagnosticsTargetFPS` = `60`
- `debugSettings.game.noClipMode` = `false`
- `debugSettings.coromonRoguePlanet.showBattleDialog` = `true`
- `debugSettings.coromonRoguePlanet.showActiveParticipantIndicator` = `true`
- `debugSettings.coromonRoguePlanet.hexagonWorldSeed` = `nil`
- `debugSettings.coromonRoguePlanet.forceDoubleBattles` = `true`
- `debugSettings.coromonRoguePlanet.shouldHidePathsUponDisable` = `true`
- `debugSettings.coromonRoguePlanet.disableActionTiles` = `nil`
- `debugSettings.coromonRoguePlanet.replaceActionTilesByRowAndColumn` = `nil`
- `debugSettings.coromonRoguePlanet.overrideAmountOfActionTilesInBiome` = `nil`
- `debugSettings.coromonRoguePlanet.showHexagonTilePositionTexts` = `false`
- `debugSettings.coromonRoguePlanet.showActionTilePositionTexts` = `false`
- `debugSettings.coromonRoguePlanet.skipActionTiles` = `false`
- `debugSettings.coromonRoguePlanet.skipHexagonWorldInitialTileTransition` = `false`
- `debugSettings.coromonRoguePlanet.exportHexagonWorldImageUponMapLoad` = `false`
- `debugSettings.UI.skipSplashScreen` = `true`
- `debugSettings.UI.hideWorldInterface` = `false`
- `debugSettings.battle.isNoSkillDamage` = `false`
- `debugSettings.battle.isNoSkillEnergyCost` = `false`
- `debugSettings.battle.playerHasAI` = `false`
- `debugSettings.battle.skipOnEnterBattle` = `false`
- `debugSettings.battle.skipTrainerSpawnAnimation` = `false`
- `debugSettings.battle.skipEncounterOverlay` = `false`
- `debugSettings.MTE.enableDebugStats` = `false`
- `debugSettings.MTE.showCullables` = `false`
- `debugSettings.MTE.showObjects` = `false`
- `debugSettings.items.hasAllItemExceptions.LUX_GOLD_MAGNET` = `true`
- `debugSettings.log.mapExtends` = `false`
- `debugSettings.log.AI` = `false`

</details>

### defaultInputDeviceConfigs

`classes.configs.defaultInputDeviceConfigs`

- returns `t`
- requires: `classes.modules.input.InputDeviceConfigurator`

### deviceSettings

`classes.configs.deviceSettings`

- returns `t`

<details><summary>Fields with default values (1)</summary>

- `deviceSettings.exportPath` = `nil`

</details>

### serverSettings

`classes.configs.serverSettings`

- returns `t`
- requires: `classes.require_build_configuration`

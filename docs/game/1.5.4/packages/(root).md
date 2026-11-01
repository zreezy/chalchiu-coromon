# (root)

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[config](#config), [main](#main)

### config

`config`

- requires: `classes.require_android_appstore`
- defines globals: `application` = table

<details><summary>Fields with default values (19)</summary>

- `application.content.minContentWidth` = `380`
- `application.content.minContentHeight` = `180`
- `application.content.maxContentWidth` = `520`
- `application.content.maxContentHeight` = `288`
- `application.content.fps` = `60`
- `application.content.shaderPrecision` = `"highp"`
- `application.steamworks.appId` = `"1218210"`
- `application.eos.encryptionKey` = `"<redacted>"`
- `application.eos.clientId` = `"<redacted>"`
- `application.eos.clientSecret` = `"<redacted>"`
- `application.eos.productId` = `"<redacted>"`
- `application.eos.sandboxId` = `"<redacted>"`
- `application.eos.deploymentId` = `"<redacted>"`
- `application.taptap.clientId` = `"REPLACE_ME"`
- `application.taptap.clientToken` = `"<redacted>"`
- `application.gog.clientId` = `"<redacted>"`
- `application.gog.clientSecret` = `"<redacted>"`
- `application.license.google.key` = `"<redacted>"`
- `application.notification.iphone.types` = `{}`

</details>

### main

`main`

- requires: `classes.configs.app`, `classes.require_core`, `classes.constants.Color`, `classes.constants.colors`, `classes.modules.encryptionHelper`, `classes.modules.xml`, `classes.modules.lua`, `classes.interface.screens.titleScreen`, `classes.modules.gameSettings`, `classes.configs.deviceSettings`, `classes.configs.serverSettings`, `classes.modules.languageHelper`, `classes.modules.LaunchArgumentHelper`, `classes.debug.CoromonDebugHelper`, `drm_validator`, `classes.interface.splashScreenBuilder`, `classes.require_specific`, `plugin.firebaseAnalytics`, `classes.modules.UniversalLinks`, `classes.modules.GameCenter`, `classes.modules.analytics.Analytics`, `classes.interface.overlays.customInputDeviceConfiguratorPopupBuilder`, `classes.rules.christmas`, `classes.rules.encounter`, `classes.rules.difficulty`, `classes.rules.perks`, `classes.rules.fruitDrone`, `classes.battle.rules.AI`, `classes.battle.rules.afterSkillMoveMiss`, `classes.battle.rules.afterSkillMoveEffectiveAttack`, `classes.battle.rules.afterPartialSkillMoveCriticalHit`, `classes.battle.rules.achieveMilestones`, `classes.battle.rules.achieveMonsterSpriteSkinMilestones`, `classes.battle.rules.damageRandomizer`, `classes.battle.rules.onSpreadedAttack`, `classes.battle.rules.onSameTypeAttack`, `classes.battle.rules.statBoosts`, `classes.battle.rules.afterSkillMoveMultiStrike`, `classes.battle.rules.afterSkillMoveSkipRemainingIfAllMissed`, `classes.battle.rules.afterMonsterSpritesFaintedXp`, `classes.battle.rules.afterPartialSkillMoveSkipRemainingIfActiveFainted`, `classes.battle.rules.afterPlayerWonRecoverEnergy`, `classes.battle.rules.onlineMenuMutateLevel`, `classes.battle.rules.onlineShouldBlockSkill`, `classes.battle.rules.battleDome`, `classes.battle.rules.rogue`, `classes.battle.rules.crimsoniteAura`, `classes.require_debug`, `classes.tests.tests`, `classes.interface.overlays.LanguageSelectPopup`
- defines globals: `app` = module "classes.configs.app", `Color` = module "classes.constants.Color", `colors` = module "classes.constants.colors", `encryptionHelper` = module "classes.modules.encryptionHelper", `xml` = module "classes.modules.xml", `lua` = module "classes.modules.lua", `titleScreen` = module "classes.interface.screens.titleScreen", `gameSettings` = module "classes.modules.gameSettings", `deviceSettings` = module "classes.configs.deviceSettings", `serverSettings` = module "classes.configs.serverSettings", `languageHelper` = module "classes.modules.languageHelper", `LaunchArgumentHelper` = module "classes.modules.LaunchArgumentHelper", `CoromonDebugHelper` = module "classes.debug.CoromonDebugHelper", `displayGroups` = table, `UniversalLinks` = module "classes.modules.UniversalLinks", `GameCenter` = module "classes.modules.GameCenter", `Analytics` = module "classes.modules.analytics.Analytics", `AI` = instance of require("classes.battle.rules.AI"), `afterSkillMoveMiss` = instance of require("classes.battle.rules.afterSkillMoveMiss"), `afterSkillMoveEffectiveAttack` = instance of require("classes.battle.rules.afterSkillMoveEffectiveAttack"), `afterPartialSkillMoveCriticalHit` = instance of require("classes.battle.rules.afterPartialSkillMoveCriticalHit"), `debugScreen` = nil, `debugScreenScreenOptions` = nil, `debugSimulatorIsStartedByTiled` = true, `debugMapPath` = loadMapFile.mapPath, `debugMapFile` = loadMapFile.mapFile, `debugMapOptions` = table

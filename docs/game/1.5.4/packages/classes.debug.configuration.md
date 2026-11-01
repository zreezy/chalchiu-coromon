# classes.debug.configuration

Coromon 1.5.4. 12 module(s). [Back to index](../README.md)

[debug_configure_BattleEnvironmentPreview](#debug_configure_battleenvironmentpreview), [debug_configure_ColoredMonsterTypesInnerContainer](#debug_configure_coloredmonstertypesinnercontainer), [debug_configure_monsters_battleConfig](#debug_configure_monsters_battleconfig), [debug_configure_monsters_battleDomeOpponentPreviewConfig](#debug_configure_monsters_battledomeopponentpreviewconfig), [debug_configure_monsters_burnConditionConfig](#debug_configure_monsters_burnconditionconfig), [debug_configure_monsters_hitboxConfig](#debug_configure_monsters_hitboxconfig), [debug_configure_monsters_onlineAvatarConfig](#debug_configure_monsters_onlineavatarconfig), [debug_configure_monsters_shadowConfig](#debug_configure_monsters_shadowconfig), [debug_configure_monsters_shiftedShapeConfig](#debug_configure_monsters_shiftedshapeconfig), [debug_configure_monsters_tallMonsterButtonConfig](#debug_configure_monsters_tallmonsterbuttonconfig), [debug_configure_npcCharacter](#debug_configure_npccharacter), [debug_configure_skillButtonIcons](#debug_configure_skillbuttonicons)

### debug_configure_BattleEnvironmentPreview

`classes.debug.configuration.debug_configure_BattleEnvironmentPreview`

- requires: `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

### debug_configure_ColoredMonsterTypesInnerContainer

`classes.debug.configuration.debug_configure_ColoredMonsterTypesInnerContainer`

- requires: `classes.interface.ColoredMonsterTypesInnerContainer`, `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

<details><summary>Functions (2)</summary>

- `monsterWithTypes:getRandomizablePrimaryType()`
- `monsterWithTypes:getRandomizableSecondaryType()`

</details>

### debug_configure_monsters_battleConfig

`classes.debug.configuration.debug_configure_monsters_battleConfig`

- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.modules.battle.monsterSpriteBuilder`
- defines globals: `debugScreen` = false, `debugIsBattleVisible` = true, `debugIsBattleInterfaceInvisible` = false

<details><summary>Fields with default values (2)</summary>

- `debugSettings.UI.allowWorldDebug` = `false`
- `Battle.isVisible` = `true`

</details>

### debug_configure_monsters_battleDomeOpponentPreviewConfig

`classes.debug.configuration.debug_configure_monsters_battleDomeOpponentPreviewConfig`

- requires: `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

### debug_configure_monsters_burnConditionConfig

`classes.debug.configuration.debug_configure_monsters_burnConditionConfig`

- requires: `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreenScreenOptions` = value, `debugScreen` = value

### debug_configure_monsters_hitboxConfig

`classes.debug.configuration.debug_configure_monsters_hitboxConfig`

- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

### debug_configure_monsters_onlineAvatarConfig

`classes.debug.configuration.debug_configure_monsters_onlineAvatarConfig`

- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

<details><summary>Fields with default values (1)</summary>

- `monsterOnlineAvatarContainerVisual.alpha` = `0.25`

</details>

### debug_configure_monsters_shadowConfig

`classes.debug.configuration.debug_configure_monsters_shadowConfig`

- requires: `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

### debug_configure_monsters_shiftedShapeConfig

`classes.debug.configuration.debug_configure_monsters_shiftedShapeConfig`

- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.interface.UIScrollBarBuilder`, `classes.interface.UIScrollBarBackgroundBuilder`, `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

### debug_configure_monsters_tallMonsterButtonConfig

`classes.debug.configuration.debug_configure_monsters_tallMonsterButtonConfig`

- requires: `classes.interface.TallMonsterButton`, `classes.modules.interface.scrollViewBuilder`
- defines globals: `debugScreen` = false

### debug_configure_npcCharacter

`classes.debug.configuration.debug_configure_npcCharacter`

- defines globals: `debugScreen` = "createCharacterScreen", `debugScreenScreenOptions` = table

<details><summary>Fields with default values (1)</summary>

- `debugScreenScreenOptions.mode` = `"npc"`

</details>

### debug_configure_skillButtonIcons

`classes.debug.configuration.debug_configure_skillButtonIcons`

- requires: `classes.modules.interface.scrollViewBuilder`, `classes.interface.battle.SkillButton`, `classes.lists.skillButtonOffsetList`
- defines globals: `debugScreen` = false

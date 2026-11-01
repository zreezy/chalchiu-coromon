# classes.tests.ui_screenshots

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[sharedDataBuilder](#shareddatabuilder), [test_ui_with_screenshots](#test_ui_with_screenshots)

### sharedDataBuilder

`classes.tests.ui_screenshots.sharedDataBuilder`

- returns `t`
- requires: `classes.modules.battle.monsterSpriteBuilder`

- `sharedDataBuilder:build()`

<details><summary>Instance / other functions (4)</summary>

- `monsterSpriteParticipant:getMonsterSpritesInBattle()`
- `monsterSpriteParticipant:getAllMonsterSprites()`
- `data:findLongestToastableItemUseMessage(_items, _mode)`
- `data:findLongestBuyableItemToastMessage(_items)`

</details>

### test_ui_with_screenshots

`classes.tests.ui_screenshots.test_ui_with_screenshots`

- uses coroutines
- requires: `classes.interface.overlays.MessageToast`, `classes.interface.MonsterSpriteSkinMilestoneAchievedPopup`, `classes.tests.ui_screenshots.sharedDataBuilder`, `classes.tests.ui_screenshots.sections.title_screen`, `classes.tests.ui_screenshots.sections.battle`, `classes.tests.ui_screenshots.sections.shared_ui`, `classes.tests.ui_screenshots.sections.overlays`, `classes.tests.ui_screenshots.sections.overlays_withManyVariants`, `classes.tests.ui_screenshots.sections.world_interface`, `classes.tests.ui_screenshots.sections.pause_menu_core`, `classes.tests.ui_screenshots.sections.pause_menu_monster_summary`, `classes.tests.ui_screenshots.sections.pause_menu_online`, `classes.tests.ui_screenshots.sections.pause_menu_extras`, `classes.tests.ui_screenshots.sections.rogue`
- defines globals: `Analytics` = value, `isTakingUIScreenshots` = true

<details><summary>Functions (6)</summary>

- `playerStats:getPlaytimeInSeconds()`
- `gameSettings:getShowAchievementAchievedPopupSetting()`
- `MonsterSpriteSkinMilestoneAchievedPopup:showAndHide(_monsterSpriteSkinMilestone, _onComplete)`
- `sharedData.optionallyAddSuffix(_name)`
- `sharedData.makeDir(_dirName)`
- `sharedData.replaceDir(_dirName)`

</details>

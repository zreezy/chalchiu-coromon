# classes.lists

Coromon 1.5.4. 45 module(s). [Back to index](../README.md)

[BattleEnvironmentPreviewOffsetList](#battleenvironmentpreviewoffsetlist), [EncounterZoneConfigsByMapFile](#encounterzoneconfigsbymapfile), [EncounterZoneList](#encounterzonelist), [FruitGrowingPotList](#fruitgrowingpotlist), [MonsterTypeIconGapOffsetConfigList](#monstertypeicongapoffsetconfiglist), [QuestMonsterList](#questmonsterlist), [TrainerEncounterConfigs](#trainerencounterconfigs), [TrainerMonsterList](#trainermonsterlist), [characterConfigList](#characterconfiglist), [characterList](#characterlist), [characterPartList](#characterpartlist), [fontInfoList](#fontinfolist), [itemList](#itemlist), [milestoneList](#milestonelist), [monsterBattleConfigList](#monsterbattleconfiglist), [monsterBattleDomeOpponentPreviewConfigList](#monsterbattledomeopponentpreviewconfiglist), [monsterBorderSpriteList](#monsterborderspritelist), [monsterBurnConditionConfigList](#monsterburnconditionconfiglist), [monsterDataList](#monsterdatalist), [monsterDoubleGlowSpriteList](#monsterdoubleglowspritelist), [monsterFamilyAncestorDataList](#monsterfamilyancestordatalist), [monsterFamilyDataList](#monsterfamilydatalist), [monsterGlowSpriteList](#monsterglowspritelist), [monsterHitboxConfigList](#monsterhitboxconfiglist), [monsterMaskDimensionList](#monstermaskdimensionlist), [monsterOnlineAvatarConfigList](#monsteronlineavatarconfiglist), [monsterOutlineSpriteList](#monsteroutlinespritelist), [monsterPortraitConfigList](#monsterportraitconfiglist), [monsterShadowConfigList](#monstershadowconfiglist), [monsterShadowOffsetList](#monstershadowoffsetlist), [monsterShadowSpriteList](#monstershadowspritelist), [monsterShiftedShapeConfigList](#monstershiftedshapeconfiglist), [monsterSpriteList](#monsterspritelist), [monsterTallMonsterButtonConfigIfNoHoldItemIndicatorList](#monstertallmonsterbuttonconfigifnoholditemindicatorlist), [monsterTallMonsterButtonConfigList](#monstertallmonsterbuttonconfiglist), [questList](#questlist), [skillButtonOffsetList](#skillbuttonoffsetlist), [skillDataList](#skilldatalist), [soundDurationList](#sounddurationlist), [soundList](#soundlist), [spriteList](#spritelist), [traitBaseStatFactorsByEnhancementStageList](#traitbasestatfactorsbyenhancementstagelist), [traitDisabledInRandomizerList](#traitdisabledinrandomizerlist), [traitList](#traitlist), [worldLocationList](#worldlocationlist)

### BattleEnvironmentPreviewOffsetList

`classes.lists.BattleEnvironmentPreviewOffsetList`

### EncounterZoneConfigsByMapFile

`classes.lists.EncounterZoneConfigsByMapFile`

### EncounterZoneList

`classes.lists.EncounterZoneList`

- returns `t`
- requires: `classes.lists.EncounterZoneConfigsByMapFile`

- `EncounterZoneList:getCatchableMonsterUIDs()`
- `EncounterZoneList:getCatchableMonsterUIDsBySummedBaseStatsGroup()`
- `EncounterZoneList:populatedRandomizedZones()`
- `EncounterZoneList:rollRandomizableMonstersForZone(_mapFile, _zoneUID)`
- `EncounterZoneList:rollRandomizableMonstersForMapFile(_mapFile, _useFishingZones)`
- `EncounterZoneList:hasZonesForMapFile(_mapFile)`
- `EncounterZoneList:getMapFilesWithMonsterUID(_monsterUID)`
- `EncounterZoneList:getChanceByTypeInMapFile(_mapFile)`
- `EncounterZoneList:getChanceByMonsterUIDInMapFiles(_mapFiles)`
- `EncounterZoneList:get()`

<details><summary>Instance / other functions (3)</summary>

- `encounterZone:roll()`
- `encounterZone:getStepsUntilSeenAllEncounters()`
- `encounterZone:getEncounters()`

</details>

### FruitGrowingPotList

`classes.lists.FruitGrowingPotList`

### MonsterTypeIconGapOffsetConfigList

`classes.lists.MonsterTypeIconGapOffsetConfigList`

### QuestMonsterList

`classes.lists.QuestMonsterList`

- returns `t`

- `QuestMonsterList:getRandomizedAntiStarterUID()`
- `QuestMonsterList:getRandomizedTitanUIDByTitanUID()`
- `QuestMonsterList:getRandomizedTitanEssenceUIDByTitanEssenceUID()`
- `QuestMonsterList:getRandomizedStarterUIDByStarterUID()`
- `QuestMonsterList:getRandomizedMonsterUIDByQuestMonsterUID()`
- `QuestMonsterList:populateRandomizedMonsters()`
- `QuestMonsterList:getRandomizableTitanEssenceUID(_titanEssenceUID)`
- `QuestMonsterList:getRandomizableTitanUID(_titanUID)`
- `QuestMonsterList:getRandomizableQuestMonsterUID(_questMonsterUID)`
- `QuestMonsterList:getRandomizableStarterUID(_starterUID)`
- `QuestMonsterList:getRandomizableAntiStarterUID(_starterUID)`

### TrainerEncounterConfigs

`classes.lists.TrainerEncounterConfigs`

### TrainerMonsterList

`classes.lists.TrainerMonsterList`

- returns `t`
- requires: `classes.lists.TrainerEncounterConfigs`, `classes.monsters.Monster`

- `TrainerMonsterList:getRandomizedMonsterUIDsByTrainerUID()`
- `TrainerMonsterList:populateRandomizedMonsters()`
- `TrainerMonsterList:getRandomizableTrainerMonstersFor(_trainerUID)`

### characterConfigList

`classes.lists.characterConfigList`

### characterList

`classes.lists.characterList`

- returns `t`
- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

- `characterList:getNameFor(_character)`
- `characterList:isWubbonianCharacter(_character)`
- `characterList:getSpeakerStyleFor(_character)`
- `characterList:getSpeakerFor(_character)`
- `characterList:getCharacterConfigFor(_character)`
- `characterList:getCharacters()`

<details><summary>Instance / other functions (4)</summary>

- `speakerObject:getSpeakerName()`
- `speakerObject:getSpeakerHead(_parent)`
- `speakerObject:getSpeakerType()`
- `speakerObject:getSpeakerStyle()`

</details>

### characterPartList

`classes.lists.characterPartList`

### fontInfoList

`classes.lists.fontInfoList`

- returns `fontInfoList`
- requires: `fonts.generatedFontInfo`, `fonts.glyphIdByCharacter_pixelArt`

<details><summary>Fields with default values (1)</summary>

- `fontInfoList.textVerticalCenterCorrectionWhenNotTrimmed` = `1`

</details>

### itemList

`classes.lists.itemList`

- returns `itemList`

### milestoneList

`classes.lists.milestoneList`

### monsterBattleConfigList

`classes.lists.monsterBattleConfigList`

### monsterBattleDomeOpponentPreviewConfigList

`classes.lists.monsterBattleDomeOpponentPreviewConfigList`

### monsterBorderSpriteList

`classes.lists.monsterBorderSpriteList`

### monsterBurnConditionConfigList

`classes.lists.monsterBurnConditionConfigList`

### monsterDataList

`classes.lists.monsterDataList`

### monsterDoubleGlowSpriteList

`classes.lists.monsterDoubleGlowSpriteList`

### monsterFamilyAncestorDataList

`classes.lists.monsterFamilyAncestorDataList`

### monsterFamilyDataList

`classes.lists.monsterFamilyDataList`

### monsterGlowSpriteList

`classes.lists.monsterGlowSpriteList`

### monsterHitboxConfigList

`classes.lists.monsterHitboxConfigList`

### monsterMaskDimensionList

`classes.lists.monsterMaskDimensionList`

### monsterOnlineAvatarConfigList

`classes.lists.monsterOnlineAvatarConfigList`

### monsterOutlineSpriteList

`classes.lists.monsterOutlineSpriteList`

### monsterPortraitConfigList

`classes.lists.monsterPortraitConfigList`

### monsterShadowConfigList

`classes.lists.monsterShadowConfigList`

### monsterShadowOffsetList

`classes.lists.monsterShadowOffsetList`

### monsterShadowSpriteList

`classes.lists.monsterShadowSpriteList`

### monsterShiftedShapeConfigList

`classes.lists.monsterShiftedShapeConfigList`

### monsterSpriteList

`classes.lists.monsterSpriteList`

### monsterTallMonsterButtonConfigIfNoHoldItemIndicatorList

`classes.lists.monsterTallMonsterButtonConfigIfNoHoldItemIndicatorList`

### monsterTallMonsterButtonConfigList

`classes.lists.monsterTallMonsterButtonConfigList`

### questList

`classes.lists.questList`

- returns `quests`

<details><summary>Functions (8)</summary>

- `questObject:getUID()`
- `questObject:getCharacter()`
- `questObject:addChapter(_chapterUID)`
- `chapterObject:getUID()`
- `chapterObject:setOnAfter(_function)`
- `chapterObject:getOnAfter()`
- `questObject:getChapter(_chapterUID)`
- `questObject:getChapters()`

</details>

### skillButtonOffsetList

`classes.lists.skillButtonOffsetList`

### skillDataList

`classes.lists.skillDataList`

### soundDurationList

`classes.lists.soundDurationList`

### soundList

`classes.lists.soundList`

### spriteList

`classes.lists.spriteList`

- returns `t`

<details><summary>Fields with default values (106)</summary>

- `spriteList.bed.width` = `32`
- `spriteList.bed.height` = `64`
- `spriteList.bed.amount_frames` = `3`
- `spriteList.bed.path` = `"maps/homeTown/objects/"`
- `spriteList.bed.file` = `"bed.png"`
- `spriteList.bed.sequences` = `{}`
- `spriteList.iceTownBed.width` = `32`
- `spriteList.iceTownBed.height` = `64`
- `spriteList.iceTownBed.amount_frames` = `3`
- `spriteList.iceTownBed.path` = `"maps/iceTown/objects/"`
- `spriteList.iceTownBed.file` = `"bed.png"`
- `spriteList.iceTownBed.sequences` = `{}`
- `spriteList.singleBed.width` = `32`
- `spriteList.singleBed.height` = `64`
- `spriteList.singleBed.amount_frames` = `3`
- `spriteList.singleBed.path` = `"maps/ghostTown/objects/"`
- `spriteList.singleBed.file` = `"singleBed.png"`
- `spriteList.singleBed.sequences` = `{}`
- `spriteList.doubleBed.width` = `48`
- `spriteList.doubleBed.height` = `64`
- `spriteList.doubleBed.amount_frames` = `3`
- `spriteList.doubleBed.path` = `"maps/ghostTown/objects/"`
- `spriteList.doubleBed.file` = `"doubleBed.png"`
- `spriteList.doubleBed.sequences` = `{}`
- `spriteList.programming_monitor.width` = `16`
- `spriteList.programming_monitor.height` = `10`
- `spriteList.programming_monitor.amount_frames` = `8`
- `spriteList.programming_monitor.loopCount` = `0`
- `spriteList.programming_monitor.path` = `"maps/luxSolisTown/objects/"`
- `spriteList.programming_monitor.file` = `"programming_monitor.png"`
- `spriteList.programming_monitor.frames` = `{}`
- `spriteList.programming_monitor.timePerFrame` = `{}`
- `spriteList.coromonConnectifier_monitor.width` = `16`
- `spriteList.coromonConnectifier_monitor.height` = `10`
- `spriteList.coromonConnectifier_monitor.amount_frames` = `45`
- `spriteList.coromonConnectifier_monitor.timePerFrame` = `60`
- `spriteList.coromonConnectifier_monitor.loopCount` = `1`
- `spriteList.coromonConnectifier_monitor.path` = `"maps/luxSolisTown/objects/"`
- `spriteList.coromonConnectifier_monitor.file` = `"coromonConnectifier_monitor.png"`
- `spriteList.coromonConnectifier_monitor.frames` = `{}`
- ... 66 more in `api.json`

</details>

### traitBaseStatFactorsByEnhancementStageList

`classes.lists.traitBaseStatFactorsByEnhancementStageList`

### traitDisabledInRandomizerList

`classes.lists.traitDisabledInRandomizerList`

### traitList

`classes.lists.traitList`

### worldLocationList

`classes.lists.worldLocationList`

- returns `worldLocationList`

<details><summary>Fields with default values (132)</summary>

- `worldLocationList.luxSolisTown.worldMapLocation` = `{}`
- `worldLocationList.luxSolisTown.battleEnvironmentUID` = `"luxSolisTown"`
- `worldLocationList.luxSolisTown.locationOrder` = `1`
- `worldLocationList.luxSolisTown.locationIcon` = `"luxSolisTown"`
- `worldLocationList.luxSolisTown.locationDotOffset` = `{}`
- `worldLocationList.luxSolisTown.mapFilesWithEncounterZones` = `{}`
- `worldLocationList.luxSolisTown.hasCloud` = `true`
- `worldLocationList.luxSolisTown.teleporter` = `"luxSolisTown"`
- `worldLocationList.luxSolisRoute.worldMapLocation` = `{}`
- `worldLocationList.luxSolisRoute.battleEnvironmentUID` = `"luxSolisRoute"`
- `worldLocationList.luxSolisRoute.locationOrder` = `2`
- `worldLocationList.luxSolisRoute.locationIcon` = `"route"`
- `worldLocationList.luxSolisRoute.locationDotOffset` = `{}`
- `worldLocationList.luxSolisRoute.mapFilesWithEncounterZones` = `{}`
- `worldLocationList.amishTown.worldMapLocation` = `{}`
- `worldLocationList.amishTown.battleEnvironmentUID` = `"amishTown"`
- `worldLocationList.amishTown.locationOrder` = `3`
- `worldLocationList.amishTown.locationIcon` = `"amishTown"`
- `worldLocationList.amishTown.locationDotOffset` = `{}`
- `worldLocationList.amishTown.mapFilesWithEncounterZones` = `{}`
- `worldLocationList.amishTown.hasCloud` = `true`
- `worldLocationList.amishTown.teleporter` = `"houseNoah_bf1"`
- `worldLocationList.amishRoute.worldMapLocation` = `{}`
- `worldLocationList.amishRoute.battleEnvironmentUID` = `"luxSolisRoute"`
- `worldLocationList.amishRoute.locationOrder` = `4`
- `worldLocationList.amishRoute.locationIcon` = `"route"`
- `worldLocationList.amishRoute.locationDotOffset` = `{}`
- `worldLocationList.amishRoute.mapFilesWithEncounterZones` = `{}`
- `worldLocationList.harbor.worldMapLocation` = `{}`
- `worldLocationList.harbor.battleEnvironmentUID` = `"luxSolisRoute"`
- `worldLocationList.harbor.locationOrder` = `5`
- `worldLocationList.harbor.locationIcon` = `"route"`
- `worldLocationList.harbor.locationDotOffset` = `{}`
- `worldLocationList.harbor.mapFilesWithEncounterZones` = `{}`
- `worldLocationList.electricTown.worldMapLocation` = `{}`
- `worldLocationList.electricTown.battleEnvironmentUID` = `"electricTown"`
- `worldLocationList.electricTown.locationOrder` = `6`
- `worldLocationList.electricTown.locationIcon` = `"electricTown"`
- `worldLocationList.electricTown.locationDotOffset` = `{}`
- `worldLocationList.electricTown.mapFilesWithEncounterZones` = `{}`
- ... 92 more in `api.json`

</details>

# classes.enums

Coromon 1.5.4. 39 module(s). [Back to index](../README.md)

[Achievement](#achievement), [AfterCatchMonsterNicknameMode](#aftercatchmonsternicknamemode), [AfterCatchMonsterSummaryMode](#aftercatchmonstersummarymode), [ArtifactRarity](#artifactrarity), [BattleDomeDifficulty](#battledomedifficulty), [BattleDomeMode](#battledomemode), [BattleEnvironment](#battleenvironment), [BattleMusic](#battlemusic), [CatchingRule](#catchingrule), [Enum](#enum), [ExpeditionPerk](#expeditionperk), [HexagonTileActionType](#hexagontileactiontype), [HexagonWorldBiome](#hexagonworldbiome), [HubSpecialty](#hubspecialty), [IAP](#iap), [LocalisableEnum](#localisableenum), [LocalisableEnumWithDescription](#localisableenumwithdescription), [MonsterSpriteSkin](#monsterspriteskin), [MonsterSpriteSkinForEncounterZonesMode](#monsterspriteskinforencounterzonesmode), [MonsterSpriteSkinForTrainerMonstersMode](#monsterspriteskinfortrainermonstersmode), [MonsterSpriteSkinMilestone](#monsterspriteskinmilestone), [MonsterStorageScreenSortMode](#monsterstoragescreensortmode), [OnlineAuthenticationProvider](#onlineauthenticationprovider), [OnlineAvatar](#onlineavatar), [OnlineIdentityProvider](#onlineidentityprovider), [OnlineTier](#onlinetier), [OnlineWinBattleTaunt](#onlinewinbattletaunt), [QuestionMarkEvent](#questionmarkevent), [RandomizeEncounterZonesMode](#randomizeencounterzonesmode), [RandomizeEvolutionsMode](#randomizeevolutionsmode), [RandomizeQuestMonstersMode](#randomizequestmonstersmode), [RandomizeSkillsMode](#randomizeskillsmode), [RandomizeStartersMode](#randomizestartersmode), [RandomizeTrainerMonstersMode](#randomizetrainermonstersmode), [RandomizeTypesMode](#randomizetypesmode), [RogueMineral](#roguemineral), [RoguePlayableCharacter](#rogueplayablecharacter), [Type](#type), [TypeEffectivenessMode](#typeeffectivenessmode)

### Achievement

`classes.enums.Achievement`

- requires: `classes.interface.AchievementAchievedPopup`

- `Achievement:resetPercentageOfMaxProgressCache()`

<details><summary>Instance / other functions (10)</summary>

- `valueObject:getMaxProgress()`
- `valueObject:isHidden()`
- `valueObject:createAchievedIcon(_parent)`
- `valueObject:createUnachievedIcon(_parent)`
- `valueObject:getProgress(_saveslotData)`
- `valueObject:isAchieved(_saveslotData)`
- `valueObject:setProgress(_progress, _saveslotData)`
- `valueObject:setProgressAndShowIndicator(_progress, _saveslotData)`
- `valueObject:achieve(_saveslotData)`
- `valueObject:achieveAndShowIndicator(_saveslotData)`

</details>

<details><summary>Fields with default values (1)</summary>

- `Achievement.values` = `{}`

</details>

### AfterCatchMonsterNicknameMode

`classes.enums.AfterCatchMonsterNicknameMode`

<details><summary>Functions (1)</summary>

- `valueObject:optionallyAskAndExecute(_onComplete, _options)`

</details>

<details><summary>Fields with default values (1)</summary>

- `AfterCatchMonsterNicknameMode.values` = `{}`

</details>

### AfterCatchMonsterSummaryMode

`classes.enums.AfterCatchMonsterSummaryMode`

<details><summary>Functions (1)</summary>

- `valueObject:optionallyAskAndExecute(_onComplete, _options)`

</details>

<details><summary>Fields with default values (1)</summary>

- `AfterCatchMonsterSummaryMode.values` = `{}`

</details>

### ArtifactRarity

`classes.enums.ArtifactRarity`

- `ArtifactRarity:roll()`

<details><summary>Instance / other functions (2)</summary>

- `valueObject:getRollWeight()`
- `valueObject:getTextColorUID()`

</details>

<details><summary>Fields with default values (1)</summary>

- `ArtifactRarity.values` = `{}`

</details>

### BattleDomeDifficulty

`classes.enums.BattleDomeDifficulty`

<details><summary>Functions (5)</summary>

- `valueObject:getOpponentLevel()`
- `valueObject:getBattleDomeTokenMultiplier()`
- `valueObject:mayHaveDuplicateSpecies()`
- `valueObject:mayHaveDuplicateHoldItems()`
- `valueObject:opponentUsesSmarterAI()`

</details>

<details><summary>Fields with default values (1)</summary>

- `BattleDomeDifficulty.values` = `{}`

</details>

### BattleDomeMode

`classes.enums.BattleDomeMode`

<details><summary>Functions (4)</summary>

- `valueObject:isTitanRush()`
- `valueObject:isTrainerRush()`
- `valueObject:isCoromonRush()`
- `valueObject:getMinimumScoreByStar()`

</details>

<details><summary>Fields with default values (1)</summary>

- `BattleDomeMode.values` = `{}`

</details>

### BattleEnvironment

`classes.enums.BattleEnvironment`

- requires: `classes.battle.environments.luxSolisTown.luxSolisTownEnvironment`, `classes.battle.environments.luxSolisRoute.luxSolisRouteEnvironment`, `classes.battle.environments.amishTown.amishTownEnvironment`, `classes.battle.environments.desertTown.palaceEnvironment`, `classes.battle.environments.desertRoute.pyramidEnvironment`, `classes.battle.environments.desertRoute.desertRouteEnvironment`, `classes.battle.environments.electricTown.electricTitanAreaEnvironment`, `classes.battle.environments.electricTown.electricCaveEnvironment`, `classes.battle.environments.electricTown.electricCaveCrimsoniteEnvironment`, `classes.battle.environments.electricTown.electricTownEnvironment`, `classes.battle.environments.electricTown.powerTowerEnvironment`, `classes.battle.environments.ghostRoute.graveyardEnvironment`, `classes.battle.environments.ghostRoute.graveyardDimensionEnvironment`, `classes.battle.environments.ghostRoute.mescherRealmEnvironment`, `classes.battle.environments.ghostRoute.templeDungeonEnvironment`, `classes.battle.environments.ghostRoute.ghostTitanAreaEnvironment`, `classes.battle.environments.swampRoute.swampRouteEnvironment`, `classes.battle.environments.oasisCave.oasisCaveEnvironment`, `classes.battle.environments.fireTown.volcanoEnvironment`, `classes.battle.environments.fireTown.fireRouteEnvironment`, `classes.battle.environments.fireTown.dojoEnvironment`, `classes.battle.environments.iceCave.iceCaveEnvironment`, `classes.battle.environments.iceTown.iceTownEnvironment`, `classes.battle.environments.waterTown.waterTownEnvironment`, `classes.battle.environments.waterTown.waterTitanTempleEnvironment`

<details><summary>Functions (5)</summary>

- `valueObject:getEncounterOverlayType()`
- `valueObject:getEnvironment()`
- `valueObject:getEnvironmentColor()`
- `valueObject:isUnlockedOnline()`
- `valueObject:createPreview(_parent, _optionalTextFillColor)`

</details>

<details><summary>Fields with default values (1)</summary>

- `BattleEnvironment.values` = `{}`

</details>

### BattleMusic

`classes.enums.BattleMusic`

<details><summary>Functions (2)</summary>

- `valueObject:getIntroPath()`
- `valueObject:getPath()`

</details>

<details><summary>Fields with default values (1)</summary>

- `BattleMusic.values` = `{}`

</details>

### CatchingRule

`classes.enums.CatchingRule`

<details><summary>Functions (10)</summary>

- `valueObject:allowsWild()`
- `valueObject:allowsTrainer()`
- `valueObject:requiresLuxLure()`
- `valueObject:isNeverAllow()`
- `valueObject:isAlwaysAllowWildAndTrainers()`
- `valueObject:isAlwaysAllowWild()`
- `valueObject:isAlwaysAllowTrainer()`
- `valueObject:isRequireLuxLure()`
- `valueObject:isRequireLuxLureButNotForPerfects()`
- `valueObject:isRequireLuxLureButNotForPerfectsAndPotents()`

</details>

<details><summary>Fields with default values (1)</summary>

- `CatchingRule.values` = `{}`

</details>

### Enum

`classes.enums.Enum`

- returns `t`

- `Enum:new()`

<details><summary>Instance / other functions (4)</summary>

- `enum:newValueObject()`
- `enumValueObject:setValue(_value)`
- `enumValueObject:getValue()`
- `enum:resolveValuesForValueObjects()`

</details>

### ExpeditionPerk

`classes.enums.ExpeditionPerk`

<details><summary>Functions (2)</summary>

- `valueObject:getCharacter()`
- `valueObject:getBattleEffect()`

</details>

<details><summary>Fields with default values (1)</summary>

- `ExpeditionPerk.values` = `{}`

</details>

### HexagonTileActionType

`classes.enums.HexagonTileActionType`

- requires: `classes.hexagon.actions.SelectTeleporterDiskLocationHexagonTileAction`, `classes.hexagon.actions.BossBattleHexagonTileAction`, `classes.hexagon.actions.RecallHexagonTileAction`, `classes.hexagon.actions.ItemChestHexagonTileAction`, `classes.hexagon.actions.WildEncounterBattleHexagonTileAction`, `classes.hexagon.actions.TrainerBattleHexagonTileAction`, `classes.hexagon.actions.RestHexagonTileAction`, `classes.hexagon.actions.RandomEventHexagonTileAction`, `classes.hexagon.actions.ShopHexagonTileAction`

<details><summary>Functions (3)</summary>

- `valueObject:build(_platform)`
- `valueObject:isForced(_actionTile)`
- `valueObject:calculateWeight(_actionTile)`

</details>

<details><summary>Fields with default values (1)</summary>

- `HexagonTileActionType.values` = `{}`

</details>

### HexagonWorldBiome

`classes.enums.HexagonWorldBiome`

- requires: `classes.hexagon.biomes.grass.GrassHexagonWorldBiome`, `classes.hexagon.biomes.fire.FireHexagonWorldBiome`, `classes.hexagon.biomes.sand.SandHexagonWorldBiome`, `classes.hexagon.biomes.ghost.GhostHexagonWorldBiome`

<details><summary>Functions (3)</summary>

- `valueObject:addMapPreset(_mapPresetName)`
- `valueObject:rollRandomMapPreset()`
- `valueObject:create(_mapPreset)`

</details>

<details><summary>Fields with default values (1)</summary>

- `HexagonWorldBiome.values` = `{}`

</details>

### HubSpecialty

`classes.enums.HubSpecialty`

<details><summary>Functions (5)</summary>

- `valueObject:getCharacter()`
- `valueObject:getBattleEffect()`
- `valueObject:getOutpostBudgetCostPerLevel()`
- `valueObject:getOutpostBudgetCostForLevel(_level)`
- `valueObject:resolveAllocatedOutpostBudgetForLevel(_level)`

</details>

<details><summary>Fields with default values (1)</summary>

- `HubSpecialty.values` = `{}`

</details>

### IAP

`classes.enums.IAP`

- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.RestorePurchasesConfirmPopup`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`

- `IAP:parseTokenFromAndroidReceiptSafe(_receipt)`
- `IAP:parseAcknowledgementFromAndroidReceipt(_receipt)`
- `IAP:validatePurchasesIfOnAndroid(_onComplete)`

<details><summary>Instance / other functions (18)</summary>

- `valueObject:getItems()`
- `valueObject:getGooglePlayPassTimeoutSeconds()`
- `valueObject:getProductCategory()`
- `valueObject:getProductPriceForSimulator()`
- `valueObject:getProductPriceNumberForSimulator()`
- `valueObject:isConsumable()`
- `valueObject:isNonConsumable()`
- `valueObject:isNonRenewingSubscription()`
- `valueObject:isAutoRenewableSubscription()`
- `valueObject:isSubscription()`
- `valueObject:isItemPack()`
- `valueObject:calculateIdentifier(_dontAllowNil)`
- `valueObject:calculateProductDiscount()`
- `valueObject:purchase(_onBeforeShowPopup, _onPurchaseComplete)`
- `valueObject:onPurchased(_purchaseReceipt, _onBeforeShowPopup, _onPurchaseComplete)`
- `valueObject:isPurchased()`
- `valueObject:setIAPStoreProduct(_product)`
- `valueObject:getIAPStoreProduct()`

</details>

<details><summary>Fields with default values (1)</summary>

- `IAP.values` = `{}`

</details>

### LocalisableEnum

`classes.enums.LocalisableEnum`

- returns `t`

- `LocalisableEnum:new(_enumName)`

<details><summary>Instance / other functions (2)</summary>

- `enum:newValueObject()`
- `enumValueObject:getLocalisedValue()`

</details>

### LocalisableEnumWithDescription

`classes.enums.LocalisableEnumWithDescription`

- returns `t`

- `LocalisableEnumWithDescription:new(_enumName)`

<details><summary>Instance / other functions (2)</summary>

- `enum:newValueObject()`
- `enumValueObject:getLocalisedDescription()`

</details>

### MonsterSpriteSkin

`classes.enums.MonsterSpriteSkin`

- requires: `classes.monsters.monsters.abstractMonsterData`

<details><summary>Functions (10)</summary>

- `valueObject:getTier()`
- `valueObject:getSuffix()`
- `valueObject:getMonsterUIDs()`
- `valueObject:getMonsterOffsetsForPreview()`
- `valueObject:getBackgroundPattern()`
- `valueObject:shouldOnlyShowWhenUnlocked()`
- `valueObject:getStyleCrystalCost()`
- `valueObject:shouldInheritPotentialColor()`
- `valueObject:hasDifferentShapeOrAnimation(_monsterUID, _side, _monsterPotentialCategory)`
- `valueObject:canBeAppliedOn(_monsterUID)`

</details>

<details><summary>Fields with default values (2)</summary>

- `MonsterSpriteSkin.values` = `{}`
- `MonsterSpriteSkin.valuesWithTier` = `{}`

</details>

### MonsterSpriteSkinForEncounterZonesMode

`classes.enums.MonsterSpriteSkinForEncounterZonesMode`

<details><summary>Functions (4)</summary>

- `valueObject:isNever()`
- `valueObject:isSometimes()`
- `valueObject:isAlways()`
- `valueObject:tryResolveMonsterSpriteSkinFor(_monsterUID)`

</details>

<details><summary>Fields with default values (1)</summary>

- `MonsterSpriteSkinForEncounterZonesMode.values` = `{}`

</details>

### MonsterSpriteSkinForTrainerMonstersMode

`classes.enums.MonsterSpriteSkinForTrainerMonstersMode`

<details><summary>Functions (4)</summary>

- `valueObject:isNever()`
- `valueObject:isSometimes()`
- `valueObject:isAlways()`
- `valueObject:tryResolveMonsterSpriteSkinFor(_monsterUID)`

</details>

<details><summary>Fields with default values (1)</summary>

- `MonsterSpriteSkinForTrainerMonstersMode.values` = `{}`

</details>

### MonsterSpriteSkinMilestone

`classes.enums.MonsterSpriteSkinMilestone`

- requires: `classes.interface.MonsterSpriteSkinMilestoneAchievedPopup`

- `MonsterSpriteSkinMilestone:getForSkin(_monsterSpriteSkin)`

<details><summary>Instance / other functions (10)</summary>

- `valueObject:getMonsterSpriteSkin()`
- `valueObject:getLocalisedValue()`
- `valueObject:getMaxProgress()`
- `valueObject:getProgress()`
- `valueObject:getRemainingProgress()`
- `valueObject:isAchieved()`
- `valueObject:setProgress(_progress)`
- `valueObject:setProgressAndShowIndicatorIfSeenCoromon(_progress)`
- `valueObject:achieve()`
- `valueObject:achieveAndShowIndicatorIfSeenCoromon()`

</details>

<details><summary>Fields with default values (1)</summary>

- `MonsterSpriteSkinMilestone.values` = `{}`

</details>

### MonsterStorageScreenSortMode

`classes.enums.MonsterStorageScreenSortMode`

<details><summary>Functions (1)</summary>

- `valueObject:getMonsterStorageSorted()`

</details>

<details><summary>Fields with default values (1)</summary>

- `MonsterStorageScreenSortMode.values` = `{}`

</details>

### OnlineAuthenticationProvider

`classes.enums.OnlineAuthenticationProvider`

- requires: `classes.modules.TapTapHelper`, `nnaccount`

<details><summary>Functions (3)</summary>

- `valueObject:getEndpoint()`
- `valueObject:getRequestData(_onRequestData)`
- `valueObject:getAvailableIdentityProviders()`

</details>

<details><summary>Fields with default values (1)</summary>

- `OnlineAuthenticationProvider.values` = `{}`

</details>

### OnlineAvatar

`classes.enums.OnlineAvatar`

- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

- `OnlineAvatar:isMonsterCategory(_category)`
- `OnlineAvatar:isCharacterCategory(_category)`
- `OnlineAvatar:isFlagCategory(_category)`
- `OnlineAvatar:getStyleCrystalCostForCategory(_category)`

<details><summary>Instance / other functions (12)</summary>

- `valueObject:getCategory()`
- `valueObject:getMonsterUID()`
- `valueObject:getMonsterPotentialCategory()`
- `valueObject:getMonsterSpriteSkinUID()`
- `valueObject:getStyleCrystalCost()`
- `valueObject:isMonsterCategory()`
- `valueObject:isCharacterCategory()`
- `valueObject:isFlagCategory()`
- `valueObject:createContainer(_parent, _team)`
- `valueObject:isOwned(_deviceId)`
- `valueObject:createLeaderboardImage(_parent)`
- `valueObject:createInnerImage(_parent)`

</details>

<details><summary>Fields with default values (2)</summary>

- `OnlineAvatar.values` = `{}`
- `OnlineAvatar.categories` = `{}`

</details>

### OnlineIdentityProvider

`classes.enums.OnlineIdentityProvider`

- requires: `plugin.appleSignIn`, `plugin.googleSignIn`

<details><summary>Functions (4)</summary>

- `valueObject:getEndpoint()`
- `valueObject:requiresNativeSignIn()`
- `valueObject:requiresWebViewSignIn()`
- `valueObject:executeNativeSignIn(_onError, _onSignedIn)`

</details>

<details><summary>Fields with default values (1)</summary>

- `OnlineIdentityProvider.values` = `{}`

</details>

### OnlineTier

`classes.enums.OnlineTier`

<details><summary>Functions (12)</summary>

- `valueObject:isRanked()`
- `valueObject:isUnknown()`
- `valueObject:createBadge(_parent)`
- `onlineTierBadge:refreshTierValue(_newValue)`
- `valueObject:getButtonStyle()`
- `valueObject:createButton(_parent, _width, _height)`
- `onlineTierButton:refreshTierValue(_newValue)`
- `valueObject:createGauntlet(_parent)`
- `valueObject:createProgressBarWithBackground(_parent, _width, _onlineSeasonRank)`
- `progressBarBackground:refreshTierValue(_newValue)`
- `progressBar:setValue(_value)`
- `progressBar:refreshTierValue(_newValue)`

</details>

<details><summary>Fields with default values (2)</summary>

- `OnlineTier.values` = `{}`
- `OnlineTier.rankedValues` = `{}`

</details>

### OnlineWinBattleTaunt

`classes.enums.OnlineWinBattleTaunt`

- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

- `OnlineWinBattleTaunt.ed:doEdDance(_emojiParent, _characterSprite, _onComplete)`

<details><summary>Instance / other functions (3)</summary>

- `valueObject:isUnlockedOnline()`
- `valueObject:executeTaunt(_parent, _characterSprite)`
- `valueObject:createTauntPreview(_parent)`

</details>

<details><summary>Fields with default values (1)</summary>

- `OnlineWinBattleTaunt.values` = `{}`

</details>

### QuestionMarkEvent

`classes.enums.QuestionMarkEvent`

<details><summary>Functions (1)</summary>

- `valueObject:getEventObject()`

</details>

<details><summary>Fields with default values (1)</summary>

- `QuestionMarkEvent.values` = `{}`

</details>

### RandomizeEncounterZonesMode

`classes.enums.RandomizeEncounterZonesMode`

<details><summary>Functions (4)</summary>

- `valueObject:isDisabled()`
- `valueObject:isBalanced()`
- `valueObject:isEveryEncounter()`
- `valueObject:isEveryEncounterZone()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeEncounterZonesMode.values` = `{}`

</details>

### RandomizeEvolutionsMode

`classes.enums.RandomizeEvolutionsMode`

<details><summary>Functions (4)</summary>

- `valueObject:isDisabled()`
- `valueObject:shouldLimitToSameType()`
- `valueObject:shouldLimitToSimilarStats()`
- `valueObject:shouldRandomlyEvolveEveryLevel()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeEvolutionsMode.values` = `{}`

</details>

### RandomizeQuestMonstersMode

`classes.enums.RandomizeQuestMonstersMode`

<details><summary>Functions (3)</summary>

- `valueObject:isDisabled()`
- `valueObject:isReplaceWithAny()`
- `valueObject:isReplaceWithSimilarStats()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeQuestMonstersMode.values` = `{}`

</details>

### RandomizeSkillsMode

`classes.enums.RandomizeSkillsMode`

<details><summary>Functions (4)</summary>

- `valueObject:isDisabled()`
- `valueObject:isShuffle()`
- `valueObject:isReplaceWithAny()`
- `valueObject:isReplaceWithAnyButPreferSameType()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeSkillsMode.values` = `{}`

</details>

### RandomizeStartersMode

`classes.enums.RandomizeStartersMode`

<details><summary>Functions (4)</summary>

- `valueObject:isDisabled()`
- `valueObject:shouldLetPlayerPickFromAny()`
- `valueObject:shouldLimitToStageOne()`
- `valueObject:shouldLimitToThreeStages()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeStartersMode.values` = `{}`

</details>

### RandomizeTrainerMonstersMode

`classes.enums.RandomizeTrainerMonstersMode`

<details><summary>Functions (4)</summary>

- `valueObject:isDisabled()`
- `valueObject:isReplaceWithAny()`
- `valueObject:isReplaceWithSameType()`
- `valueObject:isReplaceWithSimilarStats()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeTrainerMonstersMode.values` = `{}`

</details>

### RandomizeTypesMode

`classes.enums.RandomizeTypesMode`

<details><summary>Functions (4)</summary>

- `valueObject:isDisabled()`
- `valueObject:shouldShuffle()`
- `valueObject:shouldReplacePerMonster()`
- `valueObject:shouldReplacePerMonsterFamily()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RandomizeTypesMode.values` = `{}`

</details>

### RogueMineral

`classes.enums.RogueMineral`

<details><summary>Functions (2)</summary>

- `valueObject:getResearchLevels()`
- `valueObject:resolveUnlockedOutpostBudgetForResearchLevel(_researchLevel)`

</details>

<details><summary>Fields with default values (1)</summary>

- `RogueMineral.values` = `{}`

</details>

### RoguePlayableCharacter

`classes.enums.RoguePlayableCharacter`

<details><summary>Functions (3)</summary>

- `valueObject:createInitialSquad()`
- `valueObject:createInitialInventory()`
- `valueObject:resolveMascotMonsterFamily()`

</details>

<details><summary>Fields with default values (1)</summary>

- `RoguePlayableCharacter.values` = `{}`

</details>

### Type

`classes.enums.Type`

<details><summary>Functions (33)</summary>

- `valueObject:isSkillOnly()`
- `valueObject:isCrimsonite()`
- `valueObject:getColorName()`
- `valueObject:getColor()`
- `valueObject:getLightColorName()`
- `valueObject:getLightColor()`
- `valueObject:getDarkColorName()`
- `valueObject:getDarkColor()`
- `valueObject:getGradientButtonStyle()`
- `valueObject:createTypeEffectivenessStageIcon(_parent, _typeEffectivenessStage)`
- `valueObject:createSmallIconContainer(_parent)`
- `valueObject:createSmallIconWithContainer(_parent)`
- `valueObject:createBigIconWithGlow(_parent)`
- `valueObject:createBigIconWithTypeGlow(_parent)`
- `valueObject:createBigIcon(_parent)`
- `valueObject:createSmallIcon(_parent)`
- `valueObject:createSmallIconWithGlow(_parent)`
- `valueObject:createBigOrSmallIcon(_parent)`
- `valueObject:createIconWithBox(_parent)`
- `valueObject:createIconWithCornerBox(_parent)`
- `valueObject:getTypeEffectivenessStageAgainst(_monsterPrimaryType, _monsterSecondaryType)`
- `valueObject:getTypeMultiplierAgainst(_monsterPrimaryType, _monsterSecondaryType)`
- `valueObject:getTypeEffectivenessStageAgainstMonster(_monster)`
- `valueObject:getTypeMultiplierAgainstMonster(_monster)`
- `valueObject:isVeryEffectiveAgainstMonster(_monster)`
- `valueObject:isNotEffectiveAgainstMonster(_monster)`
- `valueObject:isVulnerableTo(_skillType)`
- `valueObject:isResistantTo(_skillType)`
- `valueObject:getTypeEffectivenessTypes(_typeEffectivenessMode)`
- `valueObject:veryEffectiveAgainstTypes()`
- `valueObject:notEffectiveAgainstTypes()`
- `valueObject:vulnerableToTypes()`
- `valueObject:resistantToTypes()`

</details>

<details><summary>Fields with default values (4)</summary>

- `Type.values` = `{}`
- `Type.valuesIncludingCrimsonite` = `{}`
- `Type.valuesForMonsters` = `{}`
- `Type.valuesForMonstersIncludingCrimsonite` = `{}`

</details>

### TypeEffectivenessMode

`classes.enums.TypeEffectivenessMode`

<details><summary>Functions (6)</summary>

- `valueObject:isVeryEffectiveAgainst()`
- `valueObject:isResistantTo()`
- `valueObject:isNotEffectiveAgainst()`
- `valueObject:isVulnerableTo()`
- `valueObject:getDetailedExplanationText(_type, _affectedTypes)`
- `valueObject:getSimpleExplanationText(_skillType)`

</details>

<details><summary>Fields with default values (1)</summary>

- `TypeEffectivenessMode.values` = `{}`

</details>

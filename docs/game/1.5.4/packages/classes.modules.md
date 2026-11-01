# classes.modules

Coromon 1.5.4. 79 module(s). [Back to index](../README.md)

[Class](#class), [DemoHelper](#demohelper), [EOSHelper](#eoshelper), [GOGHelper](#goghelper), [GameCenter](#gamecenter), [HexagonGridHelper](#hexagongridhelper), [IAPStore](#iapstore), [LaunchArgumentHelper](#launchargumenthelper), [OnScreenDebugNotification](#onscreendebugnotification), [Pasteboard](#pasteboard), [PlayerRogueData](#playerroguedata), [PlayerRogueSession](#playerroguesession), [PlayerSettingsDifficultyObject](#playersettingsdifficultyobject), [PushNotifications](#pushnotifications), [Shufflebag](#shufflebag), [SimplexNoise](#simplexnoise), [TapTapHelper](#taptaphelper), [UniversalLinks](#universallinks), [WeightedShufflebag](#weightedshufflebag), [abstractInventoryBuilder](#abstractinventorybuilder), [appleTVHelper](#appletvhelper), [cronHelper](#cronhelper), [csv](#csv), [cutsceneHelper](#cutscenehelper), [debugHelper](#debughelper), [directionHelper](#directionhelper), [encryptionHelper](#encryptionhelper), [eventManager](#eventmanager), [fileHelper](#filehelper), [fillEffectHelper](#filleffecthelper), [fillHelper](#fillhelper), [fontHelper](#fonthelper), [functionHelper](#functionhelper), [gameSettings](#gamesettings), [gifHelper](#gifhelper), [gridHelper](#gridhelper), [groupHelper](#grouphelper), [imageHelper](#imagehelper), [languageHelper](#languagehelper), [lua](#lua), [magnet](#magnet), [maskHelper](#maskhelper), [monsterAvatarAtlas](#monsteravataratlas), [networkTimeHelper](#networktimehelper), [paramHelper](#paramhelper), [playerBattleDomeSession](#playerbattledomesession), [playerCurrency](#playercurrency), [playerGauntlet](#playergauntlet), [playerInventory](#playerinventory), [playerMonsters](#playermonsters), [playerOnlineCasualCustomPreferences](#playeronlinecasualcustompreferences), [playerOnlineSquads](#playeronlinesquads), [playerOnlineStyle](#playeronlinestyle), [playerPerks](#playerperks), [playerQuests](#playerquests), [playerSettings](#playersettings), [playerStateHelper](#playerstatehelper), [playerStats](#playerstats), [playerWorldData](#playerworlddata), [rateAppHelper](#rateapphelper), [rectHelper](#recthelper), [shareHelper](#sharehelper), [sheetHelper](#sheethelper), [sleepable](#sleepable), [snapshotHelper](#snapshothelper), [soundHelper](#soundhelper), [spawnableHelper](#spawnablehelper), [specialEventHelper](#specialeventhelper), [spriteHelper](#spritehelper), [steamHelper](#steamhelper), [systemHelper](#systemhelper), [textHelper](#texthelper), [textureCacheHelper](#texturecachehelper), [tiledLayers](#tiledlayers), [timeHelper](#timehelper), [urlHelper](#urlhelper), [vibrateHelper](#vibratehelper), [worldTransitions](#worldtransitions), [xml](#xml)

### Class

`classes.modules.Class`

- returns `t`

- `Class:new()`

<details><summary>Instance / other functions (1)</summary>

- `class:instanceOf(_className)`

</details>

### DemoHelper

`classes.modules.DemoHelper`

- returns `t`

- `DemoHelper:getDemoMonsters()`
- `DemoHelper:getDemoMonsterFamilies()`

### EOSHelper

`classes.modules.EOSHelper`

- returns `t`
- requires: `plugin.eos`

- `EOSHelper:getAuthIdToken(_onError, _onSuccess)`
- `EOSHelper:isLoggedOn()`
- `EOSHelper:getEos()`

### GOGHelper

`classes.modules.GOGHelper`

- returns `t`
- requires: `plugin.gog`

- `GOGHelper:getEncryptedAppTicket(_onError, _onSuccess)`
- `GOGHelper:isLoggedOn()`
- `GOGHelper:unlockAchievement(_identifier)`

### GameCenter

`classes.modules.GameCenter`

- returns `t`
- requires: `plugin.gamecenter`

- `GameCenter:isEnabled()`
- `GameCenter:init(_onInit)`
- `GameCenter:getPlayerId()`
- `GameCenter:isPlayerUnderage()`
- `GameCenter:isPlayerMultiplayerGamingRestricted()`
- `GameCenter:fetchIdentityVerificationSignature(_listener)`
- `GameCenter:showAccessPoint(_location, _shouldShowHighlights)`
- `GameCenter:hideAccessPoint()`
- `GameCenter:setAccessPointFocused(_shouldFocusAccessPoint)`
- `GameCenter:triggerAccessPoint(_optionalAccessPointType)`
- `GameCenter:setAchievementProgress(_achievementUID, _progress, _shouldDisplayNotification, _submitAchievementListener)`
- `GameCenter:resetAchievements(_resetAchievementsListener)`
- `GameCenter:loadAchievements(_loadAchievementsListener)`
- `GameCenter:submitScore(_leaderboardId, _score, _listener)`

### HexagonGridHelper

`classes.modules.HexagonGridHelper`

- returns `t`

- `HexagonGridHelper:getDirections()`
- `HexagonGridHelper:getTopDirections()`
- `HexagonGridHelper:getBottomDirections()`
- `HexagonGridHelper:getOppositeDirection(_direction)`
- `HexagonGridHelper:getXYForDirection(_direction, _tileX, _tileY)`
- `HexagonGridHelper:getXYForDirections(_tileX, _tileY, _directions)`
- `HexagonGridHelper:getDeltaXYForDirection(_direction, _tileX)`
- `HexagonGridHelper:getXYForDirectionClamped(_direction, _tileX, _tileY, _maxX, _maxY)`
- `HexagonGridHelper:getDirectionForXY(_tileX1, _tileY1, _tileX2, _tileY2)`
- `HexagonGridHelper:getRelativeDirection(_baseX, _baseY, _otherX, _otherY)`
- `HexagonGridHelper:isTopDirection(_direction)`
- `HexagonGridHelper:isBottomDirection(_direction)`
- `HexagonGridHelper:isLeftDirection(_direction)`
- `HexagonGridHelper:isRightDirection(_direction)`
- `HexagonGridHelper:getRegularDirection(_direction)`
- `HexagonGridHelper:isHorizontalDirection(_direction)`
- `HexagonGridHelper:isVerticalDirection(_direction)`
- `HexagonGridHelper:getHorizontalDirectionNumber(_direction)`
- `HexagonGridHelper:getVerticalDirectionNumber(_direction)`
- `HexagonGridHelper:calculateDirectionStepsBetween(_direction1, _direction2)`
- `HexagonGridHelper:rotateRight(_direction)`
- `HexagonGridHelper:rotateLeft(_direction)`
- `HexagonGridHelper:getRandomSpriteOffsetsForTilePlacement(_sprite, _minOffset, _maxTopOverflow, _tileSurfaceWidth, _tileSurfaceHeight, _tileSlopedEdgeWidth)`
- `HexagonGridHelper:findPathBetweenPreventingInvalidDirectionChanges(_blockedTileGrid, _tileXStart, _tileYStart, _tileXEnd, _tileYEnd, _directionToCurrentTile, _limitedDirections)`
- `HexagonGridHelper:findPathBetween(_blockedTileGrid, _tileXStart, _tileYStart, _tileXEnd, _tileYEnd, _mayFallBackToClosestNode)`

### IAPStore

`classes.modules.IAPStore`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`, `classes.modules.pluginWrappers.iap`
- defines globals: `consumePurchaseTimer` = value

- `IAPStore:isAvailableForDevice()`
- `IAPStore:isGooglePlayPass()`
- `IAPStore:setOnRefund(_onRefund)`
- `IAPStore:getLastFailedTransaction()`
- `IAPStore:parsePurchasesNotListenedTo(_onComplete, _shouldParse)`
- `IAPStore:init()`
- `IAPStore:loadProducts(_onError, _onSuccess)`
- `IAPStore:arePurchasesDisabled()`
- `IAPStore:purchase(_productIdentifier, _onPurchaseComplete)`
- `IAPStore:restore(_onRestoreComplete)`

<details><summary>Instance / other functions (2)</summary>

- `storePlugin.init(_listener)`
- `storePlugin.loadProducts(_productIdentifiers, _listener)`

</details>

### LaunchArgumentHelper

`classes.modules.LaunchArgumentHelper`

- returns `t`

- `LaunchArgumentHelper:init(_launchArguments)`
- `LaunchArgumentHelper:getArgument(_index)`
- `LaunchArgumentHelper:getValue(_string)`

### OnScreenDebugNotification

`classes.modules.OnScreenDebugNotification`

- returns `t`
- requires: `classes.modules.interface.scrollViewBuilder`

- `OnScreenDebugNotification:includeTimeInMessages()`
- `OnScreenDebugNotification:clear()`
- `OnScreenDebugNotification:notify(_scope, _message)`

### Pasteboard

`classes.modules.Pasteboard`

- returns `t`
- requires: `plugin.pasteboard`

- `Pasteboard:isAvailable()`
- `Pasteboard:copy(_type, _value, _baseDir)`
- `Pasteboard:setAllowedTypes(_allowedTypes)`
- `Pasteboard:getType()`
- `Pasteboard:paste(_listener)`

### PlayerRogueData

`classes.modules.PlayerRogueData`

- returns `t`
- requires: `classes.rules.rogue.buck`, `classes.rules.rogue.dot`, `classes.rules.rogue.gunnar`, `classes.rules.rogue.juniper`, `classes.rules.rogue.merrin`, `classes.rules.rogue.saige`, `classes.rules.rogue.oracle`

- `PlayerRogueData:destroy()`
- `PlayerRogueData:onLoadSaveslotData(_saveslotData)`
- `PlayerRogueData:onSaveSaveslotData(_saveslotData)`
- `PlayerRogueData:getSelectedCharacter()`
- `PlayerRogueData:setSelectedCharacter(_character)`
- `PlayerRogueData:hasSelectedCharacterWhichLetsCoromonHoldTwoItems()`
- `PlayerRogueData:getBattleEffectForCharacter()`
- `PlayerRogueData:addXpForCharacter(_character, _value)`
- `PlayerRogueData:getXpForCharacter(_character)`
- `PlayerRogueData:getLevelUpArray()`
- `PlayerRogueData:getMaxLevelForCharacter(_character)`
- `PlayerRogueData:calculateLevelForCharacter(_character)`
- `PlayerRogueData:getXpRequiredForCharacterLevel(_character, _level)`
- `PlayerRogueData:getXpRequiredForNextCharacterLevel(_character)`
- `PlayerRogueData:getXpRequiredUntilNextCharacterLevel(_character)`
- `PlayerRogueData:getHighestStarterPotential(_monsterFamilyUID)`
- `PlayerRogueData:unlockStarterPotentialIfHighest(_monsterFamilyUID, _monsterPotential)`
- `PlayerRogueData:setNextDay()`
- `PlayerRogueData:getDay()`
- `PlayerRogueData:setHubSpecialtyLevel(_hubSpecialty, _level)`
- `PlayerRogueData:getHubSpecialtyLevel(_hubSpecialty)`
- `PlayerRogueData:getSelectedExpeditionPerkForCharacter(_character)`
- `PlayerRogueData:addMinerals(_mineral, _amount)`
- `PlayerRogueData:getAmountOfMinerals(_mineral)`
- `PlayerRogueData:unlockMineralResearchLevel(_mineral, _researchLevel)`
- `PlayerRogueData:getMineralResearchLevel(_mineral)`
- `PlayerRogueData:resolveSpentOutpostBudget()`
- `PlayerRogueData:resolveUnlockedOutpostBudget()`
- `PlayerRogueData:resolveRemainingOutpostBudget()`

### PlayerRogueSession

`classes.modules.PlayerRogueSession`

- returns `t`

- `PlayerRogueSession:destroy()`
- `PlayerRogueSession:onLoadSaveslotData(_saveslotData)`
- `PlayerRogueSession:onSaveSaveslotData(_saveslotData)`
- `PlayerRogueSession:isRogueSessionStarted()`
- `PlayerRogueSession:startRogueSession(_randomSeed, _squad, _biome, _biomeMinLevel, _biomeMaxLevel)`
- `PlayerRogueSession:stopRogueSession()`
- `PlayerRogueSession:getRandomSeed()`
- `PlayerRogueSession:setOutpostState(_newOutpostState)`
- `PlayerRogueSession:getOutpostState()`
- `PlayerRogueSession:setHubSpecialtyStateValue(_hubSpecialty, _key, _value)`
- `PlayerRogueSession:getHubSpecialtyStateValue(_hubSpecialty, _key)`
- `PlayerRogueSession:debugSetActionTileHistoryForCurrentBiome(_actionTileHistory)`
- `PlayerRogueSession:getActionTileHistoryForCurrentBiome()`
- `PlayerRogueSession:getAndValidateActionTileHistoryForCurrentBiome(_actionTileGrid, _actionTile)`
- `PlayerRogueSession:addActionTileToHistory(_type, _row, _column)`
- `PlayerRogueSession:addItemChestDataToLastActionTileHistoryEntry(_itemChestData)`
- `PlayerRogueSession:addBattleDataToLastActionTileHistoryEntry(_battleData)`
- `PlayerRogueSession:getFlattenedActionTileHistoryEntries()`
- `PlayerRogueSession:getActionTileHistoryEntriesOfType(_type)`
- `PlayerRogueSession:resolvePlayerHexagonWorldActionTileLocationFromActionTileHistory()`
- `PlayerRogueSession:getUpcomingPlayerActionTileRow()`
- `PlayerRogueSession:unsetHexagonWorldBiomeAndIncreaseIndex()`
- `PlayerRogueSession:setHexagonWorldBiome(_biome, _biomeMinLevel, _biomeMaxLevel)`
- `PlayerRogueSession:getCurrentBiomeIndex()`
- `PlayerRogueSession:getCurrentBiomeMinLevel()`
- `PlayerRogueSession:getCurrentBiomeMaxLevel()`
- `PlayerRogueSession:getCurrentBiome()`
- `PlayerRogueSession:getCurrentBiomeMapPreset()`

### PlayerSettingsDifficultyObject

`classes.modules.PlayerSettingsDifficultyObject`

- returns `t`

- `PlayerSettingsDifficultyObject:cast(_playerSettingsDifficultyObject)`
- `PlayerSettingsDifficultyObject:newNormal()`
- `PlayerSettingsDifficultyObject:newEasy()`
- `PlayerSettingsDifficultyObject:newHard()`
- `PlayerSettingsDifficultyObject:newInsane()`
- `PlayerSettingsDifficultyObject:amountOfEasierDifferences(_difficultyObject)`
- `PlayerSettingsDifficultyObject:amountOfHarderDifferences(_difficultyObject)`
- `PlayerSettingsDifficultyObject:amountOfRandomizeDifferences(_difficultyObject)`

<details><summary>Instance / other functions (32)</summary>

- `playerSettingsDifficultyObjectMeta:getCatchingRule()`
- `playerSettingsDifficultyObjectMeta:getItemPerBattleLimit()`
- `playerSettingsDifficultyObjectMeta:getTrainerHubRecoveryLimit()`
- `playerSettingsDifficultyObjectMeta:getShiftMonsterLevelsBy()`
- `playerSettingsDifficultyObjectMeta:getMutateTitanLevelsByPercentage()`
- `playerSettingsDifficultyObjectMeta:getMutateTrainerMonsterLevelsByPercentage()`
- `playerSettingsDifficultyObjectMeta:getMutateWildMonsterLevelsByPercentage()`
- `playerSettingsDifficultyObjectMeta:getRandomizationSeed()`
- `playerSettingsDifficultyObjectMeta:getRandomizeSkillsMode()`
- `playerSettingsDifficultyObjectMeta:getRandomizeEvolutionsMode()`
- `playerSettingsDifficultyObjectMeta:getRandomizeStartersMode()`
- `playerSettingsDifficultyObjectMeta:getRandomizeStartersModeSelectedMonsterUID()`
- `playerSettingsDifficultyObjectMeta:getRandomizeQuestMonstersMode()`
- `playerSettingsDifficultyObjectMeta:getRandomizeEncounterZonesMode()`
- `playerSettingsDifficultyObjectMeta:getRandomizeTrainerMonstersMode()`
- `playerSettingsDifficultyObjectMeta:getRandomizeTypesMode()`
- `playerSettingsDifficultyObjectMeta:isSmarterMonsterAI()`
- `playerSettingsDifficultyObjectMeta:isSmarterTrainerAI()`
- `playerSettingsDifficultyObjectMeta:shouldAllowReviveByCakes()`
- `playerSettingsDifficultyObjectMeta:shouldConvertEveryMonsterSpriteToSwurmy()`
- `playerSettingsDifficultyObjectMeta:shouldDisableEscapeMove()`
- `playerSettingsDifficultyObjectMeta:shouldDisableRecallItems()`
- `playerSettingsDifficultyObjectMeta:shouldDisableHoldItems()`
- `playerSettingsDifficultyObjectMeta:shouldDiscountShopItems()`
- `playerSettingsDifficultyObjectMeta:shouldPreventCatchingDuplicateMonsterFamilies()`
- `playerSettingsDifficultyObjectMeta:shouldRandomizeItems()`
- `playerSettingsDifficultyObjectMeta:shouldRandomizeTitans()`
- `playerSettingsDifficultyObjectMeta:shouldRandomizeTraits()`
- `playerSettingsDifficultyObjectMeta:shouldRecoverEnergyOnLevelUp()`
- `playerSettingsDifficultyObjectMeta:shouldRecoverHealthOnLevelUp()`
- `playerSettingsDifficultyObjectMeta:shouldReleaseMonsterOnFaint()`
- `playerSettingsDifficultyObjectMeta:shouldRestrictLevelToUpcomingTitanLevel()`

</details>

### PushNotifications

`classes.modules.PushNotifications`

- returns `t`
- requires: `classes.interface.overlays.confirmPopupBuilder`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `PushNotifications:getDeviceToken()`
- `PushNotifications:hasPushNotificationPermission()`
- `PushNotifications:optionallyRequestRequestNativePermission(_onComplete)`
- `PushNotifications:trySubscribeToTopicOptionallyRequestingPermission(_topic, _requestPushNotificationPopupText, _onBeforePopup, _onAfterPopup)`
- `PushNotifications:subscribeToTopic(_topic, _onComplete)`
- `PushNotifications:unsubscribeFromTopic(_topic, _onComplete)`

### Shufflebag

`classes.modules.Shufflebag`

- returns `t`

- `Shufflebag:new()`
- `Shufflebag:addOneOfEachObject(...)`
- `Shufflebag:addAmountOfObject(_amount, _object)`
- `Shufflebag:addByAmountObjectArray(_amountObjectArray)`
- `Shufflebag:initializeShuffleBagWithAllObjects()`
- `Shufflebag:roll()`

### SimplexNoise

`classes.modules.SimplexNoise`

- returns `simplex`
- requires: `plugin.bit`

- `SimplexNoise.Noise2D(xin, yin)`
- `SimplexNoise.Noise3D(xin, yin, zin)`
- `SimplexNoise.Noise4D(x, y, z, w)`
- `SimplexNoise.GBlur2D(x, y, stdDev)`
- `SimplexNoise.GBlur1D(x, stdDev)`
- `SimplexNoise.FractalSum(func, iter, ...)`
- `SimplexNoise.FractalSumAbs(func, iter, ...)`
- `SimplexNoise.Turbulence(func, direction, iter, ...)`

<details><summary>Fields with default values (5)</summary>

- `SimplexNoise.DIR_X` = `0`
- `SimplexNoise.DIR_Y` = `1`
- `SimplexNoise.DIR_Z` = `2`
- `SimplexNoise.DIR_W` = `3`
- `SimplexNoise.internalCache` = `false`

</details>

### TapTapHelper

`classes.modules.TapTapHelper`

- returns `t`
- requires: `plugin.taptap`

- `TapTapHelper:loginWithScopes(_scopes, _onCancel, _onError, _onSuccess)`
- `TapTapHelper:getCurrentTapAccount()`
- `TapTapHelper:logout()`

### UniversalLinks

`classes.modules.UniversalLinks`

- returns `t`

- `UniversalLinks:init(_websiteUrl)`
- `UniversalLinks:getUnconsumedUrlEventTime(_endpoint)`
- `UniversalLinks:optionallyConsume(_endpoint, _onConsume, _onComplete, _onlyIfWithinSeconds)`

### WeightedShufflebag

`classes.modules.WeightedShufflebag`

- returns `t`

- `WeightedShufflebag.newPool(_config)`
- `WeightedShufflebag:isInCurrentDeckByKey(_key)`
- `WeightedShufflebag:isInCurrentShuffleBag(_object)`
- `WeightedShufflebag:getRemainingCounts()`
- `WeightedShufflebag:roll()`
- `WeightedShufflebag:excludeGlobally(_key)`
- `WeightedShufflebag:resetLocal()`
- `WeightedShufflebag:reshuffle()`
- `WeightedShufflebag:getItemDef(_key)`
- `WeightedShufflebag.getGlobalPool(id)`
- `WeightedShufflebag.resetRun()`

### abstractInventoryBuilder

`classes.modules.abstractInventoryBuilder`

- returns `t`

- `abstractInventoryBuilder:new(_inventoryEntries)`

<details><summary>Instance / other functions (5)</summary>

- `inventory:addItem(_item, _amount)`
- `inventory:removeItem(_item, _amount)`
- `inventory:getAmount(_item)`
- `inventory:getRestrictedAmount(_item)`
- `inventory:getItems()`

</details>

### appleTVHelper

`classes.modules.appleTVHelper`

- returns `t`

- `appleTVHelper:enableBackToExit()`
- `appleTVHelper:disableBackToExit()`

### cronHelper

`classes.modules.cronHelper`

- returns `t`

- `cronHelper:every(_startTime, _intervalInSeconds, _listener)`
- `cronHelper:everyMinuteAndHourFrame(_listener)`
- `cronHelper:countDownUntilMidnight(_listener)`
- `cronHelper:cancel(_cronObject)`

### csv

`classes.modules.csv`

- returns `t`

- `csv:encodeRow(_values)`
- `csv:encode(_rows)`
- `csv:parse(_csvString)`
- `csv:getColumnIndex(_headerRow, _columnName)`

### cutsceneHelper

`classes.modules.cutsceneHelper`

- returns `t`
- requires: `classes.maps.globalFunctions`

- `cutsceneHelper:initCutscenesForMap(_cutsceneList)`
- `cutsceneHelper:initFunctionsForMap(_functionList)`
- `cutsceneHelper:addGlobalCutscene(_cutsceneName, _cutscene)`
- `cutsceneHelper:hasCutscene(_cutsceneName)`
- `cutsceneHelper:loadFunction(_cutsceneName, ...)`
- `cutsceneHelper:runCutscene(_cutsceneName, ...)`
- `cutsceneHelper:loadCutscene(_cutsceneName, ...)`
- `cutsceneHelper:loadCutsceneWithOnComplete(_cutsceneName, _onComplete, ...)`
- `cutsceneHelper:loadOptionalCutsceneWithOnComplete(_cutsceneName, _onComplete, ...)`
- `cutsceneHelper:loadCutsceneWithOnSkipOrContinue(_cutsceneName, _onSkip, _onContinue, ...)`
- `cutsceneHelper:loadOptionalCutsceneWithSkipOrContinue(_cutsceneName, _onSkip, _onContinue, ...)`

### debugHelper

`classes.modules.debugHelper`

- returns `t`

- `debugHelper:measureExcutionTime(_function, _iterations)`
- `debugHelper:compareExecutionTime(_iterations, ...)`
- `debugHelper:printMemoryUsage()`
- `debugHelper:printTextureMemoryUsage()`
- `debugHelper:getHugeMemoryObject()`
- `debugHelper:disableDebugStats()`
- `debugHelper:enableDebugStats()`
- `debugHelper:getOverrideObjectWithEmptyFunctions()`
- `debugHelper:showAlert(_text)`
- `debugHelper:makeDraggableAndOutputDelta(_obj, _optionalUID, _optionalStartX, _optionalStartY, _optionalXOneOrMinusOne, _optionalYOneOrMinusOne, _optionalInputLevel)`
- `debugHelper:makeDraggable(_obj, _onMove, _onRelease, _onBeforePress)`
- `debugHelper:tryBlendModes(_object, _optionalBlendModes)`
- `debugHelper:sleep(_amountOfMillisecond)`
- `debugHelper:sleepOnceEvery(_sleepInterval, _amountOfMillisecond)`
- `debugHelper:simulateHomeIndicator()`
- `debugHelper:simulateSafeArea()`

### directionHelper

`classes.modules.directionHelper`

- returns `t`

- `directionHelper:getDirections()`
- `directionHelper:getRandomDirection()`
- `directionHelper:getRandomHorizontalDirection()`
- `directionHelper:getRandomVerticalDirection()`
- `directionHelper:rotateRight(_direction)`
- `directionHelper:rotateLeft(_direction)`
- `directionHelper:opposite(_direction)`
- `directionHelper:oppositeDimension(_dimension)`
- `directionHelper:oppositeEdge(_edge)`
- `directionHelper:isHorizontal(_direction)`
- `directionHelper:isHorizontalEdge(_edge)`
- `directionHelper:isVertical(_direction)`
- `directionHelper:isVerticalEdge(_edge)`
- `directionHelper:isSameDimension(_direction1, _direction2)`
- `directionHelper:isInDimension(_direction, _dimension)`
- `directionHelper:toDimension(_direction)`
- `directionHelper:toEdge(_direction)`
- `directionHelper:toNumber(_direction)`
- `directionHelper:toHorizontalNumber(_direction)`
- `directionHelper:toHorizontalNumberOrNil(_direction)`
- `directionHelper:toVerticalNumber(_direction)`
- `directionHelper:toVerticalNumberOrNil(_direction)`
- `directionHelper:toNumbers(_direction)`
- `directionHelper:toRotation(_direction)`
- `directionHelper:toAtlas(_direction)`

### encryptionHelper

`classes.modules.encryptionHelper`

- returns `t`
- requires: `mime`, `plugin.openssl`, `crypto`

- `encryptionHelper:encryptOld(_data)`
- `encryptionHelper:decryptOld(_encryptedData)`
- `encryptionHelper:encrypt(_data)`
- `encryptionHelper:decrypt(_encryptedData)`
- `encryptionHelper:createMd5Hash(_string)`
- `encryptionHelper:base64Encode(_any)`
- `encryptionHelper:base64Decode(_base64String)`

### eventManager

`classes.modules.eventManager`

- returns `t`

- `eventManager:listen(...)`
- `eventManager:listenOnce(...)`
- `eventManager:listenWithWrapper(...)`
- `eventManager:stopListening(...)`
- `eventManager:dispatch(...)`
- `eventManager:listenUntilObjectDestroyed(...)`

### fileHelper

`classes.modules.fileHelper`

- returns `t`
- requires: `lfs`

- `fileHelper:loadFromResources(_path)`
- `fileHelper:loadFromUserResources(_path)`
- `fileHelper:loadFromTemporaryResources(_path)`
- `fileHelper:remove(_path, _baseDir)`
- `fileHelper:removeFromTemporaryResources(_path)`
- `fileHelper:saveTo(_baseDir, _path, _data)`
- `fileHelper:saveToUserResources(_path, _data)`
- `fileHelper:saveToTemporaryResources(_path, _data)`
- `fileHelper:saveToSystemResources(_path, _data)`
- `fileHelper:loadJsonFromResources(_path)`
- `fileHelper:loadJsonFromUserResources(_path)`
- `fileHelper:saveJsonToUserResources(_path, _data)`
- `fileHelper:loadXmlFromResources(_path)`
- `fileHelper:loadXmlFromUserResources(_path)`
- `fileHelper:saveLuaToUserResources(_path, _data)`
- `fileHelper:saveLuaToTemporaryResources(_path, _data)`
- `fileHelper:exists(_path, _baseDir)`
- `fileHelper:createFolder(_folder)`
- `fileHelper:getFiles(_path, _baseDir)`
- `fileHelper:getFilesRecursive(_path, _baseDir)`
- `fileHelper:getFilesInResources(_path)`
- `fileHelper:getFilesInResourcesRecursive(_path)`

### fillEffectHelper

`classes.modules.fillEffectHelper`

- returns `t`

- `fillEffectHelper:setBrightness(_object, _intensity)`
- `fillEffectHelper:setDuotone(_object, _color)`
- `fillEffectHelper:setMonotone(_object, _r, _g, _b, _a)`
- `fillEffectHelper:setSaturation(_object, _factor)`
- `fillEffectHelper:changeSaturation(_object, _factor)`
- `fillEffectHelper:clear(_object)`
- `fillEffectHelper:swapColors(_object, _colorsReplacements)`
- `fillEffectHelper:setFontOutlineColor(_object, _outlineColor, _outlineColorDarkness, _textColor)`
- `fillEffectHelper:getFontOutlineFillEffect(_outlineColor, _outlineColorDarkness, _textColor)`

### fillHelper

`classes.modules.fillHelper`

- returns `t`

- `fillHelper:setGradientFill(_object, _direction, _color1, _color2, _options)`
- `fillHelper:setImageFill(_object, _path)`
- `fillHelper:setImageSheetFill(_object, _sheet, _frame)`
- `fillHelper:setWidthForRepeatingFill(_object, _fillSpriteWidth, _align)`
- `fillHelper:setHeightForRepeatingFill(_object, _fillSpriteHeight, _align)`
- `fillHelper:alignToTopEdge(_object, _fillSpriteHeight)`
- `fillHelper:alignToRightEdge(_object, _fillSpriteWidth)`
- `fillHelper:alignToBottomEdge(_object, _fillSpriteHeight)`
- `fillHelper:alignToLeftEdge(_object, _fillSpriteWidth)`
- `fillHelper:translateX(_object, _fillSpriteWidth, _x)`
- `fillHelper:translateY(_object, _fillSpriteHeight, _y)`
- `fillHelper:useRepeatingFill(_function)`

### fontHelper

`classes.modules.fontHelper`

- returns `t`
- requires: `fonts.generatedFontInfo`

- `fontHelper:requireForAllFontsMerged(_modulePrefix)`

### functionHelper

`classes.modules.functionHelper`

- returns `t`

- `functionHelper:executeMultiple(_functions)`
- `functionHelper:optionalOnComplete(_boolean, _onComplete, _onBothComplete)`
- `functionHelper:onCompleteIfNotNil(_function, _onBothComplete, ...)`
- `functionHelper:onCompleteFunctions(_functions, _onAllComplete, ...)`
- `functionHelper:onCompleteFunctionsWithSkipRemaining(_functions, _onAllComplete, ...)`
- `functionHelper:onCompleteFunctionsParallel(_functions, _onAllComplete, ...)`
- `functionHelper:onCompletes(_amount, _function, _onAllComplete)`
- `functionHelper:onCompletesWithSkipRemaining(_amount, _function, _onAllComplete)`
- `functionHelper:onCompletesParallel(_amount, _function, _onAllComplete)`
- `functionHelper:forEachOnComplete(_table, _function, _onAllComplete)`
- `functionHelper:forEachOnCompleteSafe(_table, _function, _onAllComplete)`
- `functionHelper:forEachOnCompleteOrUntilTrue(_table, _function, _onAllComplete)`
- `functionHelper:forEachOnCompleteOrUntilTrueSafe(_table, _function, _onAllComplete)`
- `functionHelper:forEachOnCompleteParallel(_table, _function, _onAllComplete)`
- `functionHelper:forEachOnCompleteParallelWithDelay(_table, _delay, _function, _onAllComplete)`
- `functionHelper:forEachOnCompleteParallelSimple(_onCompleteListeners, _onAllComplete)`
- `functionHelper:skipOrContinues(_functions, _onSkip, _onAllComplete, ...)`
- `functionHelper:createObjectFunctionArray(_objects, _functionName)`
- `functionHelper:executeObjectFunctions(_objects, _functionName, ...)`
- `functionHelper:createParamFunctionArray(_object, _params, _functionName)`
- `functionHelper:createObjectsParamsFunctionArray(_objects, _params, _functionName)`
- `functionHelper:onCompleteCounter(_count)`
- `functionHelper:getAsynchronousOnCompleteListener(_count)`
- `functionHelper:afterCount(_count, _function)`
- `functionHelper:createCounter(_amount)`
- `functionHelper:countToUntilReturn(_to, _mutator, _function)`
- `functionHelper:countFromToUntilReturn(_from, _to, _mutator, _function)`
- `functionHelper:doTwice(_function)`
- `functionHelper:executeOnce(_function)`

<details><summary>Instance / other functions (2)</summary>

- `counter:get()`
- `counter:decrease(_onZero, _onNotZero)`

</details>

### gameSettings

`classes.modules.gameSettings`

- returns `t`
- requires: `plugin.iCloud`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.settingObjects.SettingsScreen.ReducedRandomnessInBattlesPopupButton`, `classes.modules.saveslotData.saveslotDataHelper`, `classes.interface.overlays.KeyboardControlsPopup`

- `gameSettings:saveSettings()`
- `gameSettings:getSharedWearableItems()`
- `gameSettings:isSharedWearableItem(_itemUID)`
- `gameSettings:setAsSharedWearableItem(_itemUID)`
- `gameSettings:getSharedMonsterSpriteSkinUIDs()`
- `gameSettings:isSharedMonsterSpriteSkinUID(_monsterSpriteSkinUID)`
- `gameSettings:setAsSharedMonsterSpriteSkinUID(_monsterSpriteSkinUID)`
- `gameSettings:getLuxSolisBenefitIndexToUnlockMilestoneClaimAllButton()`
- `gameSettings:hasUnlockedMilestoneClaimAllButton()`
- `gameSettings:unlockMilestoneClaimAllButton()`
- `gameSettings:synchronizeSharedWearableItemsAndMonsterSpriteSkinUIDs(_saveslotData, _skipImportingToGameSettings)`
- `gameSettings:didImportInitialSharedWearableItemsAndMonsterSpriteSkinUIDs()`
- `gameSettings:setDidImportInitialSharedWearableItemsAndMonsterSpriteSkinUIDs()`
- `gameSettings:getCumulativeUptimeInSeconds()`
- `gameSettings:setCurrentCumulativeUptimeForGooglePlayPassPurchase(_IAPValue)`
- `gameSettings:resolveAmountOfSecondsUntilGooglePlayPassPurchaseIsAllowed(_IAPValue)`
- `gameSettings:setRememberedDebugMapIndex(_index)`
- `gameSettings:getRememberedDebugMapIndex()`
- `gameSettings:setRememberedDebugMapTabIndex(_index)`
- `gameSettings:getRememberedDebugMapTabIndex()`
- `gameSettings:optionallyShowKeyboardControls(_onClose)`
- `gameSettings:setLastTipsAndTricksSaveslotDataVersion(_version)`
- `gameSettings:getLastTipsAndTricksSaveslotDataVersion()`
- `gameSettings:optionallyShowScreenshotModeInterfaceConfigExplanation(_onClose)`
- `gameSettings:optionallyShowWorldInterfaceConfigExplanation()`
- `gameSettings:setRatedApp(_bool)`
- `gameSettings:hasRatedApp()`
- `gameSettings:setExplainedOrUsedRestButton(_bool)`
- `gameSettings:hasExplainedOrUsedRestButton()`
- `gameSettings:setExplainedReducedRandomnessInOnlineBattles(_bool)`
- `gameSettings:hasExplainedReducedRandomnessInOnlineBattles()`
- `gameSettings:optionallyShowReducedRandomnessPopup(_onComplete)`
- `gameSettings:setExplainedSeasonRewards(_seasonId)`
- `gameSettings:shouldExplainSeasonRewards(_seasonId)`
- `gameSettings:setEnabledStatStagePercentages(_bool)`
- `gameSettings:hasEnabledStatStagePercentages()`
- `gameSettings:setTimescaleForBattle(_timescale)`
- `gameSettings:getTimescaleForBattle()`
- `gameSettings:getOptionalFileSuffixForTimescaleForBattle()`
- `gameSettings:setTimescaleForOverworld(_timescale)`
- `gameSettings:getTimescaleForOverworld()`
- `gameSettings:addBoughtNonConsumableIAP(_IAPValue)`
- `gameSettings:hasBoughtNonConsumableIAP(_IAPValue)`
- `gameSettings:removeBoughtNonConsumableIAP(_IAPValue)`
- `gameSettings:setLanguageCode(_language)`
- `gameSettings:getLanguageCode()`
- `gameSettings:setEnglishJargonSetting(_boolean)`
- `gameSettings:getEnglishJargonSetting()`
- `gameSettings:setPauseButtonHoldAction(_action)`
- `gameSettings:getPauseButtonHoldAction()`
- `gameSettings:setSoundVolume(_volume)`
- `gameSettings:getSoundVolume()`
- `gameSettings:hasConfiguredSafeHorizontalInset()`
- `gameSettings:calculateMaxSafeAreaInset()`
- `gameSettings:setSafeHorizontalInset(_inset)`
- `gameSettings:getSafeHorizontalInset()`
- `gameSettings:getSafeHorizontalInsetOrAtleast(_amount)`
- `gameSettings:getSafeWidth()`
- `gameSettings:getSafeBottomInset()`
- `gameSettings:getSafeBottomInsetOrAtLeast(_amount)`
- `gameSettings:getAdjustedSafeBottomInsetOrZero(_adjustment)`
- `gameSettings:hasConfiguredOffsets()`
- `gameSettings:setInteractAndGauntletButtonContainerOffsetX(_offset)`
- `gameSettings:getInteractAndGauntletButtonContainerOffsetX()`
- `gameSettings:setInteractAndGauntletButtonContainerOffsetY(_offset)`
- `gameSettings:getInteractAndGauntletButtonContainerOffsetY()`
- `gameSettings:setDpadSpriteOffsetX(_offset)`
- `gameSettings:getDpadSpriteOffsetX()`
- `gameSettings:setDpadSpriteOffsetY(_offset)`
- `gameSettings:getDpadSpriteOffsetY()`
- `gameSettings:setMusicVolume(_volume)`
- `gameSettings:getMusicVolume()`
- `gameSettings:setReducedRandomnessInBattles(_bool)`
- `gameSettings:getReducedRandomnessInBattles()`
- `gameSettings:isBattleCreatedAsOnlineOrReducedRandomnessInBattles()`
- `gameSettings:shouldShowSideEffectTurnIndicator(_skillData)`
- `gameSettings:setMonsterSpriteSkinForTrainerMonstersMode(_mode)`
- `gameSettings:getMonsterSpriteSkinForTrainerMonstersMode()`
- `gameSettings:setMonsterSpriteSkinForEncounterZonesMode(_mode)`
- `gameSettings:getMonsterSpriteSkinForEncounterZonesMode()`
- `gameSettings:setEasyTrainerBattles(_bool)`
- `gameSettings:getEasyTrainerBattles()`
- `gameSettings:setEasyTrainerEncounters(_bool)`
- `gameSettings:getEasyTrainerEncounters()`
- `gameSettings:setEasyWildEncounters(_bool)`
- `gameSettings:getEasyWildEncounters()`
- `gameSettings:setFasterBattleDialog(_bool)`
- `gameSettings:shouldUseFasterBattleDialog()`
- `gameSettings:setShowEncounterAnimations(_bool)`
- `gameSettings:shouldShowEncounterAnimations()`
- `gameSettings:setShowWeatherAnimations(_bool)`
- `gameSettings:shouldShowWeatherAnimations()`
- `gameSettings:setReduceFlashesSetting(_boolean)`
- `gameSettings:getReduceFlashesSetting()`
- `gameSettings:setColorBlindnessSetting(_boolean)`
- `gameSettings:getColorBlindnessSetting()`
- `gameSettings:shouldReduceTransparency()`
- `gameSettings:shouldReduceMotion()`
- `gameSettings:setPreventGlitchesSetting(_boolean)`
- `gameSettings:getPreventGlitchesSetting()`
- `gameSettings:setVibrationsSetting(_boolean)`
- `gameSettings:getVibrationsSetting()`
- `gameSettings:setAutomaticallyRunSetting(_boolean)`
- `gameSettings:getAutomaticallyRunSetting()`
- `gameSettings:setDirectionalInputMethod(_method)`
- `gameSettings:getDirectionalInputMethod()`
- `gameSettings:setHideDirectionalInputSetting(_boolean)`
- `gameSettings:getHideDirectionalInputSetting()`
- `gameSettings:setTypeWriterSpeedFactorSetting(_typeWriterSpeedFactor)`
- `gameSettings:getTypeWriterSpeedFactorSetting()`
- `gameSettings:getTypeWriteSpeedFactor()`
- `gameSettings:setAfterCatchAutoSendToStorageWhenSquadFull(_boolean)`
- `gameSettings:getAfterCatchAutoSendToStorageWhenSquadFull()`
- `gameSettings:setAfterCatchMonsterNicknameMode(_afterCatchModeValue)`
- `gameSettings:getAfterCatchMonsterNicknameMode()`
- `gameSettings:setAfterCatchMonsterSummaryMode(_afterCatchModeValue)`
- `gameSettings:getAfterCatchMonsterSummaryMode()`
- `gameSettings:setAfterCatchAskToKeepOrReleaseMonster(_boolean)`
- `gameSettings:getAfterCatchAskToKeepOrReleaseMonster()`
- `gameSettings:setShowEvolutionLevelsSetting(_boolean)`
- `gameSettings:getShowEvolutionLevelsSetting()`
- `gameSettings:setShowMilestoneAchievedPopupSetting(_bool)`
- `gameSettings:getShowMilestoneAchievedPopupSetting()`
- `gameSettings:setShowAchievementAchievedPopupSetting(_bool)`
- `gameSettings:getShowAchievementAchievedPopupSetting()`
- `gameSettings:setShowStylizedSpinnersSetting(_boolean)`
- `gameSettings:getShowStylizedSpinnersSetting()`
- `gameSettings:setShowPotentialSparklesOnTrainerMonsters(_boolean)`
- `gameSettings:shouldShowPotentialSparklesOnTrainerMonsters()`
- `gameSettings:setShowTypeEffectivenessIndicatorsSetting(_boolean)`
- `gameSettings:getShowTypeEffectivenessIndicatorsSetting()`
- `gameSettings:setEnableOnlineSavesSetting(_boolean)`
- `gameSettings:getEnableOnlineSavesSetting()`
- `gameSettings:shouldSaveOnlineOrOnICloud()`
- `gameSettings:setMayShareOnlineInformation(_boolean, _onComplete)`
- `gameSettings:mayShareOnlineInformation()`
- `gameSettings:getMayShareOnlineInformationSetting()`
- `gameSettings:optionallyRequestShareOnlineInformationPermission(_localisationKey, _onHasNoPermission, _onHasPermission)`
- `gameSettings:setCustomInputDeviceConfigByProductName(_customInputDeviceConfigByProductName)`
- `gameSettings:getCustomInputDeviceConfigByProductName()`
- `gameSettings:getSettings()`

<details><summary>Fields with default values (1)</summary>

- `settings.BOUGHT_IAP` = `{}`

</details>

### gifHelper

`classes.modules.gifHelper`

- returns `t`

- `gifHelper:newBuilder(_object, _staticFrameTime)`
- `gifHelper:getPlatforms()`
- `gifHelper:createContainerAndBackground(_platform, _widthMultiplier, _gifHeight, _containerHeight, _color)`
- `gifHelper:newSocialBuilder(_object, _platform, _timePerFrame)`

<details><summary>Instance / other functions (5)</summary>

- `builder:getFrames()`
- `builder:createFrame(_frameTime, _skipOffscreenArea)`
- `builder:createGif(_path, _fileWithoutExtension, _options)`
- `builder:save(_path, _fileWithoutExtension)`
- `gifBuilder:save(_path, _fileWithoutExtension)`

</details>

### gridHelper

`classes.modules.gridHelper`

- returns `t`

- `gridHelper:findBestGrid(_amountFrames, _frameWidth, _frameHeight, _maxWidth, _maxHeight)`
- `gridHelper:amountOfRows(_width, _amount)`
- `gridHelper:amountOfColumns(_width, _amount)`
- `gridHelper:indexToRow(_width, _index)`
- `gridHelper:indexToColumn(_width, _index)`
- `gridHelper:indexToGrid(_width, _index)`
- `gridHelper:gridToIndex(_width, _x, _y)`
- `gridHelper:getRandomTileInDistance(_x, _y, _distance)`
- `gridHelper:createArrayStartingAtZero(_width, _height)`
- `gridHelper:createArrayStartingAtOne(_width, _height)`

### groupHelper

`classes.modules.groupHelper`

- returns `t`

- `groupHelper:new(_parent, _mutator)`
- `groupHelper:newAnchored(_parent, _mutator)`
- `groupHelper:newObject(_containerOptions, _mutator)`
- `groupHelper:setObjectContainer(_object, _container)`
- `groupHelper:newContainer(_parent, _width, _height, _mutator)`
- `groupHelper:newFullScreenContainer(_parent, _options)`
- `groupHelper:newStack(_parent, _amount)`
- `groupHelper:newGridStack(_parent, _rowAmount, _columnAmount)`
- `groupHelper:borrowObject(_obj, _newParent)`
- `groupHelper:returnBorrowedObject(_obj)`
- `groupHelper:clear(_group)`

<details><summary>Fields with default values (1)</summary>

- `display.currentStage.isDisplayGroup` = `true`

</details>

### imageHelper

`classes.modules.imageHelper`

- returns `t`

- `imageHelper:new(_parent, _path, _mutator)`
- `imageHelper:newObject(_parent, _path, _imageMutator, _objectMutator)`
- `imageHelper:newScaled(_parent, _path, _width, _height, _mutator)`
- `imageHelper:newScaledFromB64(_parent, _key, _b64String, _width, _height, _mutator)`
- `imageHelper:newFrame(_parent, _sheet, _frame, _mutator)`
- `imageHelper:newScaledFrame(_parent, _sheet, _frame, _width, _height, _mutator)`
- `imageHelper:newStitched(_parent, _path, _columns, _rows, _mutator)`
- `imageHelper:newRepeated(_parent, _path, _width, _height, _fillSpriteWidth, _fillSpriteHeight, _alignHorizontal, _alignVertical)`
- `imageHelper:newRepeatedObject(_parent, _path, _width, _height, _fillSpriteWidth, _fillSpriteHeight, _alignHorizontal, _alignVertical)`
- `imageHelper:newHorizontallyRepeated(_parent, _path, _width, _height, _fillSpriteWidth, _align)`
- `imageHelper:newHorizontallyRepeatedObject(_parent, _path, _width, _height, _fillSpriteWidth, _align)`
- `imageHelper:newVerticallyRepeated(_parent, _path, _width, _height, _fillSpriteHeight, _align)`
- `imageHelper:newVerticallyRepeatedObject(_parent, _path, _width, _height, _fillSpriteHeight, _align)`
- `imageHelper:newFilled(_parent, _path, _width, _height)`

### languageHelper

`classes.modules.languageHelper`

- returns `t`
- requires: `fonts.glyphIdByCharacter_pixelArt`
- defines globals: `localiseKey` = function(_key, _params, _dontLogTranslationNotFound), `localise` = function(_key, _params), `localiseArray` = function(_key, _params), `localiseDialogAnswers` = function(_key, _params), `localiseComplex` = function(_key, _params), `localiseWrapper` = function(_key, _params), `localiseDialogAnswersWrapper` = function(_key, _params)

- `languageHelper:init(_fallbackLanguageCode, _selectedLanguageCode, _languageCodes)`
- `languageHelper:getLanguageCodes()`
- `languageHelper:getLanguageCodesForLanguageSelectPopup()`
- `languageHelper:tryGetAutoSelectedLanguage()`
- `languageHelper:forEachLanguageCode(_onLanguageCode)`
- `languageHelper:getSelectedLanguageCode()`
- `languageHelper:setSelectedLanguageCode(_languageCode)`
- `languageHelper:selectedLanguageCodeUsesPronouns()`
- `languageHelper:selectedLanguageCodeIsChinese()`
- `languageHelper:selectedLanguageCodeHasNoSpaces()`
- `languageHelper:selectedLanguageCodeRendersRightToLeft()`
- `languageHelper:selectedLanguageCodeRequiresPlainOverlay()`
- `languageHelper:selectedLanguageCodeRendersStaticInfoTextLeftOfDynamicInfoText()`
- `languageHelper:inverseIfSelectedLanguageCodeRendersRightToLeft(_number)`
- `languageHelper:negateIfSelectedLanguageCodeRendersRightToLeft(_boolean)`
- `languageHelper:getSelectedLanguageCodeOrderedFontFilePrefixes(_fontSize)`
- `languageHelper:characterHasGlyph(_character)`
- `languageHelper:addPlaceholderFunction(_key, _function)`
- `languageHelper:isPropertyFileAdded(_propertyFile)`
- `languageHelper:addPropertyFiles(...)`
- `languageHelper:removePropertyFiles(...)`
- `languageHelper:getTranslation(_languageCode, _key)`
- `languageHelper:getTranslationInSelectedLanguageCode(_key)`
- `languageHelper:getTranslations(_languageCode)`
- `languageHelper:getTranslationsForSelectedLanguageCode()`
- `languageHelper:isGlobalPlaceholderCharacter(_character)`
- `languageHelper:isParameterCharacter(_character)`
- `languageHelper:replacePlaceholders(_string, _params)`
- `languageHelper:insertParams(_string, _params)`
- `languageHelper:getGuessedKeyboardLayout()`
- `languageHelper:setIsEnglishJargonEnabled(_boolean)`
- `languageHelper:addEnglishJargonKey(_key)`
- `languageHelper:addEnglishJargonKeyFunction(_function)`

<details><summary>Instance / other functions (7)</summary>

- `localiseKey(_key, _params, _dontLogTranslationNotFound)`
- `localise(_key, _params)`
- `localiseArray(_key, _params)`
- `localiseDialogAnswers(_key, _params)`
- `localiseComplex(_key, _params)`
- `localiseWrapper(_key, _params)`
- `localiseDialogAnswersWrapper(_key, _params)`

</details>

### lua

`classes.modules.lua`

- returns `t`

- `lua:encode(_table)`

### magnet

`classes.modules.magnet`

- returns `magnet`

- `magnet:top(obj, marginY, parent)`
- `magnet:right(obj, marginX, parent)`
- `magnet:bottom(obj, marginY, parent)`
- `magnet:left(obj, marginX, parent)`
- `magnet:atEdge(obj, edge, margin, parent)`
- `magnet:atEdgeCenter(obj, edge, margin, parent)`
- `magnet:horizontalCenter(obj, marginX, parent)`
- `magnet:verticalCenter(obj, marginY, parent)`
- `magnet:topLeft(obj, marginX, marginY, parent)`
- `magnet:topRight(obj, marginX, marginY, parent)`
- `magnet:bottomLeft(obj, marginX, marginY, parent)`
- `magnet:bottomRight(obj, marginX, marginY, parent)`
- `magnet:center(obj, marginX, marginY, parent)`
- `magnet:topCenter(obj, marginX, marginY, parent)`
- `magnet:centerRight(obj, marginX, marginY, parent)`
- `magnet:bottomCenter(obj, marginX, marginY, parent)`
- `magnet:centerLeft(obj, marginX, marginY, parent)`
- `magnet:atTop(obj, marginY, parent)`
- `magnet:atBottom(obj, marginY, parent)`
- `magnet:atRight(obj, marginX, parent)`
- `magnet:atLeft(obj, marginX, parent)`
- `magnet:atTopLeft(obj, marginX, marginY, parent)`
- `magnet:atTopCenter(obj, marginX, marginY, parent)`
- `magnet:atTopRight(obj, marginX, marginY, parent)`
- `magnet:atBottomLeft(obj, marginX, marginY, parent)`
- `magnet:atBottomCenter(obj, marginX, marginY, parent)`
- `magnet:atBottomRight(obj, marginX, marginY, parent)`
- `magnet:atLeftTop(obj, marginX, marginY, parent)`
- `magnet:atLeftCenter(obj, marginX, marginY, parent)`
- `magnet:atLeftBottom(obj, marginX, marginY, parent)`
- `magnet:atRightTop(obj, marginX, marginY, parent)`
- `magnet:atRightCenter(obj, marginX, marginY, parent)`
- `magnet:atRightBottom(obj, marginX, marginY, parent)`
- `magnet:topCenterBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:bottomCenterBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:topLeftBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:centerLeftBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:bottomLeftBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:topRightBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:centerRightBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:bottomRightBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:atTopLeftBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:atTopCenterBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:atTopRightBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:atBottomLeftBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:atBottomCenterBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:atBottomRightBetween(obj, marginX, marginY, parent, yPosition)`
- `magnet:atLeftTopBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:atLeftCenterBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:atLeftBottomBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:atRightTopBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:atRightCenterBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:atRightBottomBetween(obj, marginX, marginY, parent, xPosition)`
- `magnet:getLocationFor(_methodName, _obj, ...)`
- `magnet:getXLocationFor(_methodName, _obj, ...)`
- `magnet:getYLocationFor(_methodName, _obj, ...)`
- `magnet:getDeltaLocationFor(_methodName, _obj, ...)`
- `magnet:getDeltaXLocationFor(_methodName, _obj, ...)`
- `magnet:getDeltaYLocationFor(_methodName, _obj, ...)`
- `magnet:evenlyDistributed(_gridWidth, _distance, _index)`
- `magnet:evenlyDistributedInArea(_gridWidth, _availableSpace, _objectSize, _index)`
- `magnet:borrowObjectWithConsistentLocation(_obj, _newParent)`
- `magnet:returnBorrowedObject(_obj)`
- `magnet:invalidateOnSafeAreaChangedEvent(_obj, _magnetFunction)`
- `magnet:createRightToLeftAwareMagnet()`
- `magnet:createContentAwareMagnet()`

<details><summary>Instance / other functions (13)</summary>

- `obj.refreshMagnetX()`
- `magnetContentAware:top(obj, marginY, parent)`
- `magnetContentAware:left(obj, marginX, parent)`
- `magnetContentAware:bottom(obj, marginY, parent)`
- `magnetContentAware:right(obj, marginX, parent)`
- `magnetContentAware:horizontalCenter(obj, marginX, parent)`
- `magnetContentAware:verticalCenter(obj, marginY, parent)`
- `magnetContentAware:getLocationFor(_methodName, _obj, ...)`
- `magnetContentAware:getXLocationFor(_methodName, _obj, ...)`
- `magnetContentAware:getYLocationFor(_methodName, _obj, ...)`
- `magnetContentAware:getDeltaLocationFor(_methodName, _obj, ...)`
- `magnetContentAware:getDeltaXLocationFor(_methodName, _obj, ...)`
- `magnetContentAware:getDeltaYLocationFor(_methodName, _obj, ...)`

</details>

### maskHelper

`classes.modules.maskHelper`

- returns `t`

- `maskHelper:setLocationForFrame(_objectToMask, _frameSprite, _columns, _rows, _frame)`

### monsterAvatarAtlas

`classes.modules.monsterAvatarAtlas`

- returns `t`

- `monsterAvatarAtlas:getSheetOptions()`
- `monsterAvatarAtlas:getFrameIndex(_filename)`

<details><summary>Fields with default values (989)</summary>

- `monsterAvatarAtlas.path` = `"images/interface/icons/monsterAvatars/borderlessAtlas.png"`
- `monsterAvatarAtlas.frameWidth` = `24`
- `monsterAvatarAtlas.frameHeight` = `24`
- `monsterAvatarAtlas.columns` = `32`
- `monsterAvatarAtlas.rows` = `31`
- `monsterAvatarAtlas.numFrames` = `980`
- `monsterAvatarAtlas.sheetContentWidth` = `768`
- `monsterAvatarAtlas.sheetContentHeight` = `744`
- `monsterAvatarAtlas.filenames` = `{}`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_1_A.png` = `1`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_1_B.png` = `2`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_1_C.png` = `3`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_1_crimsonite.png` = `4`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_1_crimsoniteAndTendrils.png` = `5`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_1_gold.png` = `6`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_2_A.png` = `7`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_2_B.png` = `8`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_2_C.png` = `9`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_2_crimsonite.png` = `10`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_2_crimsoniteAndTendrils.png` = `11`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_2_gold.png` = `12`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_3_A.png` = `13`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_3_B.png` = `14`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_3_C.png` = `15`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_3_crimsonite.png` = `16`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_3_crimsoniteAndTendrils.png` = `17`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_BEETLE_3_gold.png` = `18`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_A_supercharged.png` = `19`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_A.png` = `20`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_B_supercharged.png` = `21`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_B.png` = `22`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_C_supercharged.png` = `23`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_C.png` = `24`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_crimsonite.png` = `25`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_1_crimsoniteAndTendrils.png` = `26`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_2_A_supercharged.png` = `27`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_2_A.png` = `28`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_2_B_supercharged.png` = `29`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_2_B.png` = `30`
- `monsterAvatarAtlas.frameIndexByFilename.ELECTRIC_CERBERUS_2_C_supercharged.png` = `31`
- ... 949 more in `api.json`

</details>

### networkTimeHelper

`classes.modules.networkTimeHelper`

- returns `t`

- `networkTimeHelper:init(_timeserverUrl)`
- `networkTimeHelper:retrieveCurrentMinutesSinceEpoch(_onComplete)`

### paramHelper

`classes.modules.paramHelper`

- returns `t`

- `paramHelper:optionalString(...)`

### playerBattleDomeSession

`classes.modules.playerBattleDomeSession`

- returns `t`
- requires: `classes.interface.overlays.BattleDomeResultPopup`, `classes.spawnables.characterSprites.modularCharacterSprite`

- `playerBattleDomeSession:destroy()`
- `playerBattleDomeSession:isCreated()`
- `playerBattleDomeSession:onLoadSaveslotData(_saveslotData)`
- `playerBattleDomeSession:onSaveSaveslotData(_saveslotData)`
- `playerBattleDomeSession:getRecoverCost()`
- `playerBattleDomeSession:getTraitResetCost()`
- `playerBattleDomeSession:getStageResetCost()`
- `playerBattleDomeSession:getPotentialStatResetCost()`
- `playerBattleDomeSession:getRevealOpponentCost()`
- `playerBattleDomeSession:getIncreaseOpponentLevelGain()`
- `playerBattleDomeSession:getUnlockRecoverEnergyCost()`
- `playerBattleDomeSession:getUnlockShopStageCost()`
- `playerBattleDomeSession:getUnlockStageResetCost()`
- `playerBattleDomeSession:getUnlockPotentialStatResetCost()`
- `playerBattleDomeSession:startBattleDomeSession(_mode, _difficulty, _squad)`
- `playerBattleDomeSession:destroyBattleDomeSession()`
- `playerBattleDomeSession:destroyBattleDomeSessionAndShowResultAndReturnToLobby()`
- `playerBattleDomeSession:pause()`
- `playerBattleDomeSession:unpause()`
- `playerBattleDomeSession:isStartedOrPaused()`
- `playerBattleDomeSession:isStartedAndActive()`
- `playerBattleDomeSession:getDifficulty()`
- `playerBattleDomeSession:getDifficultyObject()`
- `playerBattleDomeSession:getMode()`
- `playerBattleDomeSession:getModeObject()`
- `playerBattleDomeSession:getRandomSeed()`
- `playerBattleDomeSession:getAmountOfOpponentsDefeated()`
- `playerBattleDomeSession:increaseAmountOfOpponentsDefeated()`
- `playerBattleDomeSession:getAmountOfTurnsTaken()`
- `playerBattleDomeSession:increaseAmountOfTurnsTaken()`
- `playerBattleDomeSession:revealOpponent(_index)`
- `playerBattleDomeSession:isOpponentRevealed(_index)`
- `playerBattleDomeSession:increaseOpponentLevel(_index)`
- `playerBattleDomeSession:calculateOpponentLevel(_index)`
- `playerBattleDomeSession:hasUnlockedRecoverEnergy()`
- `playerBattleDomeSession:hasUnlockedShopStageTwo()`
- `playerBattleDomeSession:hasUnlockedShopStageThree()`
- `playerBattleDomeSession:hasUnlockedStageReset()`
- `playerBattleDomeSession:hasUnlockedPotentialStatReset()`
- `playerBattleDomeSession:unlockRecoverEnergy()`
- `playerBattleDomeSession:unlockShopStageTwo()`
- `playerBattleDomeSession:unlockShopStageThree()`
- `playerBattleDomeSession:unlockStageReset()`
- `playerBattleDomeSession:unlockPotentialStatReset()`
- `playerBattleDomeSession:resolveOpponentConfiguration()`
- `playerBattleDomeSession:createOpponentPreview(_parent)`

### playerCurrency

`classes.modules.playerCurrency`

- returns `t`

- `playerCurrency:destroy()`
- `playerCurrency:onLoadSaveslotData(_saveslotData, _isRogue)`
- `playerCurrency:onSaveSaveslotData(_saveslotData, _isRogue)`
- `playerCurrency:createGoldIcon(_parent)`
- `playerCurrency:addGold(_amount)`
- `playerCurrency:spendGold(_amount)`
- `playerCurrency:getGold()`
- `playerCurrency:getRestrictedGold()`
- `playerCurrency:clearGold()`
- `playerCurrency:setBattleDomeTokens(_battleDomeTokens)`

### playerGauntlet

`classes.modules.playerGauntlet`

- returns `t`

- `playerGauntlet:destroy()`
- `playerGauntlet:onLoadSaveslotData(_saveslotData)`
- `playerGauntlet:onSaveSaveslotData(_saveslotData)`
- `playerGauntlet:installGauntletModule(_gauntletModuleUID)`
- `playerGauntlet:hasInstalledGauntletModule(_gauntletModuleUID)`
- `playerGauntlet:setSelectedGauntletModule(_gauntletModuleUID)`
- `playerGauntlet:getSelectedGauntletModule()`

### playerInventory

`classes.modules.playerInventory`

- returns `t`

- `playerInventory:destroy()`
- `playerInventory:isCreated()`
- `playerInventory:onLoadSaveslotData(_saveslotData, _isRogue)`
- `playerInventory:onSaveSaveslotData(_saveslotData, _isRogue)`
- `playerInventory:addItem(_item, _amount)`
- `playerInventory:removeItem(_item, _amount)`
- `playerInventory:removeAllOfItem(_item)`
- `playerInventory:getAmount(_item)`
- `playerInventory:getRestrictedAmount(_item)`
- `playerInventory:getItems()`
- `playerInventory:getItemArray()`
- `playerInventory:getItemArrayByInstanceOf(_class)`
- `playerInventory:getItemArrayByFilter(_filterFunction)`
- `playerInventory:clearItems()`
- `playerInventory:persistItem(_key, _itemUID)`
- `playerInventory:getPersistedItem(_key)`
- `playerInventory:removePersistedItem(_key)`
- `playerInventory:setBattleDomeItems(_inventoryEntries)`
- `playerInventory:getRogueItemSlots()`
- `playerInventory:getMaxAmountOfRogueItemSlots()`
- `playerInventory:canAddToRogueItemSlots(_item)`

### playerMonsters

`classes.modules.playerMonsters`

- returns `t`

- `playerMonsters:destroy()`
- `playerMonsters:isCreated()`
- `playerMonsters:onLoadSaveslotData(_saveslotData, _isRogue)`
- `playerMonsters:onSaveSaveslotData(_saveslotData, _isRogue)`
- `playerMonsters:debugSetMonsterStorage(_monsterStorage)`
- `playerMonsters:setSquad(_squad)`
- `playerMonsters:setBattleDomeSquad(_battleDomeSquad)`
- `playerMonsters:populateOnlineLoanSquad(_category)`
- `playerMonsters:getMaxSquadSize()`
- `playerMonsters:hasFullSquad()`
- `playerMonsters:hasFullInsaneSpinnerSquad()`
- `playerMonsters:getBattleEffects()`
- `playerMonsters:add(_monster)`
- `playerMonsters:addToSquad(_monster, _optionalIndex)`
- `playerMonsters:addToInsaneSpinnerSquad(_monster, _optionalIndex)`
- `playerMonsters:addToMonsterStorage(_monster, _shouldAddMonsterStorageNotification, _shouldNotRestore)`
- `playerMonsters:release(_monster)`
- `playerMonsters:releaseMultiple(_monsters)`
- `playerMonsters:releaseFromSquad(_monster)`
- `playerMonsters:releaseFromInsaneSpinnerSquad(_monster)`
- `playerMonsters:releaseFromMonsterStorage(_monster)`
- `playerMonsters:swapWithinSquad(_monster1, _monster2)`
- `playerMonsters:moveFromSquadToGraveyard(_monster)`
- `playerMonsters:moveGraveyardToMonsterStorage()`
- `playerMonsters:addToHiddenMonsterStorage(_monster)`
- `playerMonsters:releaseFromHiddenMonsterStorage(_monsterIdentifier)`
- `playerMonsters:addMultipleToHiddenMonsterStorage(_monsters)`
- `playerMonsters:releaseMultipleFromHiddenMonsterStorage(_identifiers)`
- `playerMonsters:moveMultipleFromSquadToHiddenMonsterStorage(_monsters)`
- `playerMonsters:moveMultipleFromHiddenMonsterStorageToSquad(_identifiers)`
- `playerMonsters:setSquadFullyRestored()`
- `playerMonsters:isSquadFullyRestored()`
- `playerMonsters:getMonsterInSquad(_identifier)`
- `playerMonsters:getMonsterInStorage(_identifier)`
- `playerMonsters:getMonsterInOnlineLoanSquad(_identifier)`
- `playerMonsters:getMonsterInBattleDomeLoanSquad(_identifier)`
- `playerMonsters:getMonsterInInsaneSpinnerSquad(_identifier)`
- `playerMonsters:getMonsterInHiddenStorage(_identifier)`
- `playerMonsters:getMonster(_identifier)`
- `playerMonsters:getFirstConsciousMemberInSquad()`
- `playerMonsters:isFirstConsciousMonsterInSquad(_monster)`
- `playerMonsters:isOnlyAliveMonsterInSquad(_monster)`
- `playerMonsters:getMonstersExcludingMonsterGraveyard()`
- `playerMonsters:getMonstersIncludingMonsterGraveyard()`
- `playerMonsters:getOwnedMonstersExcludingInsaneSpinnerSquad()`
- `playerMonsters:getOwnedMonstersIncludingMonsterGraveyard()`
- `playerMonsters:getSquad()`
- `playerMonsters:getOnlineLoanSquad(_category)`
- `playerMonsters:getBattleDomeSquad()`
- `playerMonsters:getInsaneSpinnerSquad()`
- `playerMonsters:getSquadOrInsaneSpinnerSquad()`
- `playerMonsters:getMonsterStorage()`
- `playerMonsters:getMonsterGraveyard()`
- `playerMonsters:getHiddenMonsterStorage()`
- `playerMonsters:setUnlockedMonsterSpriteSkinUID(_monsterSpriteSkinUID)`
- `playerMonsters:hasUnlockedMonsterSpriteSkinUID(_monsterSpriteSkinUID)`
- `playerMonsters:getUnlockedMonsterSpriteSkinUIDs()`

### playerOnlineCasualCustomPreferences

`classes.modules.playerOnlineCasualCustomPreferences`

- returns `t`

- `playerOnlineCasualCustomPreferences:destroy()`
- `playerOnlineCasualCustomPreferences:onLoadSaveslotData(_saveslotData)`
- `playerOnlineCasualCustomPreferences:onSaveSaveslotData(_saveslotData)`
- `playerOnlineCasualCustomPreferences:get()`
- `playerOnlineCasualCustomPreferences:getAsQueuePreferences()`

### playerOnlineSquads

`classes.modules.playerOnlineSquads`

- returns `t`

- `playerOnlineSquads:destroy()`
- `playerOnlineSquads:onLoadSaveslotData(_saveslotData, _isRogue)`
- `playerOnlineSquads:onSaveSaveslotData(_saveslotData, _isRogue)`
- `playerOnlineSquads:setLastSelectedOnlineCasualMatchmakingMode(_onlineCasualMatchmakingMode)`
- `playerOnlineSquads:getLastSelectedOnlineCasualMatchmakingMode()`
- `playerOnlineSquads:setLastSelectedOnlineRankedMatchmakingMode(_onlineRankedMatchmakingMode)`
- `playerOnlineSquads:getLastSelectedOnlineRankedMatchmakingMode()`
- `playerOnlineSquads:setLastSelectedOnlineSquadIndex(_category, _selectedIndexMode, _onlineSquad)`
- `playerOnlineSquads:getLastSelectedSquad(_category, _selectedIndexMode)`
- `playerOnlineSquads:populateOnlineLoanSquadEntries(_category)`
- `playerOnlineSquads:resolveOnlineLoanSquadEntries(_category)`
- `playerOnlineSquads:getOnlineSquadsFor(_category)`
- `playerOnlineSquads:increaseAmountIfOnlineSquadsIfAllInUse(_category)`
- `playerOnlineSquads:getOnlineSquads(_category)`
- `playerOnlineSquads:getOnlineSquadsIncludingPlayerOnlineLoanSquad(_category)`
- `playerOnlineSquads:getOnlineSquadsIncludingPlayerSquads(_category)`

<details><summary>Fields with default values (1)</summary>

- `playerOnlineSquads.categories` = `{}`

</details>

### playerOnlineStyle

`classes.modules.playerOnlineStyle`

- returns `t`

- `playerOnlineStyle:destroy()`
- `playerOnlineStyle:onLoadSaveslotData(_saveslotData)`
- `playerOnlineStyle:onSaveSaveslotData(_saveslotData)`
- `playerOnlineStyle:getCharacterConfigUID()`
- `playerOnlineStyle:getCharacterConfig()`
- `playerOnlineStyle:setOnlineBattleEnvironment(_onlineBattleEnvironment)`
- `playerOnlineStyle:getOnlineBattleEnvironment()`
- `playerOnlineStyle:setBattleMusic(_onlineBattleMusic)`
- `playerOnlineStyle:getBattleMusic()`
- `playerOnlineStyle:setWinBattleTaunt(_onlineWinBattleTaunt)`
- `playerOnlineStyle:getWinBattleTaunt()`

### playerPerks

`classes.modules.playerPerks`

- returns `t`

- `playerPerks:destroy()`
- `playerPerks:onLoadSaveslotData(_saveslotData)`
- `playerPerks:onSaveSaveslotData(_saveslotData)`
- `playerPerks:perkExists(_type)`
- `playerPerks:setObtainedPerk(_type)`
- `playerPerks:hasObtainedPerk(_type)`
- `playerPerks:hasObtainedAllPerks()`
- `playerPerks:hasReducedShopPricePerk()`
- `playerPerks:hasCatchProbabilityPerk()`

### playerQuests

`classes.modules.playerQuests`

- returns `t`
- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

- `playerQuests:destroy()`
- `playerQuests:isCreated()`
- `playerQuests:onLoadSaveslotData(_saveslotData)`
- `playerQuests:onSaveSaveslotData(_saveslotData)`
- `playerQuests:getAmountOfChaptersCompleted()`
- `playerQuests:createQuestCharacterHead(_parent, _questUID, _options)`
- `playerQuests:getQuestName(_questUID)`
- `playerQuests:getQuestDescription(_questUID, _chapterUID)`
- `playerQuests:start(_questUID, _chapterUID, _isUsingDebugFunction)`
- `playerQuests:complete(_questUID, _chapterUID, _isUsingDebugFunction)`
- `playerQuests:unstart(_questUID, _chapterUID)`
- `playerQuests:uncomplete(_questUID, _chapterUID)`
- `playerQuests:getCurrentChapter(_questUID)`
- `playerQuests:isStarted(_questUID, _chapterUID)`
- `playerQuests:isInProgress(_questUID, _chapterUID)`
- `playerQuests:isCompleted(_questUID, _chapterUID)`
- `playerQuests:getActiveQuests()`
- `playerQuests:getCompletedQuests()`
- `playerQuests:debugSetInProgress(_questUID, _chapterUID)`
- `playerQuests:debugSetCompleted(_questUID, _chapterUID)`

### playerSettings

`classes.modules.playerSettings`

- returns `t`
- requires: `classes.modules.PlayerSettingsDifficultyObject`, `classes.monsters.monsters.abstractMonsterData`, `classes.monsters.families.abstractMonsterFamilyData`

- `playerSettings:isCreated()`
- `playerSettings:get()`
- `playerSettings:destroy()`
- `playerSettings:onLoadSaveslotData(_saveslotData, _isRogue)`
- `playerSettings:onSaveSaveslotData(_saveslotData, _isRogue)`
- `playerSettings:setUseActualOnlineSquadLevelsInMenu(_boolean)`
- `playerSettings:shouldUseActualOnlineSquadLevelsInMenu()`
- `playerSettings:setFlappySwurmyBeezelModeEnabled(_boolean)`
- `playerSettings:isFlappySwurmyBeezelModeEnabled()`
- `playerSettings:setFlappySwurmyEasyModeEnabled(_boolean)`
- `playerSettings:isFlappySwurmyEasyModeEnabled()`
- `playerSettings:setSwurmyRushArrowsEnabled(_boolean)`
- `playerSettings:isSwurmyRushArrowsEnabled()`
- `playerSettings:setSwurmyRushEasyModeEnabled(_boolean)`
- `playerSettings:isSwurmyRushEasyModeEnabled()`
- `playerSettings:setSwurmyRushExtraLivesEnabled(_boolean)`
- `playerSettings:isSwurmyRushExtraLivesEnabled()`
- `playerSettings:setFlappySwurmySelectedPotentialCategory(_potentialCategory)`
- `playerSettings:getFlappySwurmySelectedPotentialCategory()`
- `playerSettings:getFlappySwurmySelectedPotentialCategoryOrUnlockHigher()`
- `playerSettings:setSwurmyRushSelectedPotentialCategory(_potentialCategory)`
- `playerSettings:getSwurmyRushSelectedPotentialCategory()`
- `playerSettings:getSwurmyRushSelectedPotentialCategoryOrUnlockHigher()`
- `playerSettings:setDifficulty(_difficulty)`
- `playerSettings:getDifficulty()`
- `playerSettings:hasCustomDifficulty()`
- `playerSettings:getDifficultyObject()`
- `playerSettings:getDifficultyString()`
- `playerSettings:applyRandomizationSeed()`
- `playerSettings:setLuxLuredMap(_mapFile)`
- `playerSettings:isLuxLuredMap(_mapFile)`
- `playerSettings:setStarterUID(_starterUID)`
- `playerSettings:getStarterUID()`
- `playerSettings:setPlayerName(_name)`
- `playerSettings:getPlayerName()`
- `playerSettings:getPlayerNameMaxWidthConfig()`
- `playerSettings:setPlayerPronoun(_pronounIndex)`
- `playerSettings:getPlayerPronoun()`
- `playerSettings:setOnlineProfileId(_onlineProfileId)`
- `playerSettings:getOnlineProfileId()`
- `playerSettings:setLastMonsterStorageScreenSortMode(_sortModeValue)`
- `playerSettings:getLastMonsterStorageScreenSortMode()`
- `playerSettings:setLastSelectedPauseMenuOrBattleItemUID(_itemUID)`
- `playerSettings:getLastSelectedPauseMenuOrBattleItemUID()`
- `playerSettings:setLastSelectedPauseMenuItemUID(_itemUID)`
- `playerSettings:getLastSelectedPauseMenuItemUID()`
- `playerSettings:setLastSelectedBattleItemUID(_itemUID)`
- `playerSettings:getLastSelectedBattleItemUID()`
- `playerSettings:setBindItemUID(_index, _UID)`
- `playerSettings:getBindItemUID(_index)`
- `playerSettings:isItemBinded(_UID)`
- `playerSettings:setBindTraitMonster(_monster)`
- `playerSettings:getBindTraitMonsterIdentifier()`
- `playerSettings:getBindTraitMonsterWithActiveTraitInSquad()`
- `playerSettings:setCharacterHair(_hair)`
- `playerSettings:getCharacterHair()`
- `playerSettings:setCharacterFacialHair(_hair)`
- `playerSettings:getCharacterFacialHair()`
- `playerSettings:getCharacterSkintone()`
- `playerSettings:setWearableItemUID(_wearableItemType, _itemUID)`
- `playerSettings:getWearableItemUID(_wearableItemType)`
- `playerSettings:getWearableItemUIDs()`
- `playerSettings:setWearableItemUIDs(_wearableItemUIDs)`
- `playerSettings:getWearableItem(_wearableItemType)`
- `playerSettings:wearsOutfitWhichWillBlock(_item, _wearableItemUIDs)`
- `playerSettings:getNotDisabledWearableItemUID(_wearableItemType)`
- `playerSettings:getPlayerCharacterConfig(_ignoreOriginalOutfitAndOptionalOtherType, _withWearableItemsApplied)`
- `playerSettings:registerSaveableBattleEffect(_battleEffect)`
- `playerSettings:unregisterSaveableBattleEffect(_battleEffect)`
- `playerSettings:getSaveableBattleEffects()`
- `playerSettings:getSaveableBattleEffect(_class)`
- `playerSettings:executeOnWorldInit()`
- `playerSettings:executeOnWorldDestroy()`
- `playerSettings:executeOnWorldUnload()`
- `playerSettings:hasFlashlightEnabled()`
- `playerSettings:addPhoneMessage(_message)`
- `playerSettings:getPhoneMessages()`
- `playerSettings:getAmountOfUnreadPhoneMessages()`
- `playerSettings:resetAmountOfUnreadPhoneMessages()`
- `playerSettings:addRecallLocation(_location)`
- `playerSettings:hasRecallLocation(_location)`
- `playerSettings:getRecallLocations()`
- `playerSettings:addVisitedLocation(_locationUID)`
- `playerSettings:hasVisitedLocation(_locationUID)`
- `playerSettings:addVisitedMap(_mapFile)`
- `playerSettings:hasVisitedMap(_mapFile)`
- `playerSettings:getAmountOfTimesVisitedMap(_mapFile)`
- `playerSettings:createIdentifier()`

### playerStateHelper

`classes.modules.playerStateHelper`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`

- `playerStateHelper:blockSave()`
- `playerStateHelper:unblockSave()`
- `playerStateHelper:isSaveBlocked()`
- `playerStateHelper:blockGauntletPower()`
- `playerStateHelper:unblockGauntletPower()`
- `playerStateHelper:isGauntletPowerBlocked()`
- `playerStateHelper:getSelectedSaveslotIndex()`
- `playerStateHelper:getSelectedSaveslotDeviceId()`
- `playerStateHelper:resolveSelectedSaveslotDeviceIdOrShowError(_onBeforeErrorMessagePopup, _onSuccess, _onAfterErrorMessagePopup)`
- `playerStateHelper:getSelectedSaveslotIdentifier()`
- `playerStateHelper:prepareAutoSave()`
- `playerStateHelper:autoSaveIfPrepared()`
- `playerStateHelper:manualSave(_onComplete, _confirmOverrideConflict)`
- `playerStateHelper:shouldSilenceOnlineSaveErrorsThisSession()`
- `playerStateHelper:setShouldSilenceOnlineSaveErrorsThisSession(_boolean)`
- `playerStateHelper:arePlayerLibrariesInitialised()`
- `playerStateHelper:initialisePlayerLibraries(_saveslotData)`
- `playerStateHelper:debugSetSelf()`
- `playerStateHelper:loadGame(_saveslotData, _saveslotCluster, _manualVersionId, _autoVersionId, _loadTransition, _onComplete)`
- `playerStateHelper:createNewGame(_saveslotIndex, _saveslotCluster, _loadTransition, _onComplete)`
- `playerStateHelper:quitCurrentGame()`

### playerStats

`classes.modules.playerStats`

- returns `t`

- `playerStats:isCreated()`
- `playerStats:destroy()`
- `playerStats:onLoadSaveslotData(_saveslotData)`
- `playerStats:onSaveSaveslotData(_saveslotData)`
- `playerStats:addPlaytimeSecond()`
- `playerStats:getPlaytimeInSeconds()`
- `playerStats:setDifficultyHasBeenModified()`
- `playerStats:hasDifficultyBeenModified()`
- `playerStats:addEvolutionCancelled()`
- `playerStats:getAmountOfEvolutionsCancelled()`
- `playerStats:addEvolutionTriggered()`
- `playerStats:getAmountOfEvolutionsTriggered()`
- `playerStats:resetMonsterSeenInRandomizedEvolution()`
- `playerStats:setMonsterSeenInRandomizedEvolution(_monsterUID)`
- `playerStats:hasSeenMonsterInRandomizedEvolution(_monsterUID, _newMonsterUID)`
- `playerStats:addGauntletModuleRepelTriggered()`
- `playerStats:getAmountOfTimesGauntletModuleRepelTriggered()`
- `playerStats:addGauntletModuleAttractTriggered()`
- `playerStats:getAmountOfTimesGauntletModuleAttractTriggered()`
- `playerStats:addGrassAreaTileBurned()`
- `playerStats:getAmountOfGrassAreaTiledBurned()`
- `playerStats:addRecallConsumed()`
- `playerStats:getAmountOfRecallsConsumed()`
- `playerStats:addScentBrewed(_amount)`
- `playerStats:getAmountOfScentsBrewed()`
- `playerStats:addScentConsumed()`
- `playerStats:getAmountOfScentsConsumed()`
- `playerStats:addPotentialReroll()`
- `playerStats:getAmountOfTimesRerolledPotential()`
- `playerStats:addTraitReroll()`
- `playerStats:getAmountOfTimesRerolledTrait()`
- `playerStats:addSoftResetinatorUsage()`
- `playerStats:getAmountOfSoftResetinatorUsages()`
- `playerStats:addHardResetinatorUsage()`
- `playerStats:getAmountOfHardResetinatorUsages()`
- `playerStats:addSpinnerSwap()`
- `playerStats:getAmountOfSpinnersSwapped()`
- `playerStats:setMilestoneStageShownMessageFor(_UID, _stage)`
- `playerStats:getMilestoneStageShownMessageFor(_UID)`
- `playerStats:setMilestoneStageClaimed(_UID, _stage)`
- `playerStats:getMilestoneStageClaimed(_UID)`
- `playerStats:getAchievedMilestoneStageNotShownMessageFor(_UID)`
- `playerStats:getAchievedMilestoneStagesNotShownMessageFor()`
- `playerStats:getUnclaimedButAchievedMilestoneStages()`
- `playerStats:addLuxSolisRankExperience(_value)`
- `playerStats:getLuxSolisRankExperience()`
- `playerStats:getLuxSolisRank()`
- `playerStats:getMaxLuxSolisRankExperience()`
- `playerStats:hasReachedMaxLuxSolisRankExperience()`
- `playerStats:setClaimedLuxSolisBenefit(_luxSolisRank)`
- `playerStats:hasClaimedLuxSolisBenefit(_luxSolisRank)`
- `playerStats:hasUnclaimedLuxSolisBenefits()`
- `playerStats:setHighestDamageDealtIfHigher(_damage)`
- `playerStats:getHighestDamageDealt()`
- `playerStats:setSwurmyRushHighscore(_score)`
- `playerStats:getSwurmyRushHighscore()`
- `playerStats:setFlappySwurmyHighscore(_score)`
- `playerStats:getFlappySwurmyHighscore()`
- `playerStats:unlockFlappySwurmyPotentialCategory(_potentialCategory)`
- `playerStats:hasFlappySwurmyUnlockedPotentialCategory(_potentialCategory)`
- `playerStats:unlockSwurmyRushPotentialCategory(_potentialCategory)`
- `playerStats:hasSwurmyRushUnlockedPotentialCategory(_potentialCategory)`
- `playerStats:createMinigameHighscoreEncryption(_parent, _highscore, _fillColor)`
- `playerStats:setClaimedBattleDomeStarReward(_rewardIndex)`
- `playerStats:hasClaimedBattleDomeStarReward(_rewardIndex)`
- `playerStats:setBattleDomeWinningStreakIfHighest(_battleDomeMode, _battleDomeDifficulty, _winningStreak)`
- `playerStats:getHighestBattleDomeWinningStreak(_battleDomeMode, _battleDomeDifficulty)`
- `playerStats:calculateAmountOfBattleDomeStarsAchievedInMode(_mode)`
- `playerStats:calculateAmountOfBattleDomeStarsAchieved()`
- `playerStats:setClaimedOnlineSeasonRewards(_seasonId, _onlineMatchmakingMode)`
- `playerStats:hasClaimedOnlineSeasonReward(_seasonId, _onlineMatchmakingMode)`
- `playerStats:increaseOnlineBattleItemRewardCounter()`
- `playerStats:getOnlineBattleItemRewardCounter()`
- `playerStats:resetOnlineConsecutiveWins()`
- `playerStats:increaseOnlineConsecutiveWins()`
- `playerStats:getLongestOnlineConsecutiveWins()`
- `playerStats:addOnlineCasualWin(_profileId)`
- `playerStats:addOnlineCasualLoss(_profileId)`
- `playerStats:addOnlineCasualDraw(_profileId)`
- `playerStats:resetOnlineCasualRank(_profileId)`
- `playerStats:getOnlineCasualRank(_profileId)`
- `playerStats:addBattle(_status, _participantClasses)`
- `playerStats:getBattles()`
- `playerStats:getAmountOfBattles()`
- `playerStats:getAmountOfBattlesByFunction(_function)`
- `playerStats:addPotentMonsterEncountered()`
- `playerStats:getAmountOfPotentMonstersEncountered()`
- `playerStats:addPerfectMonsterEncountered()`
- `playerStats:getAmountOfPerfectMonstersEncountered()`
- `playerStats:addStep()`
- `playerStats:getSteps()`
- `playerStats:setAchievementProgress(_achievementValue, _progress)`
- `playerStats:getAchievementProgress(_achievementValue)`
- `playerStats:hasAchievedAchievement(_achievementValue)`
- `playerStats:setMonsterSpriteSkinMilestoneProgress(_monsterSpriteSkinMilestoneValue, _progress)`
- `playerStats:getMonsterSpriteSkinMilestoneProgress(_monsterSpriteSkinMilestoneValue)`
- `playerStats:addTrainerHubRecovery(_mapFile)`
- `playerStats:getAmountOfTrainerHubRecoveries(_mapFile)`
- `playerStats:getTotalAmountOfTrainerHubRecoveries()`
- `playerStats:addGoldEarnedBySellingAuctionableItems(_amount)`
- `playerStats:getAmountOfGoldEarnedBySellingAuctionableItems()`
- `playerStats:setItemPopupContextTextSeen(_itemUID)`
- `playerStats:hasSeenItemPopupContextText(_itemUID)`
- `playerStats:setMonsterStorageNotificationMonsterIdentifier(_monsterIdentifier)`
- `playerStats:hasMonsterStorageNotificationMonsterIdentifier(_monsterIdentifier)`
- `playerStats:clearMonsterStorageNotificationMonsterIdentifier(_monsterIdentifier)`
- `playerStats:clearAllMonsterStorageNotificationMonsterIdentifiers()`
- `playerStats:addHiddenItemFound()`
- `playerStats:getAmountOfHiddenItemsFound()`
- `playerStats:onFruitPlanted()`
- `playerStats:addFruitPlantHarvested()`
- `playerStats:getAmountOfFruitPlantsHarvested()`
- `playerStats:addFruitConsumed()`
- `playerStats:getAmountOfFruitsConsumed()`
- `playerStats:setMonsterSeen(_monsterUID, _potentialCategory)`
- `playerStats:hasSeenMonster(_monsterUID, _potentialCategory)`
- `playerStats:getMonstersSeen()`
- `playerStats:getAmountDistinctMonstersWithNumberSeen()`
- `playerStats:getAmountDistinctMonstersWithNumberSeenWithPotentialCategory(_potentialCategory)`
- `playerStats:setMonsterOwned(_monsterUID, _potentialCategory)`
- `playerStats:hasOwnedMonster(_monsterUID, _potentialCategory)`
- `playerStats:getAmountDistinctMonstersWithNumberOwnedWithPotentialCategory(_potentialCategory)`
- `playerStats:getMonstersOwned()`
- `playerStats:addMonsterCaughtWithSpinner(_monsterUID, _potentialCategory)`
- `playerStats:getMonstersCaughtWithSpinner()`
- `playerStats:getAmountOfMonstersCaughtWithSpinner()`
- `playerStats:getAmountOfMonstersCaughtWithSpinnerWithPotentialCategory(_potentialCategory)`
- `playerStats:addMonsterFainted()`
- `playerStats:getAmountOfMonstersFainted()`

### playerWorldData

`classes.modules.playerWorldData`

- returns `t`

- `playerWorldData:isCreated()`
- `playerWorldData:destroy()`
- `playerWorldData:onLoadSaveslotData(_saveslotData)`
- `playerWorldData:onSaveSaveslotData(_saveslotData)`
- `playerWorldData:setSpawnableConstructorForMap(_name, _options)`
- `playerWorldData:removeSpawnableConstructorForMap(_name)`
- `playerWorldData:getSpawnableConstructorsForMap(_mapPath, _mapFile)`
- `playerWorldData:setProperty(_name, _value)`
- `playerWorldData:setTempProperty(_name, _value)`
- `playerWorldData:getProperty(_name)`
- `playerWorldData:getTempProperty(_name)`
- `playerWorldData:unsetProperty(_name)`
- `playerWorldData:unsetTempProperty(_name)`
- `playerWorldData:clearTempProperties()`
- `playerWorldData:resolveConsistentSavePropertiesFromSpawnableOrProperty(_name)`

### rateAppHelper

`classes.modules.rateAppHelper`

- returns `t`
- requires: `plugin.reviewPopUp`

- `rateAppHelper:init()`
- `rateAppHelper:tryShowPopup()`

### rectHelper

`classes.modules.rectHelper`

- returns `t`

- `rectHelper:newRect(_parent, _mutator)`
- `rectHelper:newRectObject(_parent, _rectMutator, _objectMutator)`
- `rectHelper:newContainer(_parent, _mutator)`
- `rectHelper:newContainerObject(_parent, _rectMutator, _objectMutator)`
- `rectHelper:newFullScreenRect(_parent, _mutator)`
- `rectHelper:newFullScreenRectObject(_parent, _rectMutator, _objectMutator)`
- `rectHelper:newFullScreenContainer(_parent, _mutator)`
- `rectHelper:newFullScreenContainerObject(_parent, _rectMutator, _objectMutator)`
- `rectHelper:newLineRect(_parent, _width, _height, _fillColor, _rectMutator, _objectMutator)`
- `rectHelper:newLineRectWithoutCorners(_parent, _width, _height, _fillColor, _rectMutator, _objectMutator)`
- `rectHelper:newLineRectWithoutDoubleCorners(_parent, _width, _height, _fillColor, _rectMutator, _objectMutator, _skipCornerDots)`
- `rectHelper:newLineRectProgressBar(_parent, _size, _fillColor, _progress)`
- `rectHelper:newRectWithoutCorners(_parent, _width, _height, _fillColor, _rectMutator, _objectMutator)`
- `rectHelper:newRectWithoutDoubleCorners(_parent, _width, _height, _fillColor, _outlineColor, _lineRectMutator, _objectMutator)`
- `rectHelper:newMultiColorLineRect(_parent, _width, _height, _fillColors, _rectMutator, _objectMutator)`
- `rectHelper:newMultiColorLineRectWithoutCorners(_parent, _width, _height, _fillColors, _rectMutator, _objectMutator)`
- `rectHelper:newReflectedGradientRect(_parent, _width, _height, _edgeColor, _centerColor, _rectMutator, _objectMutator)`
- `rectHelper:newLine(_parent, _mutator)`
- `rectHelper:newDot(_parent, _mutator)`
- `rectHelper:newBigDot(_parent, _mutator)`
- `rectHelper:newStrikethroughForOutlinedText(_parent, _width, _fillColor)`

<details><summary>Instance / other functions (9)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`
- `parentGroup:setSize(_newWidth, _newHeight)`
- `lineRectWithoutCorners:setWidth(_newWidth)`
- `lineRectWithoutCorners:setHeight(_newHeight)`
- `lineRectWithoutCorners:setSize(_newWidth, _newHeight)`
- `lineRectWithoutDoubleCorners:setWidth(_newWidth)`
- `lineRectWithoutDoubleCorners:setHeight(_newHeight)`
- `lineRectWithoutDoubleCorners:setSize(_newWidth, _newHeight)`

</details>

### shareHelper

`classes.modules.shareHelper`

- returns `t`

- `shareHelper:canShare()`
- `shareHelper:shareString(_string, _listener)`

### sheetHelper

`classes.modules.sheetHelper`

- returns `t`

- `sheetHelper:new(_path, _options)`

### sleepable

`classes.modules.sleepable`

- returns `t`, uses coroutines

- `sleepable:setShouldCaptureTraceback(_shouldCaptureTraceback)`
- `sleepable:new(_function)`
- `sleepable:wrap(_function)`
- `sleepable:run(_function)`
- `sleepable:runner(_sleepable, ...)`

### snapshotHelper

`classes.modules.snapshotHelper`

- returns `t`

- `snapshotHelper:new(_parent, _width, _height, _mutator)`
- `snapshotHelper:newAndRecreateIfAndroid(_parent, _width, _height, _recreateFunction)`

### soundHelper

`classes.modules.soundHelper`

- returns `t`
- requires: `audio`

- `soundHelper:init(_options)`
- `soundHelper:loadSound(_pathAlias, _path)`
- `soundHelper:loadStream(_path)`
- `soundHelper:unloadSound(_pathAlias)`
- `soundHelper:unloadStream(_path)`
- `soundHelper:setSoundVolume(_volume)`
- `soundHelper:setChannelVolume(_channel, _volume)`
- `soundHelper:setMusicVolume(_volume)`
- `soundHelper:setMusicVolumeModifier(_modifier)`
- `soundHelper:getMusicVolumeModifier()`
- `soundHelper:fadeMusicVolumeModifier(_time, _modifier)`
- `soundHelper:playSound(_pathAlias, _options, _onDestroy, ...)`
- `soundHelper:playStream(_path, _options, ...)`
- `soundHelper:playLoopingStream(_path, _options, ...)`
- `soundHelper:stopSound(_channel, _optionalOnCompleteToPreventSoundBug)`
- `soundHelper:destroySounds(_tag)`
- `soundHelper:pauseSounds(_tag)`
- `soundHelper:resumeSounds(_tag)`
- `soundHelper:getCurrentMusicPath()`
- `soundHelper:playMusic(_path, _options)`
- `soundHelper:playIntro(_path, _options, _onComplete)`
- `soundHelper:pauseMusic(_fadeOutTime)`
- `soundHelper:resumeMusic(_fadeInTime)`
- `soundHelper:stopMusicIfPlaying(_fadeOutTime, _onComplete)`
- `soundHelper:stopMusic(_fadeOutTime, _onComplete)`

### spawnableHelper

`classes.modules.spawnableHelper`

- returns `t`

- `spawnableHelper:getGenericSpriteMask()`
- `spawnableHelper:startCutscene(...)`
- `spawnableHelper:endCutscene(...)`
- `spawnableHelper:destroySpawnable(...)`
- `spawnableHelper:neverSpawnAgain(...)`
- `spawnableHelper:destroySpawnableAndNeverSpawnAgain(...)`
- `spawnableHelper:getPlayerSpawnable()`
- `spawnableHelper:getRoguePlayerSpawnable()`
- `spawnableHelper:getPlayerSpawnableConstructor()`
- `spawnableHelper:isPlayerCollidingWithObject(_objectName)`
- `spawnableHelper:isColliding(_spawnable1, _spawnable2)`
- `spawnableHelper:prepareTeleport(_spawnable)`
- `spawnableHelper:findSpawnablesInDirection(_spawnable, _direction, _distance)`
- `spawnableHelper:findSpawnablesInDirectionUntilBlocking(_spawnable, _direction, _distance)`
- `spawnableHelper:findSpawnablesAtTile(_spawnable, _tileX, _tileY)`
- `spawnableHelper:findOptionallyNonPrimarySpawnablesAndObjectPropertiesAtTile(_spawnable, _tileX, _tileY)`
- `spawnableHelper:isAtSameLocation(_spawnable, _otherSpawnable)`
- `spawnableHelper:getTileInFrontOf(_spawnable, _amount)`
- `spawnableHelper:getTileInDirectionOf(_spawnable, _direction, _amount)`
- `spawnableHelper:getTileInDirectionOfTile(_tileX, _tileY, _direction, _amount)`
- `spawnableHelper:getTileIndexIn(_spawnable, _direction, _distance)`
- `spawnableHelper:getTileIndexAt(_spawnable, _direction, _distance)`
- `spawnableHelper:getTileIndicesIn(_spawnable, _direction, _amountStart, _amountEnd)`
- `spawnableHelper:getTileIndicesAt(_spawnable, _direction, _amountStart, _amountEnd)`
- `spawnableHelper:getStepsUntilTileX(_spawnable, _tileX)`
- `spawnableHelper:getStepsUntilTileY(_spawnable, _tileY)`
- `spawnableHelper:getStepsUntilTile(_spawnable, _tileX, _tileY)`
- `spawnableHelper:getStepsUntilBoundary(_spawnable, _direction)`
- `spawnableHelper:getStepsUntilOutsideBoundary(_abstractCharacter, _direction)`
- `spawnableHelper:getDistanceBetween(_spawnable1, _spawnable2)`
- `spawnableHelper:createMagnetObject(_spawnable)`
- `spawnableHelper:resolveUnmountedSpawnable(_spawnable)`
- `spawnableHelper:modifyGridMoveToLedgeJump(_abstractCharacter, _distance)`

### specialEventHelper

`classes.modules.specialEventHelper`

- returns `t`

- `specialEventHelper:isReleaseDay()`
- `specialEventHelper:getAmountOfYearsReleased()`
- `specialEventHelper:isChristmas()`
- `specialEventHelper:isNewYear()`
- `specialEventHelper:isInternationalDayOfEducation()`
- `specialEventHelper:isValentinesDay()`
- `specialEventHelper:isPrideMonth()`
- `specialEventHelper:isSaintPatricksDay()`
- `specialEventHelper:isAprilFoolsDay()`
- `specialEventHelper:isKingsDay()`
- `specialEventHelper:isThanksgivingDay()`
- `specialEventHelper:isHalloween()`
- `specialEventHelper:isEaster()`

### spriteHelper

`classes.modules.spriteHelper`

- returns `t`

- `spriteHelper:new(_parent, _spriteOptions, _mutator)`
- `spriteHelper:newPlaying(_parent, _spriteOptions, _mutator)`
- `spriteHelper:newAnimatedFill(_rect, _sprite, _spriteWidth, _spriteHeight, _path, _options)`
- `spriteHelper:newFakeSequence(_amountFrames, _spriteSequenceBase)`
- `spriteHelper:newFakeSequences(_fakeSequences)`
- `spriteHelper:newWithDisplayObjectFrames(_parent, _displayObjectsAsFrames, _mutator)`
- `spriteHelper:newWithDisplayObjectSequences(_parent, _displayObjectsAsSequences, _mutator)`
- `spriteHelper:syncSetFrame(_sprite, _otherSprite, _onFrameChanged)`
- `spriteHelper:unsyncSetFrame(_sprite)`
- `spriteHelper:syncSetSequence(_sprite, _otherSprite, _optionallyModifySequenceFunction)`
- `spriteHelper:unsyncSetSequence(_sprite)`
- `spriteHelper:syncSetSequenceWithoutReset(_sprite, _otherSprite, _optionallyModifySequenceFunction)`
- `spriteHelper:unsyncSetSequenceWithoutReset(_sprite)`
- `spriteHelper:mapSpriteFunctionsTo(_displayObject, _actualSprite)`
- `spriteHelper:previousFrame(_sprite)`
- `spriteHelper:nextFrame(_sprite)`

<details><summary>Instance / other functions (20)</summary>

- `createdSprite.play()`
- `createdSprite.setFrame()`
- `createdSprite.setSequence()`
- `createdSprite.setSequenceAndPlay()`
- `_rect:setWidth(_width)`
- `_rect:setHeight(_height)`
- `parentGroup:setFrame(_frame)`
- `parentGroup:setSequence(_sequence)`
- `parentGroup:getSequence()`
- `parentGroup:getDisplayObject()`
- `parentGroup:getDisplayObjectsAsSequences()`
- `_sprite:setFrame(_frame)`
- `_sprite:setSequence(_sequence)`
- `_sprite:setSequenceWithoutReset(_sequence)`
- `sprite:setSequenceAndPlay(_sequence)`
- `sprite:play()`
- `sprite:pause()`
- `sprite:setFrame(_frame)`
- `sprite:setSequence(_sequence)`
- `sprite:setSequenceWithoutReset(_sequence)`

</details>

<details><summary>Fields with default values (1)</summary>

- `spriteHelper.timeScale` = `1`

</details>

### steamHelper

`classes.modules.steamHelper`

- returns `t`
- requires: `plugin.steamworks`

- `steamHelper:isEnabled()`
- `steamHelper:getAuthSessionTicket(_onError, _onSuccess)`
- `steamHelper:unlockAchievement(_identifier)`
- `steamHelper:showAchievementsScreen()`
- `steamHelper:resetAchievements()`
- `steamHelper:isSteamDeck()`

### systemHelper

`classes.modules.systemHelper`

- returns `t`

- `systemHelper:getPathForBaseDir(_baseDir)`
- `systemHelper:getPathForTemporaryDirectory()`
- `systemHelper:getPathForResourceDirectory()`

### textHelper

`classes.modules.textHelper`

- returns `t`
- requires: `fonts.generatedFontInfo`, `fonts.glyphIdByCharacter_pixelArt`

- `textHelper:getReplaceCharacters()`
- `textHelper:getRenderDependentVowelFunctionFor(_char)`
- `textHelper:isHindiRightPipeCharacter(_char)`
- `textHelper:isHindiRightAlignedMarker(_char, _glyphId)`
- `textHelper:addCharacterObjectRenderFunction(_name, _renderFunction)`
- `textHelper:addCharacterObjectCreateFunction(_name, _configurations, _createFunction)`
- `textHelper:copyMissingCharacterObjectCreateFunctionConfigurations(_targetFontUID)`
- `textHelper:addCharacterObjectLayoutStateFunction(_name, _layoutStateFunction)`
- `textHelper:new(parent, fontType, optionsOrText)`
- `textHelper:playSoundOnTextChange(_everyNthChange, _pathAlias, _options, _onDestroy)`
- `textHelper:setTypeWriterSpeedFactor(_factor)`
- `textHelper:typeWriter(_textObject, _options, _onComplete)`
- `textHelper:scrollingTypeWriter(_parent, _fontType, _options)`
- `textHelper:width(_fontType, _optionsOrText)`
- `textHelper:height(_fontType, _optionsOrText)`
- `textHelper:newPrepared(_fontType, _optionsOrText)`
- `textHelper:spawnPrepared(_parent, _preparedText)`
- `textHelper:isCharacterUsedToParse(_character)`
- `textHelper:escapeParsingCharacters(_text)`
- `textHelper:unescapeParsingCharacters(_text)`
- `textHelper:parseText(_text, _fontType, _disableReverseBIDI)`

<details><summary>Instance / other functions (4)</summary>

- `createdText:render(_text)`
- `createdCharacterObject:setFillColor(_r, _g, _b, _a)`
- `createdText:setFillColor(_r, _g, _b, _a)`
- `createdText:setFillEffect(_onFillEffect)`

</details>

### textureCacheHelper

`classes.modules.textureCacheHelper`

- returns `t`

- `textureCacheHelper:getOrCreateImageTexture(_cache, _path, _optionalBaseDir)`
- `textureCacheHelper:releaseTextures(_cache)`

### tiledLayers

`classes.modules.tiledLayers`

- returns `t`

- `tiledLayers:highest()`
- `tiledLayers:highestName()`
- `tiledLayers:highestNonStickToScreen(_level)`
- `tiledLayers:highestNonStickToScreenName(_level)`
- `tiledLayers:highestLevel(_level)`
- `tiledLayers:highestLevelName(_level)`
- `tiledLayers:highestAboveFloor(_level)`
- `tiledLayers:highestAboveFloorName(_level)`
- `tiledLayers:highestAbovePlayer(_level)`
- `tiledLayers:highestAbovePlayerName(_level)`
- `tiledLayers:highestFloor(_level)`
- `tiledLayers:highestFloorName(_level)`

### timeHelper

`classes.modules.timeHelper`

- returns `t`

- `timeHelper:isAfter(_hour, _minute, _second)`
- `timeHelper:isBefore(_hour, _minute, _second)`
- `timeHelper:startOfMinuteInterval(_interval)`
- `timeHelper:startOfCurrentMinute()`
- `timeHelper:startOfCurrentHour()`
- `timeHelper:startOfCurrentDay()`

### urlHelper

`classes.modules.urlHelper`

- returns `t`
- requires: `socket.url`

- `urlHelper:encode(_url)`
- `urlHelper:decode(_url)`
- `urlHelper:tableToParamString(_params)`

### vibrateHelper

`classes.modules.vibrateHelper`

- returns `t`

- `vibrateHelper:vibrate()`

### worldTransitions

`classes.modules.worldTransitions`

- returns `t`

- `worldTransitions:hideBlackRectangle()`
- `worldTransitions:showBlackRectangle()`
- `worldTransitions:hideWhiteRectangle()`
- `worldTransitions:showWhiteRectangle()`
- `worldTransitions:inTransition(_type, _onComplete)`
- `worldTransitions:outTransition(_type, _onComplete)`
- `worldTransitions:inTransitionAndHideBlackRectangle(_type, _onComplete)`
- `worldTransitions:wrapWithRogueDayOutTransition(_type)`
- `worldTransitions.instant_in(_onComplete)`
- `worldTransitions.instant_out(_onComplete)`
- `worldTransitions.circle_in(_onComplete)`
- `worldTransitions.circle_out(_onComplete)`
- `worldTransitions.slideVertical_in(_onComplete)`
- `worldTransitions.slideVertical_out(_onComplete)`
- `worldTransitions.slideHorizontal_in(_onComplete)`
- `worldTransitions.slideHorizontal_out(_onComplete)`
- `worldTransitions.whiteFade_in(_onComplete)`
- `worldTransitions.whiteFade_out(_onComplete)`
- `worldTransitions.whiteSlowFade_in(_onComplete)`
- `worldTransitions.whiteSlowFade_out(_onComplete)`
- `worldTransitions.fade_in(_onComplete)`
- `worldTransitions.fade_out(_onComplete)`
- `worldTransitions.mediumSlowFade_in(_onComplete)`
- `worldTransitions.mediumSlowFade_out(_onComplete)`
- `worldTransitions.slowFade_in(_onComplete)`
- `worldTransitions.slowFade_out(_onComplete)`
- `worldTransitions.mediumFade_in(_onComplete)`
- `worldTransitions.mediumFade_out(_onComplete)`

<details><summary>Fields with default values (2)</summary>

- `blackRectangle.isVisible` = `false`
- `whiteRectangle.isVisible` = `false`

</details>

### xml

`classes.modules.xml`

- returns `t`

- `xml:decode(xmlText)`

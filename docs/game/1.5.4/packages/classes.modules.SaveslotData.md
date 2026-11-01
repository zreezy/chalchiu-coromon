# classes.modules.SaveslotData / classes.modules.saveslotData

Coromon 1.5.4. 8 module(s). [Back to index](../README.md)

[def](#def), [ICloudSaveslotRecords](#icloudsaveslotrecords), [SaveslotDataVersionMigration](#saveslotdataversionmigration), [SaveslotFacade](#saveslotfacade), [SaveslotPreferences](#saveslotpreferences), [saveslotDataHelper](#saveslotdatahelper), [saveslotDataUtility](#saveslotdatautility), [saveslotDataVersionHelper](#saveslotdataversionhelper)

### def

`classes.modules.SaveslotData.def`

### ICloudSaveslotRecords

`classes.modules.saveslotData.ICloudSaveslotRecords`

- returns `t`
- requires: `plugin.iCloud`

- `ICloudSaveslotRecords:getRecordName(_saveslotIndex, _isAutoSave)`
- `ICloudSaveslotRecords:create(_saveslotIndex, _isAutoSave, _encryptedData, _saveslotMetadata, _versionId)`
- `ICloudSaveslotRecords:fetch(_recordName, _onComplete)`
- `ICloudSaveslotRecords:fetchAll(_onComplete)`
- `ICloudSaveslotRecords:save(_cloudKitRecord, _saveslotMetadata, _encryptedData, _versionId, _onComplete)`
- `ICloudSaveslotRecords:delete(_saveslotIndex, _onComplete)`

<details><summary>Fields with default values (28)</summary>

- `ICloudSaveslotRecords.cloudKitErrors.CKErrorInternalError` = `1`
- `ICloudSaveslotRecords.cloudKitErrors.PartialFailure` = `2`
- `ICloudSaveslotRecords.cloudKitErrors.NetworkUnavailable` = `3`
- `ICloudSaveslotRecords.cloudKitErrors.NetworkFailure` = `4`
- `ICloudSaveslotRecords.cloudKitErrors.BadContainer` = `5`
- `ICloudSaveslotRecords.cloudKitErrors.ServiceUnavailable` = `6`
- `ICloudSaveslotRecords.cloudKitErrors.RequestRateLimited` = `7`
- `ICloudSaveslotRecords.cloudKitErrors.MissingEntitlement` = `8`
- `ICloudSaveslotRecords.cloudKitErrors.NotAuthenticated` = `9`
- `ICloudSaveslotRecords.cloudKitErrors.PermissionFailure` = `10`
- `ICloudSaveslotRecords.cloudKitErrors.UnknownItem` = `11`
- `ICloudSaveslotRecords.cloudKitErrors.InvalidArguments` = `12`
- `ICloudSaveslotRecords.cloudKitErrors.ResultsTruncated` = `13`
- `ICloudSaveslotRecords.cloudKitErrors.ServerRecordChanged` = `14`
- `ICloudSaveslotRecords.cloudKitErrors.ServerRejectedRequest` = `15`
- `ICloudSaveslotRecords.cloudKitErrors.AssetFileNotFound` = `16`
- `ICloudSaveslotRecords.cloudKitErrors.AssetFileModified` = `17`
- `ICloudSaveslotRecords.cloudKitErrors.IncompatibleVersion` = `18`
- `ICloudSaveslotRecords.cloudKitErrors.ConstraintViolation` = `19`
- `ICloudSaveslotRecords.cloudKitErrors.OperationCancelled` = `20`
- `ICloudSaveslotRecords.cloudKitErrors.ChangeTokenExpired` = `21`
- `ICloudSaveslotRecords.cloudKitErrors.BatchRequestFailed` = `22`
- `ICloudSaveslotRecords.cloudKitErrors.ZoneBusy` = `23`
- `ICloudSaveslotRecords.cloudKitErrors.BadDatabase` = `24`
- `ICloudSaveslotRecords.cloudKitErrors.QuotaExceeded` = `25`
- `ICloudSaveslotRecords.cloudKitErrors.ZoneNotFound` = `26`
- `ICloudSaveslotRecords.cloudKitErrors.LimitExceeded` = `27`
- `ICloudSaveslotRecords.cloudKitErrors.UserDeletedZone` = `28`

</details>

### SaveslotDataVersionMigration

`classes.modules.saveslotData.SaveslotDataVersionMigration`

- `SaveslotDataVersionMigration:updateSaveslotData(_saveslotData, _saveslotIndex, _originalSaveslotVersion)`

### SaveslotFacade

`classes.modules.saveslotData.SaveslotFacade`

- returns `t`

- `SaveslotFacade:getCachedSaveslotClustersForDeviceId()`
- `SaveslotFacade:setCachedSaveslotClustersForDeviceId(_saveslotClustersForDeviceId)`
- `SaveslotFacade:getSaveslotClustersByDeviceId(_onComplete)`
- `SaveslotFacade:save(_saveslotCluster, _saveslotData, _versionId, _deviceId, _saveslotIndex, _isAutoSave, _confirmOverrideConflict, _onComplete)`
- `SaveslotFacade:delete(_deviceId, _saveslotIndex, _onError, _onComplete)`

### SaveslotPreferences

`classes.modules.saveslotData.SaveslotPreferences`

- returns `t`

- `SaveslotPreferences:getSaveslotsClustersByDeviceIds(_deviceIds)`
- `SaveslotPreferences:save(_deviceId, _saveslotIndex, _isAutoSave, _saveslotMetadata, _encryptedSaveslotData, _versionId)`
- `SaveslotPreferences:get(_deviceId, _saveslotIndex, _isAutoSave)`
- `SaveslotPreferences:delete(_deviceId, _saveslotIndex)`
- `SaveslotPreferences:getCachedOnlineSaveslot(_deviceId, _saveslotIndex, _isAutoSave)`
- `SaveslotPreferences:setCachedOnlineSaveslot(_deviceId, _saveslotIndex, _isAutoSave, _saveslotMetadata, _encryptedSaveslotData, _versionId)`

### saveslotDataHelper

`classes.modules.saveslotData.saveslotDataHelper`

- returns `t`

- `saveslotDataHelper:encrypt(_saveslotData)`
- `saveslotDataHelper:decrypt(_encryptedSaveslotData)`
- `saveslotDataHelper:createMetadata(_saveslotData)`
- `saveslotDataHelper:encodeMetadata(_saveslotMetadata)`
- `saveslotDataHelper:decodeMetadata(_saveslotMetadataString)`
- `saveslotDataHelper:createScreenshotForMetadata(_parent, _saveslotMetadata, _screenshotFilename)`
- `saveslotDataHelper:updateDataToNewestVersion(_saveslotData, _saveslotIndex)`

### saveslotDataUtility

`classes.modules.saveslotData.saveslotDataUtility`

- returns `t`

- `saveslotDataUtility:getMainCharacterMapFile(_saveslotData)`
- `saveslotDataUtility:getMainCharacterMapPath(_saveslotData)`

### saveslotDataVersionHelper

`classes.modules.saveslotData.saveslotDataVersionHelper`

- returns `t`

- `saveslotDataVersionHelper:removeTemporaryProperties(_saveslotData)`
- `saveslotDataVersionHelper:addSaveslotChangedNotificationMessage(_saveslotData, _message)`
- `saveslotDataVersionHelper:getAllSavedMonsters(_saveslotData)`
- `saveslotDataVersionHelper:forEachSavedMonster(_saveslotData, _function)`
- `saveslotDataVersionHelper:findSavedMonster(_saveslotData, _function)`
- `saveslotDataVersionHelper:anySavedMonsterMatches(_saveslotData, _function)`
- `saveslotDataVersionHelper:forEachCastedMonster(_saveslotData, _function)`
- `saveslotDataVersionHelper:findCastedMonster(_saveslotData, _function)`
- `saveslotDataVersionHelper:findMaxCastedMonsterValue(_saveslotData, _function)`
- `saveslotDataVersionHelper:forEachOnlineSquadEntry(_saveslotData, _function)`
- `saveslotDataVersionHelper:changeMonsterUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:changeMonsterSpriteSkinUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:forEachWorldEffect(_saveslotData, _function)`
- `saveslotDataVersionHelper:forEachWorldEffectWithClassPath(_saveslotData, _classPath, _function)`
- `saveslotDataVersionHelper:changeWorldEffectClassPath(_saveslotData, _oldClassPath, _newClassPath)`
- `saveslotDataVersionHelper:removeWorldEffect(_saveslotData, _classPath)`
- `saveslotDataVersionHelper:removeWorldEffectIf(_saveslotData, _classPath, _function)`
- `saveslotDataVersionHelper:replaceInTiledSpawnableSaveableName(_saveslotData, _oldName, _newName)`
- `saveslotDataVersionHelper:changeTiledSpawnableName(_saveslotData, _mapPath, _mapFile, _oldName, _newName)`
- `saveslotDataVersionHelper:changeAndMoveTiledSpawnableName(_saveslotData, _oldMapPath, _oldMapFile, _newMapPath, _newMapFile, _oldName, _newName)`
- `saveslotDataVersionHelper:removeItem(_saveslotData, _UID)`
- `saveslotDataVersionHelper:changeItemUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:getAmountOfHoldItemUID(_saveslotData, _UID)`
- `saveslotDataVersionHelper:setMaxAmountOfItemUID(_saveslotData, _UID, _maxAmount)`
- `saveslotDataVersionHelper:changeSkillUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:changeSkillObjectUID(_saveslotData, _familyUID, _oldSkillUID, _newSkillUID)`
- `saveslotDataVersionHelper:changeTraitUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:isQuestStarted(_saveslotData, _questUID, _questChapter)`
- `saveslotDataVersionHelper:isQuestInProgress(_saveslotData, _questUID, _questChapter)`
- `saveslotDataVersionHelper:isQuestCompleted(_saveslotData, _questUID, _questChapter)`
- `saveslotDataVersionHelper:changeQuestUID(_saveslotData, _oldQuestUID, _newQuestUID)`
- `saveslotDataVersionHelper:removeQuestChapterUID(_saveslotData, _questUID, _chapterUID)`
- `saveslotDataVersionHelper:changeQuestChapterUID(_saveslotData, _questUID, _oldChapterUID, _newChapterUID)`
- `saveslotDataVersionHelper:changePlayerWorldDataPropertyUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:changeMilestoneUID(_saveslotData, _oldUID, _newUID)`
- `saveslotDataVersionHelper:changeMapName(_saveslotData, _oldMapPath, _oldMapFile, _newMapPath, _newMapFile)`
- `saveslotDataVersionHelper:isPlayerInMap(_saveslotData, _mapPath, _mapFile)`
- `saveslotDataVersionHelper:getPlayerTile(_saveslotData)`
- `saveslotDataVersionHelper:placePlayerInMapAt(_saveslotData, _mapPath, _mapFile, _tileX, _tileY, _optionalDirection)`
- `saveslotDataVersionHelper:movePlayerTo(_saveslotData, _mapPath, _mapFile, _tileX, _tileY, _optionalDirection)`
- `saveslotDataVersionHelper:movePlayerToAndInvalidateOtherSpawnableLocations(_saveslotData, _mapPath, _mapFile, _tileX, _tileY, _optionalDirection)`
- `saveslotDataVersionHelper:moveSpawnables(_saveslotData, _mapPath, _mapFile, _deltaTileX, _deltaTileY)`
- `saveslotDataVersionHelper:removeSupportedGlyph(_saveslotData, _character)`

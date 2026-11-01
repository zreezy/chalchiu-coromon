# classes.online

Coromon 1.5.4. 14 module(s). [Back to index](../README.md)

[CoromonServer](#coromonserver), [CoromonWebsocket](#coromonwebsocket), [OnlineAuthentication](#onlineauthentication), [OnlineAuthenticationServer](#onlineauthenticationserver), [OnlineInventoryData](#onlineinventorydata), [OnlineInventoryServer](#onlineinventoryserver), [OnlineProfileData](#onlineprofiledata), [OnlineProfileServer](#onlineprofileserver), [OnlineRankingData](#onlinerankingdata), [OnlineRankingServer](#onlinerankingserver), [OnlineRewardsData](#onlinerewardsdata), [OnlineRewardsServer](#onlinerewardsserver), [OnlineSaveslotServer](#onlinesaveslotserver), [OnlineShopServer](#onlineshopserver)

### CoromonServer

`classes.online.CoromonServer`

- returns `t`

- `CoromonServer:new(_serverUrl)`

<details><summary>Instance / other functions (8)</summary>

- `coromonServer:cancelGetRequest(_endpoint)`
- `coromonServer:cancelPostRequest(_endpoint)`
- `coromonServer:cancelPutRequest(_endpoint)`
- `coromonServer:cancelDeleteRequest(_endpoint)`
- `coromonServer:doGetRequest(_endpoint, _authenticationMode, _onError, _onNoError, _extraOptions)`
- `coromonServer:doPostRequest(_endpoint, _authenticationMode, _params, _onError, _onNoError, _extraOptions)`
- `coromonServer:doPutRequest(_endpoint, _authenticationMode, _params, _onError, _onNoError, _extraOptions)`
- `coromonServer:doDeleteRequest(_endpoint, _authenticationMode, _params, _onError, _onNoError, _extraOptions)`

</details>

### CoromonWebsocket

`classes.online.CoromonWebsocket`

- returns `t`
- requires: `websockets`, `plugin.websockets`, `plugin.solarwebsockets`
- defines globals: `print` = function(...), `emptyParams` = function()

- `CoromonWebsocket:optionallyEmptyArray(_array)`
- `CoromonWebsocket:newAuthorizing(_uri)`

<details><summary>Instance / other functions (10)</summary>

- `print(...)`
- `emptyParams()`
- `coromonWebsocket:setOnMessage(_onMessage)`
- `coromonWebsocket:setOnClose(_onClose)`
- `coromonWebsocket:setOnError(_onError)`
- `coromonWebsocket:getLastSentString()`
- `coromonWebsocket:send(_type, _data)`
- `coromonWebsocket:connect(_onAuthorizationFailed, _onAuthorizationSucceeded)`
- `coromonWebsocket:disconnect(_onDisconnect)`
- `coromonWebsocket:reconnect(_onAuthorizationFailed, _onAuthorizationSucceeded)`

</details>

### OnlineAuthentication

`classes.online.OnlineAuthentication`

- returns `t`

- `OnlineAuthentication:setDeviceIds(_deviceIds)`
- `OnlineAuthentication:getDeviceId()`
- `OnlineAuthentication:getDeviceIds()`
- `OnlineAuthentication:setDebugDeviceIds(_deviceIds)`
- `OnlineAuthentication:getAccessToken()`
- `OnlineAuthentication:setAccessToken(_accessToken, _expiresIn)`
- `OnlineAuthentication:setRefreshToken(_refreshToken)`
- `OnlineAuthentication:getRefreshToken()`
- `OnlineAuthentication:logout()`
- `OnlineAuthentication:ensureValidAccessToken(_onError, _onAccessTokenEnsured)`
- `OnlineAuthentication:cacheUnlockFullGameReceiptDataAndLogout(_receiptData)`
- `OnlineAuthentication:getCachedUnlockFullGameReceiptData()`
- `OnlineAuthentication:getProvider()`

### OnlineAuthenticationServer

`classes.online.OnlineAuthenticationServer`

- returns `t`
- requires: `classes.interface.overlays.ClosableWebviewOverlay`

- `OnlineAuthenticationServer:authenticate(_onError, _onAuthenticated)`
- `OnlineAuthenticationServer:refresh(_refreshToken, _onError, _onRefresh)`
- `OnlineAuthenticationServer:revoke(_refreshToken, _onError, _onRevoked)`
- `OnlineAuthenticationServer:getLinks(_onError, _onSuccess)`
- `OnlineAuthenticationServer:link(_onlineIdentityProvider, _onBeforeWebviewLoadOrError, _onError, _onLinked)`
- `OnlineAuthenticationServer:unlink(_onlineIdentityProvider, _deviceId, _onError, _onUnlinked)`

### OnlineInventoryData

`classes.online.OnlineInventoryData`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.LuxSolisBenefitContainerPopup`

- `OnlineInventoryData:debugSet(_onlineInventory)`
- `OnlineInventoryData:getInventories()`
- `OnlineInventoryData:getAndSetInventory(_deviceId, _onError, _onSuccess)`
- `OnlineInventoryData:debugSetAmountOfStyleCrystals(_amount)`
- `OnlineInventoryData:getAmountOfStyleCrystals(_deviceId)`
- `OnlineInventoryData:increaseAndCacheAmountOfStyleCrystals(_deviceId, _amount)`
- `OnlineInventoryData:decreaseAndCacheAmountOfStyleCrystals(_deviceId, _amount)`
- `OnlineInventoryData:getAndCacheAmountOfStyleCrystals(_onError, _onSuccess)`
- `OnlineInventoryData:cacheUnclaimedStyleCrystalPackReceiptObject(_receipt, _IAPValue)`
- `OnlineInventoryData:getUnclaimedStyleCrystalPackReceiptObjects()`
- `OnlineInventoryData:removeUnclaimedStyleCrystalPackReceiptObject(_unclaimedStyleCrystalPackObject)`
- `OnlineInventoryData:getOnlineStyleProductUIDForMonsterSpriteSkin(_monsterSpriteSkin)`
- `OnlineInventoryData:getOnlineStyleProductUIDForOnlineAvatar(_monsterAvatarUID)`
- `OnlineInventoryData:getOnlineStyleProductUIDForCharacterWearable(_onlineCharacterWearableUID)`
- `OnlineInventoryData:resolveMonsterSpriteSkinForOnlineStyleProduct(_onlineStyleProductUID)`
- `OnlineInventoryData:resolveOnlineAvatarForOnlineStyleProduct(_onlineStyleProductUID)`
- `OnlineInventoryData:hasProduct(_deviceId, _onlineStyleProductUID)`
- `OnlineInventoryData:addProductsAndCache(_deviceId, _redeemedProducts)`
- `OnlineInventoryData:setProductSeen(_onlineStyleProductUID)`
- `OnlineInventoryData:hasSeenProduct(_onlineStyleProductUID)`
- `OnlineInventoryData:cacheSeenProducts()`
- `OnlineInventoryData:getSeenProducts()`
- `OnlineInventoryData:purchaseProductAndRedeemShopReceiptOrShowMessage(_deviceId, _onlineStyleProductUID, _expectedStyleCrystalCost, _updateStyleCrystals, _onBeforeShowPopup, _onSuccess, _onErrorPopupClosed)`
- `OnlineInventoryData:redeemShopReceiptOrShowMessage(_deviceId, _shopReceipt, _onBeforeShowPopup, _onAfterClose)`

### OnlineInventoryServer

`classes.online.OnlineInventoryServer`

- returns `t`

- `OnlineInventoryServer:getInventory(_deviceId, _onError, _onSuccess)`
- `OnlineInventoryServer:redeemShopReceipt(_receiptData, _onError, _onSuccess)`

### OnlineProfileData

`classes.online.OnlineProfileData`

- returns `t`

- `OnlineProfileData:getAccessToken()`
- `OnlineProfileData:setAccessToken(_accessToken, _expiresIn)`
- `OnlineProfileData:ensureValidAccessToken(_onError, _onAccessTokenEnsured)`
- `OnlineProfileData:set(_profile)`
- `OnlineProfileData:get()`

### OnlineProfileServer

`classes.online.OnlineProfileServer`

- returns `t`
- requires: `nnaccount`

- `OnlineProfileServer:create(_name, _avatar, _onError, _onSuccess)`
- `OnlineProfileServer:login(_profileId, _onError, _onSuccess)`
- `OnlineProfileServer:get(_profileId, _onError, _onSuccess)`
- `OnlineProfileServer:getAuthenticated(_onError, _onSuccess)`
- `OnlineProfileServer:update(_name, _avatar, _onError, _onSuccess)`

### OnlineRankingData

`classes.online.OnlineRankingData`

- returns `t`

- `OnlineRankingData:createDebugRankForRating(_rating)`
- `OnlineRankingData:debugSetActiveSeasonRanks()`
- `OnlineRankingData:debugSetActiveSeasonRank(_seasonRank, _rating)`
- `OnlineRankingData:setActiveSeasonRank(_onlineMatchmakingMode, _seasonRank)`
- `OnlineRankingData:getActiveSeasonRank(_onlineMatchmakingMode)`
- `OnlineRankingData:getActiveSeasonRankForLastSelectedOnlineRankedMatchmakingMode()`
- `OnlineRankingData:getKnownSeason(_seasonId)`
- `OnlineRankingData:setKnownSeasonAndStoreInCache(_seasonId, _season)`
- `OnlineRankingData:clearKnownSeasonCache()`
- `OnlineRankingData:getKnownSeasonTierAndDivisionForCumulativeDivision(_seasonId, _cumulativeDivision)`
- `OnlineRankingData:getMinimumRatingForTier(_seasonId, _onlineTierValue)`
- `OnlineRankingData:getRewardsForTier(_seasonId, _onlineTierValue)`
- `OnlineRankingData:debugSetKnownSeason()`
- `OnlineRankingData:getQueueTypeForMatchmakingMode(_matchmakingMode)`
- `OnlineRankingData:ensureActiveSeasonAndRankFor(_profileId, _onlineMatchmakingMode, _onError, _onSuccess)`
- `OnlineRankingData:ensureActiveSeasonAndRankForOpponent(_profileId, _onlineMatchmakingMode, _onError, _onSuccess)`
- `OnlineRankingData:ensureActiveSeasonAndRank(_onlineMatchmakingMode, _onError, _onSuccess)`
- `OnlineRankingData:ensureSeason(_seasonId, _onError, _onSuccess)`

### OnlineRankingServer

`classes.online.OnlineRankingServer`

- returns `t`

- `OnlineRankingServer:getSeasonRanks(_profileId, _onlineMatchmakingMode, _onError, _onSuccess)`
- `OnlineRankingServer:getSeasonRank(_profileId, _onlineMatchmakingMode, _seasonId, _onError, _onSuccess)`
- `OnlineRankingServer:getActiveSeasonRank(_profileId, _onlineMatchmakingMode, _onError, _onSuccess)`
- `OnlineRankingServer:getSeason(_seasonId, _onError, _onSuccess)`
- `OnlineRankingServer:getAndCacheActiveSeason(_onError, _onSuccess)`
- `OnlineRankingServer:getLeaderboardPage(_seasonId, _onlineMatchmakingMode, _pageIndex, _onError, _onSuccess)`

### OnlineRewardsData

`classes.online.OnlineRewardsData`

- returns `t`
- requires: `classes.interface.overlays.LuxSolisBenefitContainerPopup`

- `OnlineRewardsData:getStaticMilestones()`
- `OnlineRewardsData:getStaticMilestoneById(_id)`
- `OnlineRewardsData:ensureStaticMilestones(_deviceId, _onError, _onSuccess)`
- `OnlineRewardsData:completeStaticMilestone(_id, _onError, _onSuccess)`
- `OnlineRewardsData:getAndClaimAndAcknowledgePendingRewards(_deviceId, _onSuccess)`
- `OnlineRewardsData:showPopupForRedeemedRewards(_redeemedRewards, _onComplete)`

### OnlineRewardsServer

`classes.online.OnlineRewardsServer`

- returns `t`

- `OnlineRewardsServer:getStaticMilestones(_deviceId, _onError, _onSuccess)`
- `OnlineRewardsServer:completeStaticMilestone(_deviceId, _id, _onError, _onSuccess)`
- `OnlineRewardsServer:getPendingRewards(_deviceId, _onError, _onSuccess)`
- `OnlineRewardsServer:claimPendingReward(_id, _onError, _onSuccess)`
- `OnlineRewardsServer:acknowledgePendingReward(_id, _onError, _onSuccess)`

### OnlineSaveslotServer

`classes.online.OnlineSaveslotServer`

- returns `t`

- `OnlineSaveslotServer:getData(_dataUrl, _onError, _onSuccess)`
- `OnlineSaveslotServer:getMetadata(_metadataUrl, _onError, _onSuccess)`
- `OnlineSaveslotServer:getAll(_onError, _onSuccess)`
- `OnlineSaveslotServer:put(_deviceId, _saveslotIndex, _isAutosave, _version, _shouldOverwrite, _shouldShowNxError, _saveslotMetadata, _saveslotData, _onError, _onSuccess)`
- `OnlineSaveslotServer:delete(_deviceId, _saveslotIndex, _onError, _onSuccess)`

### OnlineShopServer

`classes.online.OnlineShopServer`

- returns `t`

- `OnlineShopServer:debugIncreaseStyleCrystals(_deviceId, _onError, _onSuccess)`
- `OnlineShopServer:getStyleCrystals(_onError, _onSuccess)`
- `OnlineShopServer:redeemStyleCrystals(_deviceId, _receipt, _IAP, _onError, _onSuccess)`
- `OnlineShopServer:redeemCoupon(_deviceId, _couponId, _onError, _onSuccess)`
- `OnlineShopServer:redeemRewardToken(_deviceId, _rewardToken, _onError, _onSuccess)`
- `OnlineShopServer:getPendingTransactionsReceipt(_deviceId, _onError, _onSuccess)`
- `OnlineShopServer:purchaseProduct(_deviceId, _productUID, _onError, _onSuccess)`

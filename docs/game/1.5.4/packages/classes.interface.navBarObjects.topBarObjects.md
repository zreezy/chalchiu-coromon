# classes.interface.navBarObjects.topBarObjects

Coromon 1.5.4. 25 module(s). [Back to index](../README.md)

[abstractOuterTopBarButtonBuilder](#abstractoutertopbarbuttonbuilder), [abstractOuterTopBarObjectBuilder](#abstractoutertopbarobjectbuilder), [innerTopBarAchievementsCounter](#innertopbarachievementscounter), [innerTopBarExtra1TooltipButtonBuilder](#innertopbarextra1tooltipbuttonbuilder), [innerTopBarGold](#innertopbargold), [innerTopBarMonsterSpriteSkinCollectedCounter](#innertopbarmonsterspriteskincollectedcounter), [innerTopBarMonstersOwnedCounter](#innertopbarmonstersownedcounter), [innerTopBarMonstersSeenCounter](#innertopbarmonstersseencounter), [innerTopBarMonstersStoredCounter](#innertopbarmonstersstoredcounter), [innerTopBarStyleCrystals](#innertopbarstylecrystals), [innerTopBarTitle](#innertopbartitle), [outerTopBarBackButtonBuilder](#outertopbarbackbuttonbuilder), [outerTopBarClaimAllButtonBuilder](#outertopbarclaimallbuttonbuilder), [outerTopBarDebugButtonBuilder](#outertopbardebugbuttonbuilder), [outerTopBarEscapeButtonBuilder](#outertopbarescapebuttonbuilder), [outerTopBarGold](#outertopbargold), [outerTopBarInfoButtonBuilder](#outertopbarinfobuttonbuilder), [outerTopBarLuxSolisRankBuilder](#outertopbarluxsolisrankbuilder), [outerTopBarMonsterFilterButtonBuilder](#outertopbarmonsterfilterbuttonbuilder), [outerTopBarMonsterSortButtonBuilder](#outertopbarmonstersortbuttonbuilder), [outerTopBarOnlineLeaderboardsButtonBuilder](#outertopbaronlineleaderboardsbuttonbuilder), [outerTopBarQuitButtonBuilder](#outertopbarquitbuttonbuilder), [outerTopBarRandomButtonBuilder](#outertopbarrandombuttonbuilder), [outerTopBarRestorePurchasesButtonBuilder](#outertopbarrestorepurchasesbuttonbuilder), [outerTopBarSetMonsterLevelToButtonBuilder](#outertopbarsetmonsterleveltobuttonbuilder)

### abstractOuterTopBarButtonBuilder

`classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarObjectBuilder`

- `abstractOuterTopBarButtonBuilder:new(_containerStyle, _additionalWidth, _additionalHeight)`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:getButton()`
- `parentGroup:setUsesFirstExtraButtonNavigation(_usesFirstExtraButtonNavigation)`
- `parentGroup:setOnObtainFocus(_function)`
- `parentGroup:setOnRemoveFocus(_function)`
- `parentGroup:getGamepadGamepadNavigation(_focusSelector)`
- `parentGroup:getGlobalNavigation()`

</details>

### abstractOuterTopBarObjectBuilder

`classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarObjectBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractNavBarObjectBuilder`

- `abstractOuterTopBarObjectBuilder:new(_width, _height)`

<details><summary>Instance / other functions (9)</summary>

- `topBarObject:chooseParent(_navBar, _innerNavBar)`
- `topBarObject:setToOffsetLocation(_navBar, _innerNavBar, _side, _offset)`
- `topBarObject:transitionToOffsetLocation(_navBar, _innerNavBar, _side, _offset)`
- `topBarObject:setToTargetLocation(_navBar, _innerNavBar, _side)`
- `topBarObject:setToInLocation(_navBar, _innerNavBar, _side)`
- `topBarObject:setToOutLocation(_navBar, _innerNavBar, _side)`
- `topBarObject:transitionToTargetLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `topBarObject:transitionToInLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `topBarObject:transitionToOutLocation(_navBar, _innerNavBar, _side, _onComplete)`

</details>

### innerTopBarAchievementsCounter

`classes.interface.navBarObjects.topBarObjects.innerTopBarAchievementsCounter`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarAchievementsCounter:new()`

### innerTopBarExtra1TooltipButtonBuilder

`classes.interface.navBarObjects.topBarObjects.innerTopBarExtra1TooltipButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarExtra1TooltipButtonBuilder:new(_targetTopBarButton)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getGamepadGamepadNavigation(_focusSelector)`
- `parentGroup:shouldBeVisibleInNavBar()`
- `parentGroup:getGlobalNavigation()`

</details>

### innerTopBarGold

`classes.interface.navBarObjects.topBarObjects.innerTopBarGold`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarGold:isCreated()`
- `innerTopBarGold:getOrCreateInstance()`
- `innerTopBarGold:createInstance()`
- `innerTopBarGold:getInstance()`

<details><summary>Instance / other functions (2)</summary>

- `instance:doCurrencyAnimation()`
- `instance:onDestroy()`

</details>

### innerTopBarMonsterSpriteSkinCollectedCounter

`classes.interface.navBarObjects.topBarObjects.innerTopBarMonsterSpriteSkinCollectedCounter`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarMonsterSpriteSkinCollectedCounter:new()`

### innerTopBarMonstersOwnedCounter

`classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersOwnedCounter`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarMonstersOwnedCounter:new()`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setPotentialCategory(_potentialCategory)`

</details>

### innerTopBarMonstersSeenCounter

`classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersSeenCounter`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarMonstersSeenCounter:new()`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setPotentialCategory(_potentialCategory)`

</details>

### innerTopBarMonstersStoredCounter

`classes.interface.navBarObjects.topBarObjects.innerTopBarMonstersStoredCounter`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarMonstersStoredCounter:new()`
- `innerTopBarMonstersStoredCounter:setAmount(_amount)`

### innerTopBarStyleCrystals

`classes.interface.navBarObjects.topBarObjects.innerTopBarStyleCrystals`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarStyleCrystals:isCreated()`
- `innerTopBarStyleCrystals:getInstance()`
- `innerTopBarStyleCrystals:getOrCreateInstance(_deviceId)`
- `innerTopBarStyleCrystals:createInstance(_deviceId)`

<details><summary>Instance / other functions (2)</summary>

- `instance:doCurrencyAnimation(_options)`
- `instance:onDestroy()`

</details>

### innerTopBarTitle

`classes.interface.navBarObjects.topBarObjects.innerTopBarTitle`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerTopBarTitle:getOrCreateInstance(_title)`
- `innerTopBarTitle:createInstance(_title)`

<details><summary>Instance / other functions (2)</summary>

- `instance:setSubtitle(_subtitle)`
- `instance:onDestroy()`

</details>

### outerTopBarBackButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarBackButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarBackButtonBuilder:new(_onBeforePress, _onPress)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:getGamepadGamepadNavigation(_focusSelector)`
- `parentGroup:getGlobalNavigation()`

</details>

### outerTopBarClaimAllButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarClaimAllButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarClaimAllButtonBuilder:new(_milestoneList)`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:getButton()`
- `parentGroup:setEnabled(_isEnabled)`
- `parentGroup:isEnabled()`
- `parentGroup:setOnPress(_onPress)`
- `parentGroup:refreshEnabledState()`
- `parentGroup:getXOffsetToNextObject()`

</details>

### outerTopBarDebugButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarDebugButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarDebugButtonBuilder:new(_onPress)`

### outerTopBarEscapeButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarEscapeButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarEscapeButtonBuilder:new(_shouldBeHidden, _onBeforePress, _onPress)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getGlobalNavigation()`
- `parentGroup:getGamepadGamepadNavigation(_focusSelector)`
- `parentGroup:getXOffsetToNextObject()`

</details>

### outerTopBarGold

`classes.interface.navBarObjects.topBarObjects.outerTopBarGold`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarObjectBuilder`

- `outerTopBarGold:isCreated()`
- `outerTopBarGold:getOrCreateInstance()`
- `outerTopBarGold:createInstance()`
- `outerTopBarGold:getInstance()`

<details><summary>Instance / other functions (2)</summary>

- `instance:doCurrencyAnimation()`
- `instance:onDestroy()`

</details>

### outerTopBarInfoButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarInfoButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarInfoButtonBuilder:new(_onPress)`

### outerTopBarLuxSolisRankBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarLuxSolisRankBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarObjectBuilder`, `classes.interface.LuxSolisBenefitContainer`

- `outerTopBarLuxSolisRankBuilder:new()`

<details><summary>Instance / other functions (3)</summary>

- `topBarObject:getXpBar()`
- `topBarObject:setUpcomingLuxSolisBenefitProvider(_provider)`
- `topBarObject:refreshAnimated(_onComplete)`

</details>

### outerTopBarMonsterFilterButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarMonsterFilterButtonBuilder`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`, `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`, `classes.interface.overlays.monsterFilterPopupBuilder`

- `outerTopBarMonsterFilterButtonBuilder:new(_selectedFilter, _monsterFilterFunction, _monsterDatabase)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setOnFilterSelectedAndExecuteNow(_function)`
- `parentGroup:refilterOrSetToUnknownOrClosePauseMenu()`

</details>

### outerTopBarMonsterSortButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarMonsterSortButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`, `classes.interface.overlays.LocalisableEnumSelectPopup`

- `outerTopBarMonsterSortButtonBuilder:new(_sortMode)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setOnSortModeSelected(_function)`

</details>

### outerTopBarOnlineLeaderboardsButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarOnlineLeaderboardsButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarOnlineLeaderboardsButtonBuilder:new(_onPress, _additionalWidth, _additionalHeight, _buttonYOffset)`

### outerTopBarQuitButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarQuitButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`, `classes.interface.overlays.confirmPopupBuilder`

- `outerTopBarQuitButtonBuilder:new()`

### outerTopBarRandomButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarRandomButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarRandomButtonBuilder:new(_onPress)`

### outerTopBarRestorePurchasesButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarRestorePurchasesButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`, `classes.interface.overlays.RestorePurchasesConfirmPopup`

- `outerTopBarRestorePurchasesButtonBuilder:isCreated()`
- `outerTopBarRestorePurchasesButtonBuilder:getOrCreateInstance(_onRestoredProducts)`
- `outerTopBarRestorePurchasesButtonBuilder:createInstance(_onRestoredProducts)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setOnRestoredProducts(_newOnRestoredProducts)`
- `instance:onDestroy()`

</details>

### outerTopBarSetMonsterLevelToButtonBuilder

`classes.interface.navBarObjects.topBarObjects.outerTopBarSetMonsterLevelToButtonBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.topBarObjects.abstractOuterTopBarButtonBuilder`

- `outerTopBarSetMonsterLevelToButtonBuilder:new(_level, _isEnabled, _onPress, _additionalWidth)`

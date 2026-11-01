# classes.interface

Coromon 1.5.4. 67 module(s). [Back to index](../README.md)

[AbstractPauseMenuNavBar](#abstractpausemenunavbar), [AchievementAchievedPopup](#achievementachievedpopup), [AchievementIcon](#achievementicon), [BattleEnvironmentPreview](#battleenvironmentpreview), [BlurredAndDesaturatedScreenshot](#blurredanddesaturatedscreenshot), [ColoredMonsterTypesInnerContainer](#coloredmonstertypesinnercontainer), [FocusSelector](#focusselector), [GetFullGameButton](#getfullgamebutton), [ItemPopup](#itempopup), [LuxSolisBenefitContainer](#luxsolisbenefitcontainer), [MilestoneAchievedPopup](#milestoneachievedpopup), [MonsterAvatar](#monsteravatar), [MonsterCrimsoniteAuraBar](#monstercrimsoniteaurabar), [MonsterPreview](#monsterpreview), [MonsterSpriteSkinMilestoneAchievedPopup](#monsterspriteskinmilestoneachievedpopup), [MonsterSpriteSkinMilestoneDetailsContainer](#monsterspriteskinmilestonedetailscontainer), [OnlineSquadMonsterButton](#onlinesquadmonsterbutton), [PauseMenuBottomBar](#pausemenubottombar), [PauseMenuTopBar](#pausemenutopbar), [RogueMonsterPreview](#roguemonsterpreview), [SaveslotMetadataContainer](#saveslotmetadatacontainer), [SkillSideEffectTurnIndicator](#skillsideeffectturnindicator), [TallMonsterButton](#tallmonsterbutton), [UIBottomBar](#uibottombar), [UIButton](#uibutton), [UIButtonTooltip](#uibuttontooltip), [UIButtonTransition](#uibuttontransition), [UICheckboxBuilder](#uicheckboxbuilder), [UIClock](#uiclock), [UIClockIndicator](#uiclockindicator), [UIContainerBuilder](#uicontainerbuilder), [UIContentContainerWithHeader](#uicontentcontainerwithheader), [UIFadeBuilder](#uifadebuilder), [UIFillBarBackgroundBuilder](#uifillbarbackgroundbuilder), [UIGridViewBuilder](#uigridviewbuilder), [UIRadioButton](#uiradiobutton), [UIReflectedGradientHeader](#uireflectedgradientheader), [UISaveBarBuilder](#uisavebarbuilder), [UIScrollBarBackgroundBuilder](#uiscrollbarbackgroundbuilder), [UIScrollBarBuilder](#uiscrollbarbuilder), [UIScrollIndicatorBuilder](#uiscrollindicatorbuilder), [UISeparatorBuilder](#uiseparatorbuilder), [UITableViewBuilder](#uitableviewbuilder), [UITopBar](#uitopbar), [gamepadSpriteBuilder](#gamepadspritebuilder), [handCursorBuilder](#handcursorbuilder), [horizontalFillSliderBuilder](#horizontalfillsliderbuilder), [horizontalSliderBuilder](#horizontalsliderbuilder), [horizontalTabBarBuilder](#horizontaltabbarbuilder), [keyboardBuilder](#keyboardbuilder), [monsterCriticalHitChargeBarBuilder](#monstercriticalhitchargebarbuilder), [monsterEnergyBarBuilder](#monsterenergybarbuilder), [monsterHealthBarBuilder](#monsterhealthbarbuilder), [monsterPotentialBarBuilder](#monsterpotentialbarbuilder), [monsterSummaryCatchInfoTabDetailsBuilder](#monstersummarycatchinfotabdetailsbuilder), [monsterSummaryEvolutionTabDetailsBuilder](#monstersummaryevolutiontabdetailsbuilder), [monsterSummaryHoldItemTabDetailsBuilder](#monstersummaryholditemtabdetailsbuilder), [monsterSummaryInfoTabDetailsBuilder](#monstersummaryinfotabdetailsbuilder), [monsterSummaryProgressTabDetailsBuilder](#monstersummaryprogresstabdetailsbuilder), [monsterSummarySkillTabDetailsBuilder](#monstersummaryskilltabdetailsbuilder), [monsterSummarySkinTabDetailsBuilder](#monstersummaryskintabdetailsbuilder), [monsterSummaryTraitTabDetailsBuilder](#monstersummarytraittabdetailsbuilder), [monsterXpBarBuilder](#monsterxpbarbuilder), [pauseMenu](#pausemenu), [pauseMenuScreenBuilder](#pausemenuscreenbuilder), [rogueCharacterXpBarBuilder](#roguecharacterxpbarbuilder), [splashScreenBuilder](#splashscreenbuilder)

### AbstractPauseMenuNavBar

`classes.interface.AbstractPauseMenuNavBar`

- returns `t`

- `AbstractPauseMenuNavBar:new(_parent, _width, _height, _navBarPosition)`

<details><summary>Instance / other functions (18)</summary>

- `parentGroup:getGamepadNavigation()`
- `parentGroup:getKeyboardNavigation()`
- `parentGroup:getGlobalNavigation()`
- `parentGroup:getNavBarPosition()`
- `parentGroup:setVisibilityPositions(_hiddenY, _visibleY)`
- `parentGroup:show(_isBackwards)`
- `parentGroup:hide()`
- `parentGroup:setNavBarSideContainers(_sideContainers)`
- `parentGroup:getGamepadGamepadNavigation()`
- `parentGroup:getInitialOffset(_side)`
- `parentGroup:getActiveNavBarObjects()`
- `parentGroup:getOffsetIncrement(_barObject)`
- `parentGroup:updateNavigation(_activeBarObjects)`
- `parentGroup:setNavBarObjects(_barObjects, _isBackwards)`
- `parentGroup:gotoNewContentInstant(_isBackwards)`
- `parentGroup:gotoNewContentWithTransition(_isBackwards)`
- `parentGroup:refreshNavBarObjects()`
- `parentGroup:onDestroy()`

</details>

### AchievementAchievedPopup

`classes.interface.AchievementAchievedPopup`

- returns `t`

- `AchievementAchievedPopup:showAndHide(_achievement, _onComplete)`

### AchievementIcon

`classes.interface.AchievementIcon`

- returns `t`

- `AchievementIcon:new(_parent, _achievement)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setSelected(_isSelected)`
- `parentGroup:setHovered(_isHovered)`

</details>

### BattleEnvironmentPreview

`classes.interface.BattleEnvironmentPreview`

- returns `Obj`

- `BattleEnvironmentPreview:new(_parent, _battleEnvironmentUID, _optionalTextFillColor)`
- `BattleEnvironmentPreview:newForWorldLocation(_parent, _locationUID)`

### BlurredAndDesaturatedScreenshot

`classes.interface.BlurredAndDesaturatedScreenshot`

- returns `Obj`

- `BlurredAndDesaturatedScreenshot:new(_parent, _source)`

### ColoredMonsterTypesInnerContainer

`classes.interface.ColoredMonsterTypesInnerContainer`

- returns `Obj`

- `ColoredMonsterTypesInnerContainer:new(_parent, _monster, _monsterTypeIconGapWidth)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:refreshTypes()`

</details>

<details><summary>Fields with default values (3)</summary>

- `ColoredMonsterTypesInnerContainer.widthByMonsterTypeIconGapWidth.small` = `19`
- `ColoredMonsterTypesInnerContainer.widthByMonsterTypeIconGapWidth.medium` = `21`
- `ColoredMonsterTypesInnerContainer.widthByMonsterTypeIconGapWidth.large` = `23`

</details>

### FocusSelector

`classes.interface.FocusSelector`

- returns `t`

- `FocusSelector:newAnimated(_parent, _innerWidth, _innerHeight, _mutator)`
- `FocusSelector:new(_parent, _innerWidth, _innerHeight, _isAnimated, _mutator)`

<details><summary>Instance / other functions (6)</summary>

- `focusSelectorContainer:startAnimation()`
- `focusSelectorContainer:cancelAnimation()`
- `focusSelectorContainer:ensureSize(_newInnerWidth, _newInnerHeight)`
- `focusSelectorContainer:doEnsureSizeAndAlignToGradientButton(_obj)`
- `focusSelectorContainer:doEnsureSizeAndAlignToGradientButtonUsingContentAwareMagnet(_obj)`
- `focusSelectorContainer:ensureSizeAndAlignToGradientButton(_optionalAlternateObject)`

</details>

### GetFullGameButton

`classes.interface.GetFullGameButton`

- returns `Obj`

- `GetFullGameButton:shouldBeShown()`
- `GetFullGameButton:new(_parent)`

### ItemPopup

`classes.interface.ItemPopup`

- returns `t`

- `ItemPopup:showAndHide(_parent, _mode, _obtainableItem, _onComplete, _onShow, _dontAdjustInventory)`

### LuxSolisBenefitContainer

`classes.interface.LuxSolisBenefitContainer`

- returns `Obj`
- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

- `LuxSolisBenefitContainer:newForLuxSolisBenefit(_parent, _luxSolisBenefit)`
- `LuxSolisBenefitContainer:new(_parent, _isGold, _itemUID, _itemAmount)`
- `LuxSolisBenefitContainer:newWithAlreadyClaimed(_parent, _isGold, _itemUID, _itemAmount, _shouldShowAlreadyClaimedContainer)`
- `LuxSolisBenefitContainer:newForOnlineStyleProduct(_parent, _isGold, _onlineStyleProductUID)`
- `LuxSolisBenefitContainer:newForOnlineStyleProductWithAlreadyClaimed(_parent, _isGold, _onlineStyleProductUID, _shouldShowAlreadyClaimedContainer)`

### MilestoneAchievedPopup

`classes.interface.MilestoneAchievedPopup`

- returns `t`

- `MilestoneAchievedPopup:optionallyShowAndHideIfMilestoneStageChanged(_milestoneUID, _onComplete)`
- `MilestoneAchievedPopup:showAndHide(_amount, _onComplete)`

### MonsterAvatar

`classes.interface.MonsterAvatar`

- returns `MonsterAvatar`
- requires: `classes.monsters.monsters.abstractMonsterData`, `classes.modules.monsterAvatarAtlas`

- `MonsterAvatar:getMonsterAvatarFrameIndex(_monsterData, _monsterPotentialCategory, _monsterSpriteSkinUID)`
- `MonsterAvatar:newBorderless(_parent, _monsterData, _monsterPotentialCategory, _monsterSpriteSkinUID, _imageMutator)`
- `MonsterAvatar:newBorderlessObject(_parent, _monsterData, _monsterPotentialCategory, _monsterSpriteSkinUID, _imageMutator, _objectMutator)`
- `MonsterAvatar:new(_parent, _monsterData, _monsterPotentialCategory, _monsterSpriteSkinUID, _imageMutator, _options)`
- `MonsterAvatar:newHoverableAndSelectable(_parent, _monsterData, _monsterPotentialCategory, _monsterSpriteSkinUID, _imageMutator, _options)`
- `MonsterAvatar:newUnknown(_parent, _hideMode)`
- `MonsterAvatar:newUnknownObject(_parent, _hideMode)`

<details><summary>Instance / other functions (6)</summary>

- `monsterAvatarContainer:setSaturation(_saturation)`
- `monsterAvatarContainer:setDarkenedMonsterAvatarAlpha(_darkenedOverlayAlpha)`
- `monsterAvatarContainer:setGreyPrimaryTypeContainer(_isUnknown)`
- `monsterAvatarContainer:getDarkenedMonsterAvatar()`
- `monsterAvatar:setSelected(_isSelected)`
- `monsterAvatar:setHovered(_isHovered)`

</details>

### MonsterCrimsoniteAuraBar

`classes.interface.MonsterCrimsoniteAuraBar`

- returns `Obj`

- `MonsterCrimsoniteAuraBar:newText(_parent, _monster)`
- `MonsterCrimsoniteAuraBar:newFillBar(_parent, _width)`
- `MonsterCrimsoniteAuraBar:new(_parent, _monster, _fillBarImage, _onScaleChange)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:update(_value)`
- `parentGroup:updateMaxCrimsoniteAura()`
- `parentGroup:refreshAnimatedByCalculatedValuePerSecond(_modifier, _options, _onComplete)`

</details>

### MonsterPreview

`classes.interface.MonsterPreview`

- returns `Obj`
- requires: `classes.interface.monsterHealthBarBuilder`, `classes.interface.monsterEnergyBarBuilder`

- `MonsterPreview:resolvePreviewableMonstersFor(_opponentTrainerParticipant)`
- `MonsterPreview:new(_parent, _team, _monster, _monsterIndex)`

### MonsterSpriteSkinMilestoneAchievedPopup

`classes.interface.MonsterSpriteSkinMilestoneAchievedPopup`

- returns `t`

- `MonsterSpriteSkinMilestoneAchievedPopup:showAndHide(_monsterSpriteSkinMilestone, _onComplete)`

### MonsterSpriteSkinMilestoneDetailsContainer

`classes.interface.MonsterSpriteSkinMilestoneDetailsContainer`

- returns `Obj`

- `MonsterSpriteSkinMilestoneDetailsContainer:new(_options)`

<details><summary>Instance / other functions (4)</summary>

- `containerContainer:getContentContainer()`
- `containerContainer:getRefreshableGroup()`
- `containerContainer:setMonsterSpriteSkinMilestoneDetails(_monsterSpriteSkin)`
- `containerContainer:getSecondExtraButtonTouchable()`

</details>

### OnlineSquadMonsterButton

`classes.interface.OnlineSquadMonsterButton`

- returns `Obj`
- defines globals: `_` = value

- `OnlineSquadMonsterButton:new(_parent, _style, _monster, _onlineSquadEntryIfPlayer)`
- `OnlineSquadMonsterButton:newForPlayer(_parent, _style, _onlineSquadEntry)`
- `OnlineSquadMonsterButton:newSelectable(_parent, _onlineSquadEntry, _onlineSquadMonster, _onStateChanged)`

<details><summary>Instance / other functions (14)</summary>

- `parentGroup:getMonster()`
- `parentGroup:getOnlineSquadEntry()`
- `parentGroup:setMonster(_newMonster)`
- `parentGroup:setHoldItem(_itemUID)`
- `parentGroup:refreshMonster(_newMonster)`
- `parentGroup:refreshHoldItemUID(_newHoldItemUID)`
- `parentGroup:refresh(_newMonster, _newHoldItemUID)`
- `parentGroup:refreshOnlineSquadEntry(_newOnlineSquadEntry)`
- `parentGroup:isSelected()`
- `parentGroup:isSelectedAsFirst()`
- `parentGroup:setUnselectedPulse(_isPulsing)`
- `parentGroup:setUnselected(_skipSound)`
- `parentGroup:setSelected(_skipSound)`
- `parentGroup:setSelectedAsFirst(_skipSound)`

</details>

### PauseMenuBottomBar

`classes.interface.PauseMenuBottomBar`

- returns `t`
- requires: `classes.interface.AbstractPauseMenuNavBar`

- `PauseMenuBottomBar:new(_parent)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:setHeightReduction(_newHeightReduction, _shouldAnimate)`
- `parentGroup:getOrnamentHeight()`
- `parentGroup:calculateUnavailableHeight()`

</details>

<details><summary>Fields with default values (1)</summary>

- `PauseMenuBottomBar.MAX_HEIGHT_REDUCTION` = `9`

</details>

### PauseMenuTopBar

`classes.interface.PauseMenuTopBar`

- returns `t`
- requires: `classes.interface.AbstractPauseMenuNavBar`

- `PauseMenuTopBar:new(_parent)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:getOrnamentHeight()`
- `parentGroup:calculateUnavailableHeight()`

</details>

### RogueMonsterPreview

`classes.interface.RogueMonsterPreview`

- returns `Obj`
- requires: `classes.interface.monsterHealthBarBuilder`, `classes.interface.monsterEnergyBarBuilder`

- `RogueMonsterPreview:new(_parent, _monster)`

### SaveslotMetadataContainer

`classes.interface.SaveslotMetadataContainer`

- returns `Obj`

- `SaveslotMetadataContainer:new(_parent, _deviceIndex, _saveslotIndex, _saveslotMetadata, _isNewGame)`
- `SaveslotMetadataContainer:newForSaveslotClustersScreen(_parent, _deviceIndex, _saveslotIndex, _saveslotMetadata, _isNewGame, _buttonHandlers)`
- `SaveslotMetadataContainer:newForSaveslotClusterPopup(_parent, _deviceIndex, _saveslotIndex, _saveslotMetadata, _isNewGame, _width, _screenshotFilename, _saveslotStatus, _buttonHandlers)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getWithMetadataContentContainer()`
- `parentGroup:getWithoutMetadataContentContainer()`
- `parentGroup:getGamepadNavigation()`

</details>

### SkillSideEffectTurnIndicator

`classes.interface.SkillSideEffectTurnIndicator`

- returns `t`

- `SkillSideEffectTurnIndicator:new(_parent, _monster, _skillData)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:showTurnIndicator(_turn)`

</details>

### TallMonsterButton

`classes.interface.TallMonsterButton`

- returns `Obj`
- requires: `classes.interface.monsterHealthBarBuilder`, `classes.interface.MonsterCrimsoniteAuraBar`, `classes.interface.monsterEnergyBarBuilder`, `classes.interface.ColoredMonsterTypesInnerContainer`

- `TallMonsterButton:newEmpty(_parent, _width, _tallMonsterButtonMode, _index, _options, _mutator)`
- `TallMonsterButton:new(_parent, _width, _tallMonsterButtonMode, _monster, _options)`

<details><summary>Instance / other functions (29)</summary>

- `parentGroup:refreshTypeVisibility()`
- `parentGroup:refreshLevelText()`
- `parentGroup:refreshLevelTextAnimated(_onComplete)`
- `parentGroup:refreshConditionIcon()`
- `parentGroup:removeConditionIcon()`
- `parentGroup:refreshMonsterSprite()`
- `parentGroup:refreshMonsterSpriteAnimated(_onComplete)`
- `parentGroup:refreshHoldItem()`
- `parentGroup:refreshName()`
- `parentGroup:refreshHealthBar()`
- `parentGroup:refreshHealthBarAnimated(_onComplete)`
- `parentGroup:refreshHealthBarAnimatedByTime(_time, _onComplete)`
- `parentGroup:refreshEnergyBarPotentialValue()`
- `parentGroup:refreshEnergyBar()`
- `parentGroup:refreshEnergyBarAnimated(_onComplete)`
- `parentGroup:refreshEnergyBarAnimatedByTime(_time, _onComplete)`
- `parentGroup:setSwapping(_boolean)`
- `parentGroup:setNotSwapping(_boolean)`
- `parentGroup:showPotentialStats(_shouldShowPotentialStats)`
- `parentGroup:showScanLineAnimation(_onComplete)`
- `parentGroup:showFlashAnimation(_onComplete)`
- `parentGroup:setHighlightedByCode(_isHighlightedByCode)`
- `parentGroup:setHighlightedByFocus(_isHighlightedByFocus)`
- `parentGroup:setHighlightedByHover(_isHighlightedByHover)`
- `parentGroup:alignFocusSelector(_focusSelector)`
- `parentGroup:revalidateDisabledAndSoftDisabledState()`
- `parentGroup:setDisabled(_boolean)`
- `parentGroup:isDisabled()`
- `parentGroup:isSoftDisabled()`

</details>

### UIBottomBar

`classes.interface.UIBottomBar`

- returns `t`

- `UIBottomBar:new(_parent, _height, _textAlign, _text, _alpha, _optionalFillColor)`

<details><summary>Instance / other functions (2)</summary>

- `bottomBar:getText()`
- `bottomBar:setText(_text, _optionalFillColor)`

</details>

### UIButton

`classes.interface.UIButton`

- returns `t`

- `UIButton:showHoverVariantOnHover(_optionalAlternateObject)`
- `UIButton:switchVisibilityOnHover(_objectToShowOnHover)`
- `UIButton:switchVisibilitiesOnHover(_object, _objectToShowOnHover)`
- `UIButton:createCustomTouchableListener(_transition, _options, _onButtonPressed)`
- `UIButton:createTouchableListener(_transition, _onButtonPressed)`

### UIButtonTooltip

`classes.interface.UIButtonTooltip`

- returns `t`

- `UIButtonTooltip:createTooltipForCurrentNavigationMethod(_parent, _buttonUID)`
- `UIButtonTooltip:createKeyboardKeyTooltip(_parent, _qwertyKeyNameOrTooltip)`
- `UIButtonTooltip:createMouseTooltip(_parent, _mouseTooltip)`
- `UIButtonTooltip:createGamepadButtonTooltip(_parent, _keyNameOrTooltip, _controllerType)`
- `UIButtonTooltip:createNintendoSwitchButtonTooltip(_parent, _keyNameOrTooltip)`
- `UIButtonTooltip:createXboxButtonTooltip(_parent, _keyNameOrTooltip)`
- `UIButtonTooltip:createPlaystationButtonTooltip(_parent, _keyNameOrTooltip)`
- `UIButtonTooltip:createAndAlignNowAndOnInputNavigationMethodSwitch(_parent, _buttonUID, _alignFunction)`
- `UIButtonTooltip:createAnimatedDirectionalShoulderButtonTooltip(_parent, _alignFunction)`

### UIButtonTransition

`classes.interface.UIButtonTransition`

- returns `t`

- `UIButtonTransition:transparency(_pressedValue, _notPressedValue)`
- `UIButtonTransition:fancyPressOnAlternateObject(_alternateObject)`

<details><summary>Fields with default values (3)</summary>

- `UIButtonTransition.leftPress` = `{}`
- `UIButtonTransition.rightPress` = `{}`
- `UIButtonTransition.fancyPress` = `{}`

</details>

### UICheckboxBuilder

`classes.interface.UICheckboxBuilder`

- returns `t`

- `UICheckboxBuilder:new(_parent, _initialValue, _checkboxMode, _allowNilValue)`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:setEnabledState(_boolean)`
- `parentGroup:setEnabledStateWithTransition(_boolean, _onComplete)`
- `parentGroup:playDisabledPressedAnimation()`
- `parentGroup:getCheckboxValue()`
- `parentGroup:getNextCheckboxValue(_horizontalDirectionNumber, _allowCyclicRotation)`
- `parentGroup:createDirectionalAndUseButtonNavigation(_onLeftOrRightKey, _onObtainFocus, _onRemoveFocus)`

</details>

### UIClock

`classes.interface.UIClock`

- returns `t`

- `UIClock:new(_parent)`

### UIClockIndicator

`classes.interface.UIClockIndicator`

- returns `t`

- `UIClockIndicator:new(_parent, _width)`

### UIContainerBuilder

`classes.interface.UIContainerBuilder`

- returns `t`

- `UIContainerBuilder:new(_parent, _style, _width, _height, _mutator, _containerMutator)`
- `UIContainerBuilder:newOverlay(_parent, _style, _width, _height, _mutator)`
- `UIContainerBuilder:newDirectional(_parent, _style, _size)`
- `UIContainerBuilder:newHorizontal(_parent, _style, _width, _mutator)`
- `UIContainerBuilder:newVertical(_parent, _style, _height, _mutator)`
- `UIContainerBuilder:newHoldIndicator(_parent, _time, _rectMutator, _onHold)`
- `UIContainerBuilder:newGreySlim(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreySlimScrollable(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreySlimWithHeaderSpacing(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreyInvisibleWithHeaderSpacing(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreySlimScrollableWithHeaderSpacing(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreyDarkSlim(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreyDarkSlimScrollable(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreyDarkSlimWithHeaderSpacing(_parent, _width, _height, _mutator)`
- `UIContainerBuilder:newGreyDarkSlimScrollableWithHeaderSpacing(_parent, _width, _height, _mutator)`

<details><summary>Instance / other functions (17)</summary>

- `parentGroup:getStyle()`
- `parentGroup:setStyle(_newStyle, _newWidth, _newHeight)`
- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`
- `parentGroup:setSize(_newWidth, _newHeight)`
- `createdContainer:setHorizontalSeparator(_yOffset)`
- `createdContainer:setHorizontalSeparators(_yOffset1, _yOffset2)`
- `createdContainer:setHorizontalSeparatorAtVerticalSeparator(_yOffset)`
- `createdContainer:setVerticalSeparator(_xOffset)`
- `createdContainer:setVerticalSeparators(_xOffset1, _xOffset2)`
- `createdContainer:setVerticalSeparatorUntilHorizontalSeparator(_xOffset)`
- `slimContainer:setHeaderText(_text)`
- `slimContainer:setStaticInfoText(_text)`
- `slimContainer:setDynamicInfoText(_text)`
- `invisibleContainer:setHeaderText(_text)`
- `invisibleContainer:setStaticInfoText(_text)`
- `invisibleContainer:setDynamicInfoText(_text)`

</details>

### UIContentContainerWithHeader

`classes.interface.UIContentContainerWithHeader`

- returns `t`

- `UIContentContainerWithHeader:new(_options)`

<details><summary>Instance / other functions (1)</summary>

- `contentContainerHeaderGroup:setText(_text)`

</details>

### UIFadeBuilder

`classes.interface.UIFadeBuilder`

- returns `t`

- `UIFadeBuilder:newTopFadeRect(_parent, _width)`
- `UIFadeBuilder:newBottomFadeRect(_parent, _width)`
- `UIFadeBuilder:newTopFadeRectWhite(_parent, _width)`
- `UIFadeBuilder:newBottomFadeRectWhite(_parent, _width)`
- `UIFadeBuilder:newLeftFadeRect(_parent, _height)`
- `UIFadeBuilder:newRightFadeRect(_parent, _height)`
- `UIFadeBuilder:newHorizontal(_parent)`
- `UIFadeBuilder:newVertical(_parent)`
- `UIFadeBuilder:newVerticalWhite(_parent)`
- `UIFadeBuilder:newVerticalForGreySlimScrollable(_container, _parent)`

### UIFillBarBackgroundBuilder

`classes.interface.UIFillBarBackgroundBuilder`

- returns `t`

- `UIFillBarBackgroundBuilder:new(_parent, _style, _width, _objectMutator)`

### UIGridViewBuilder

`classes.interface.UIGridViewBuilder`

- returns `t`
- requires: `classes.modules.interface.gridViewBuilder`

- `UIGridViewBuilder:new(_scrollable, _options)`

<details><summary>Instance / other functions (2)</summary>

- `gridBoxContainer:animateToSelectedState(_instant)`
- `gridBoxContainer:animateToUnselectedState(_instant)`

</details>

### UIRadioButton

`classes.interface.UIRadioButton`

- returns `t`
- requires: `classes.modules.interface.radioButtonBuilder`

- `UIRadioButton:new(_options)`

### UIReflectedGradientHeader

`classes.interface.UIReflectedGradientHeader`

- returns `t`

- `UIReflectedGradientHeader:new(_parent, _width, _options)`

<details><summary>Instance / other functions (1)</summary>

- `headerGradientRect:setText(_text)`

</details>

### UISaveBarBuilder

`classes.interface.UISaveBarBuilder`

- returns `t`
- requires: `classes.interface.SaveslotMetadataContainer`, `classes.interface.overlays.confirmPopupBuilder`

- `UISaveBarBuilder:new(_parent, _onShow, _onComplete)`
- `UISaveBarBuilder:newForManualSave(_onComplete)`

### UIScrollBarBackgroundBuilder

`classes.interface.UIScrollBarBackgroundBuilder`

- returns `t`

- `UIScrollBarBackgroundBuilder:new(_parent, _height, _objectMutator)`
- `UIScrollBarBackgroundBuilder:newNew(_parent, _height, _objectMutator)`

<details><summary>Instance / other functions (4)</summary>

- `oldScrollBarBackground:setHovered(_isHovered)`
- `oldScrollBarBackground:setHoveredProgramatically(_isHoveredProgramatically)`
- `UIScrollBarBackground:setHovered(_isHovered)`
- `UIScrollBarBackground:setHoveredProgramatically(_isHoveredProgramatically)`

</details>

### UIScrollBarBuilder

`classes.interface.UIScrollBarBuilder`

- returns `t`

- `UIScrollBarBuilder:new(_parent, _height, _objectMutator)`
- `UIScrollBarBuilder:newNew(_parent, _height, _objectMutator)`

<details><summary>Instance / other functions (4)</summary>

- `oldScrollBar:setHovered(_isHovered)`
- `oldScrollBar:setHoveredProgramatically(_isHoveredProgramatically)`
- `UIScrollBar:setHovered(_isHovered)`
- `UIScrollBar:setHoveredProgramatically(_isHoveredProgramatically)`

</details>

### UIScrollIndicatorBuilder

`classes.interface.UIScrollIndicatorBuilder`

- returns `t`

- `UIScrollIndicatorBuilder:newScrollIndicator(_parent, _direction)`
- `UIScrollIndicatorBuilder:newForSlideView(_parent, _slideView)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:startFadingAnimation()`
- `parentGroup:startWiggleAnimation()`

</details>

### UISeparatorBuilder

`classes.interface.UISeparatorBuilder`

- returns `Obj`

- `UISeparatorBuilder:newBlueOrRedGradient(_parent, _width)`
- `UISeparatorBuilder:newHorizontal(_parent, _width)`
- `UISeparatorBuilder:newVertical(_parent, _height)`
- `UISeparatorBuilder:newColumnGridBuilder(_parent, _widths, _shouldCloseTop)`

<details><summary>Instance / other functions (3)</summary>

- `columnGridBuilder:getRow(_yIndex)`
- `columnGridBuilder:addRow(_rowHeight)`
- `row:getColumn(_xIndex)`

</details>

### UITableViewBuilder

`classes.interface.UITableViewBuilder`

- returns `t`
- requires: `classes.modules.interface.tableViewBuilder`

- `UITableViewBuilder:new(_options)`

<details><summary>Instance / other functions (3)</summary>

- `gridBoxContainer:animateToSelectedState(_instant)`
- `gridBoxContainer:animateToUnselectedState(_instant)`
- `tableView:isSelectedGridBoxDisabled()`

</details>

### UITopBar

`classes.interface.UITopBar`

- returns `t`

- `UITopBar:new(_parent, _height, _textAlign, _text, _alpha, _optionalFillColor)`

<details><summary>Instance / other functions (2)</summary>

- `topBar:getText()`
- `topBar:setText(_text, _optionalFillColor)`

</details>

### gamepadSpriteBuilder

`classes.interface.gamepadSpriteBuilder`

- returns `t`

- `gamepadSpriteBuilder:new(_parent)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:clearHighlight()`
- `parentGroup:addHighlight(_gamepadSpriteUID)`
- `parentGroup:addHighlightIfExists(_gamepadSpriteUID)`

</details>

<details><summary>Fields with default values (65)</summary>

- `gamepadSpriteBuilder.highlightSpriteConfigs.USE.xOffset` = `53`
- `gamepadSpriteBuilder.highlightSpriteConfigs.USE.yOffset` = `17`
- `gamepadSpriteBuilder.highlightSpriteConfigs.USE.width` = `6`
- `gamepadSpriteBuilder.highlightSpriteConfigs.USE.height` = `6`
- `gamepadSpriteBuilder.highlightSpriteConfigs.USE.file` = `"button_big.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.BACK.xOffset` = `58`
- `gamepadSpriteBuilder.highlightSpriteConfigs.BACK.yOffset` = `12`
- `gamepadSpriteBuilder.highlightSpriteConfigs.BACK.width` = `6`
- `gamepadSpriteBuilder.highlightSpriteConfigs.BACK.height` = `6`
- `gamepadSpriteBuilder.highlightSpriteConfigs.BACK.file` = `"button_big.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.START.xOffset` = `40`
- `gamepadSpriteBuilder.highlightSpriteConfigs.START.yOffset` = `13`
- `gamepadSpriteBuilder.highlightSpriteConfigs.START.width` = `4`
- `gamepadSpriteBuilder.highlightSpriteConfigs.START.height` = `4`
- `gamepadSpriteBuilder.highlightSpriteConfigs.START.file` = `"button_small.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_LEFT.xOffset` = `23`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_LEFT.yOffset` = `22`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_LEFT.width` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_LEFT.height` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_LEFT.file` = `"dpad_left.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_UP.xOffset` = `23`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_UP.yOffset` = `22`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_UP.width` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_UP.height` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_UP.file` = `"dpad_up.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_RIGHT.xOffset` = `23`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_RIGHT.yOffset` = `22`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_RIGHT.width` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_RIGHT.height` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_RIGHT.file` = `"dpad_right.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_DOWN.xOffset` = `23`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_DOWN.yOffset` = `22`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_DOWN.width` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_DOWN.height` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.DPAD_DOWN.file` = `"dpad_down.png"`
- `gamepadSpriteBuilder.highlightSpriteConfigs.ANALOG_X.xOffset` = `10`
- `gamepadSpriteBuilder.highlightSpriteConfigs.ANALOG_X.yOffset` = `7`
- `gamepadSpriteBuilder.highlightSpriteConfigs.ANALOG_X.width` = `16`
- `gamepadSpriteBuilder.highlightSpriteConfigs.ANALOG_X.height` = `14`
- `gamepadSpriteBuilder.highlightSpriteConfigs.ANALOG_X.file` = `"analog_left.png"`
- ... 25 more in `api.json`

</details>

### handCursorBuilder

`classes.interface.handCursorBuilder`

- returns `t`

- `handCursorBuilder:new(_options)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:enterFrame()`
- `parentGroup:getGamepadNavigation()`

</details>

### horizontalFillSliderBuilder

`classes.interface.horizontalFillSliderBuilder`

- returns `t`
- requires: `classes.interface.horizontalSliderBuilder`

- `horizontalFillSliderBuilder:new(_options)`

### horizontalSliderBuilder

`classes.interface.horizontalSliderBuilder`

- returns `t`
- requires: `classes.modules.interface.sliderBuilder`

- `horizontalSliderBuilder:new(_options)`

### horizontalTabBarBuilder

`classes.interface.horizontalTabBarBuilder`

- returns `t`
- requires: `classes.modules.interface.tabBarBuilder`

- `horizontalTabBarBuilder:createSizeOptionsWithTabBarWidth(_tabBarWidth, _tabBarHeight)`
- `horizontalTabBarBuilder:createSizeOptionsWithTabWidth(_tabWidth, _tabBarHeight)`
- `horizontalTabBarBuilder:new(_parent, _sizeOptions, _options)`
- `horizontalTabBarBuilder:newBlueOrRedFromBottom(_parent, _sizeOptions, _options)`
- `horizontalTabBarBuilder:newWithButtons(_parent, _sizeOptions, _margin, _options)`
- `horizontalTabBarBuilder:newWithGradientButtons(_parent, _sizeOptions, _margin, _options)`
- `horizontalTabBarBuilder:newForMonsterDatabase(_parent, _sizeOptions, _margin, _options)`
- `horizontalTabBarBuilder:newForInnerBottomBar(_parent, _sizeOptions, _options)`

<details><summary>Instance / other functions (1)</summary>

- `_options.selectedIndicatorMagnetFunction(_tab, _selectedIndicator)`

</details>

### keyboardBuilder

`classes.interface.keyboardBuilder`

- returns `Obj`

- `keyboardBuilder:new(_parent, _onCreateButton, _options)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:getGamepadNavigation()`

</details>

### monsterCriticalHitChargeBarBuilder

`classes.interface.monsterCriticalHitChargeBarBuilder`

- returns `Obj`

- `monsterCriticalHitChargeBarBuilder:newText(_parent, _monster)`
- `monsterCriticalHitChargeBarBuilder:new(_parent, _monster, _fillBarImageWidth, _onCriticalHitPrediction)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:update(_value, _valueIsIncreased)`
- `parentGroup:updateAfterSkillBar(_monsterSprite, _skillData)`

</details>

### monsterEnergyBarBuilder

`classes.interface.monsterEnergyBarBuilder`

- returns `Obj`

- `monsterEnergyBarBuilder:newValueOnlyText(_parent, _monster, _optionalFontType)`
- `monsterEnergyBarBuilder:newText(_parent, _monster, _optionalFontType)`
- `monsterEnergyBarBuilder:newTextForBigContainer(_parent, _monster)`
- `monsterEnergyBarBuilder:new(_parent, _monster, _fillBarImage, _overchargeFillBarImage)`
- `monsterEnergyBarBuilder:newWithDefaultImage(_parent, _monster, _fillBarImageWidth)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:update(_value)`
- `parentGroup:getEnergyOverchargeBar()`
- `parentGroup:updateMaxEnergy()`
- `parentGroup:refreshAnimatedByDefaultValuePerSecond(_options, _onComplete)`

</details>

### monsterHealthBarBuilder

`classes.interface.monsterHealthBarBuilder`

- returns `Obj`

- `monsterHealthBarBuilder:newColoredHealthIconSprite(_parent, _withBlackOutline)`
- `monsterHealthBarBuilder:newColoredHealthBarFillBar(_parent, _fillBarWidth)`
- `monsterHealthBarBuilder:newText(_parent, _monster, _fillEffect)`
- `monsterHealthBarBuilder:new(_parent, _monster, _fillBarImage, _onScaleChange)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:setSequenceBasedOnScale(_scale)`
- `parentGroup:update(_value)`
- `parentGroup:updateMaxHealth()`
- `parentGroup:refreshAnimatedByCalculatedValuePerSecond(_modifier, _options, _onComplete)`

</details>

### monsterPotentialBarBuilder

`classes.interface.monsterPotentialBarBuilder`

- returns `Obj`

- `monsterPotentialBarBuilder:new(_parent, _monster, _fillBarImageOrOptions, _options)`

<details><summary>Instance / other functions (4)</summary>

- `potentialBar:refresh()`
- `potentialBar:refreshAnimated(_refreshOptions, _onComplete)`
- `refreshOptions.onBeforeSetProperty(k, v, propertiesAtStart, propertiesAtEnd)`
- `potentialBar:setProgressTextMode(_mode)`

</details>

### monsterSummaryCatchInfoTabDetailsBuilder

`classes.interface.monsterSummaryCatchInfoTabDetailsBuilder`

- returns `Obj`
- requires: `classes.interface.BattleEnvironmentPreview`

- `monsterSummaryCatchInfoTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterSummaryEvolutionTabDetailsBuilder

`classes.interface.monsterSummaryEvolutionTabDetailsBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.MonsterEvolutionDetailsPopup`

- `monsterSummaryEvolutionTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterSummaryHoldItemTabDetailsBuilder

`classes.interface.monsterSummaryHoldItemTabDetailsBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.MessageToast`

- `monsterSummaryHoldItemTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterSummaryInfoTabDetailsBuilder

`classes.interface.monsterSummaryInfoTabDetailsBuilder`

- returns `Obj`

- `monsterSummaryInfoTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterSummaryProgressTabDetailsBuilder

`classes.interface.monsterSummaryProgressTabDetailsBuilder`

- returns `Obj`
- requires: `classes.interface.monsterXpBarBuilder`, `classes.interface.monsterPotentialBarBuilder`, `classes.interface.battle.IncreasePotentialStatsOverlay`

- `monsterSummaryProgressTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

<details><summary>Instance / other functions (1)</summary>

- `statValueText.updateStatValue()`

</details>

### monsterSummarySkillTabDetailsBuilder

`classes.interface.monsterSummarySkillTabDetailsBuilder`

- returns `Obj`
- requires: `classes.interface.battle.SkillButton`

- `monsterSummarySkillTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterSummarySkinTabDetailsBuilder

`classes.interface.monsterSummarySkinTabDetailsBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.MonsterSpriteSkinMilestoneDetailsPopup`

- `monsterSummarySkinTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterSummaryTraitTabDetailsBuilder

`classes.interface.monsterSummaryTraitTabDetailsBuilder`

- returns `Obj`

- `monsterSummaryTraitTabDetailsBuilder:build(_tabDetailsContainer, _tabDetailsGroup, _tabDetailsGlobalNavigation, _tabDetailsGamepadNavigation, _tabDetailsKeyboardNavigation, _monsterSlideView, _slideShownFromAbove, _slideShownFromBelow, _editable, _monster)`

### monsterXpBarBuilder

`classes.interface.monsterXpBarBuilder`

- returns `Obj`

- `monsterXpBarBuilder:new(_parent, _monster, _fillBarImageOrOptions, _options)`

<details><summary>Instance / other functions (4)</summary>

- `xpBar:refresh()`
- `xpBar:refreshAnimated(_refreshOptions, _onComplete)`
- `refreshOptions.onBeforeSetProperty(k, v, propertiesAtStart, propertiesAtEnd)`
- `xpBar:setProgressTextMode(_mode)`

</details>

### pauseMenu

`classes.interface.pauseMenu`

- returns `t`
- requires: `classes.modules.interface.menuBuilder`, `classes.interface.PauseMenuTopBar`, `classes.interface.PauseMenuBottomBar`, `classes.sprites.TitleScreenBackground`, `classes.interface.navBarObjects.topBarObjects.outerTopBarBackButtonBuilder`, `classes.interface.navBarObjects.topBarObjects.outerTopBarEscapeButtonBuilder`, `classes.interface.navBarObjects.topBarObjects.innerTopBarExtra1TooltipButtonBuilder`, `classes.interface.BlurredAndDesaturatedScreenshot`

- `pauseMenu:isCreated()`
- `pauseMenu:isCreatedAsOnline()`
- `pauseMenu:forceDestroyIfCreated()`
- `pauseMenu:closeIfCreated(_onComplete)`
- `pauseMenu:createInstanceAndPauseWorld(_onShow)`
- `pauseMenu:createInstance(_onShow)`

<details><summary>Instance / other functions (27)</summary>

- `instance:getTopBar()`
- `instance:getBottomBar()`
- `instance:getScreenContainer()`
- `instance:addGlobalNavigation(_navigation)`
- `instance:getBackButton()`
- `instance:disableBackButton()`
- `instance:enableBackButton()`
- `instance:onBack()`
- `instance:setClosable(_bool)`
- `instance:canClose()`
- `instance:close(_onComplete)`
- `instance:addOnBeforeCloseFunction(_function)`
- `instance:addOnAfterCloseFunction(_function)`
- `instance:decreaseInputLevelIfNotAlreadyDone()`
- `instance:beforeClose()`
- `instance:afterClose()`
- `instance:forceDestroy()`
- `instance:isOnline()`
- `instance:isShop()`
- `instance:setBackgroundOverlay(_newBackgroundOverlay)`
- `instance:onBeforeCreateScreen(_screenClass, _screenName, _screenParams, _isBackwards)`
- `instance:onShowScreen(_screenName, _screenParams, _screenObject, _isBackwards)`
- `instance:onBetweenShowScreen(_screenName, _screenParams, _screenObject, _isBackwards)`
- `instance:onAfterShowScreen(_screenName, _screenParams, _screenObject, _isBackwards)`
- `instance:onUnloadScreen()`
- `instance:pauseInputNavigationFocus()`
- `instance:resumeInputNavigationFocus()`

</details>

### pauseMenuScreenBuilder

`classes.interface.pauseMenuScreenBuilder`

- returns `t`
- requires: `classes.modules.interface.menuScreenBuilder`

- `pauseMenuScreenBuilder:newBuilder()`
- `pauseMenuScreenBuilder:newSimpleBuilder(_screenName)`
- `pauseMenuScreenBuilder:new(_backgroundOverlay)`

<details><summary>Instance / other functions (18)</summary>

- `builder:resolveBottomBarHeightReduction(screenParams)`
- `builder:new(screenParams, screenContainer, centerContainer, horizontalCenterContainer, verticalCenterContainer, safeContainer)`
- `builder:getScreenName()`
- `screen:addGamepadNavigation(_gamepadNavigation)`
- `screen:getGamepadNavigations()`
- `screen:addKeyboardNavigation(_keyboardNavigation)`
- `screen:getKeyboardNavigations()`
- `screen:addGlobalNavigation(_globalNavigation)`
- `screen:isBackButtonDisabled()`
- `screen:setBackButtonDisabled(_bool)`
- `screen:addTopBarObject(_topBarObject, _side)`
- `screen:getTopBarObjects()`
- `screen:addBottomBarObject(_bottomBarObject, _side)`
- `screen:getBottomBarObjects()`
- `screen:setTitle(_title)`
- `screen:setSubtitle(_subtitle)`
- `screen:getBackgroundOverlay()`
- `screen:setBackgroundOverlay(_newBackgroundOverlay)`

</details>

### rogueCharacterXpBarBuilder

`classes.interface.rogueCharacterXpBarBuilder`

- returns `Obj`

- `rogueCharacterXpBarBuilder:newTextForBigContainer(_parent, _character)`
- `rogueCharacterXpBarBuilder:new(_parent, _character, _fillBarImage)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:update(_value)`

</details>

### splashScreenBuilder

`classes.interface.splashScreenBuilder`

- returns `Obj`
- requires: `classes.sprites.TRAGsoftLogo`

- `splashScreenBuilder:new(_options)`

# classes.modules.interface

Coromon 1.5.4. 21 module(s). [Back to index](../README.md)

[AbstractMultiFrameImage](#abstractmultiframeimage), [croppedDisplayObjectBuilder](#croppeddisplayobjectbuilder), [displayObjectPool](#displayobjectpool), [fillBarBuilder](#fillbarbuilder), [fiveFrameImageBuilder](#fiveframeimagebuilder), [fourFrameImageBuilder](#fourframeimagebuilder), [gridViewBuilder](#gridviewbuilder), [maskedDisplayObjectBuilder](#maskeddisplayobjectbuilder), [menuBuilder](#menubuilder), [menuScreenBuilder](#menuscreenbuilder), [nineFrameImageBuilder](#nineframeimagebuilder), [pieChartBuilder](#piechartbuilder), [radioButtonBuilder](#radiobuttonbuilder), [scrollViewBuilder](#scrollviewbuilder), [slideViewBuilder](#slideviewbuilder), [sliderBuilder](#sliderbuilder), [stepperBuilder](#stepperbuilder), [tabBarBuilder](#tabbarbuilder), [tableViewBuilder](#tableviewbuilder), [threeFrameImageBuilder](#threeframeimagebuilder), [twoFrameImageBuilder](#twoframeimagebuilder)

### AbstractMultiFrameImage

`classes.modules.interface.AbstractMultiFrameImage`

- returns `Obj`

- `AbstractMultiFrameImage:new(_parent, _mutator, _existingGroup)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`
- `parentGroup:setSize(_newWidth, _newHeight)`
- `parentGroup:setFillColor(_r, _g, _b, _a)`

</details>

### croppedDisplayObjectBuilder

`classes.modules.interface.croppedDisplayObjectBuilder`

- returns `Obj`

- `croppedDisplayObjectBuilder:new(_parent, _align, _displayObjectToCrop)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:getScale()`
- `parentGroup:setScale(_scale)`

</details>

### displayObjectPool

`classes.modules.interface.displayObjectPool`

- returns `t`

- `displayObjectPool:new(_createDisplayObject)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getOrCreate(_owner)`
- `parentGroup:hasCreatedOneFor(_owner)`
- `parentGroup:releaseFor(_owner)`

</details>

### fillBarBuilder

`classes.modules.interface.fillBarBuilder`

- returns `Obj`

- `fillBarBuilder:new(_parent, _options)`

<details><summary>Instance / other functions (12)</summary>

- `parentGroup:getFillBarImage()`
- `parentGroup:setCalculateCurrentValueFunction(_function)`
- `parentGroup:setMaxValues(_values)`
- `parentGroup:getCurrentValue()`
- `parentGroup:getCurrentValueCalculated()`
- `parentGroup:calculateCurrentScale()`
- `parentGroup:refresh()`
- `parentGroup:isRefreshing()`
- `parentGroup:cancelRefresh()`
- `parentGroup:pauseRefresh()`
- `parentGroup:resumeRefresh()`
- `parentGroup:refreshAnimated(_options, _onComplete)`

</details>

### fiveFrameImageBuilder

`classes.modules.interface.fiveFrameImageBuilder`

- returns `Obj`
- requires: `classes.modules.interface.AbstractMultiFrameImage`

- `fiveFrameImageBuilder:new(_parent, _path, _options)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`

</details>

### fourFrameImageBuilder

`classes.modules.interface.fourFrameImageBuilder`

- returns `Obj`
- requires: `classes.modules.interface.AbstractMultiFrameImage`

- `fourFrameImageBuilder:new(_parent, _path, _options, _mutator)`
- `fourFrameImageBuilder:newObject(_parent, _path, _options, _mutator)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`

</details>

### gridViewBuilder

`classes.modules.interface.gridViewBuilder`

- returns `Obj`
- requires: `classes.modules.interface.scrollViewBuilder`

- `gridViewBuilder:new(_mode, _options)`

<details><summary>Instance / other functions (28)</summary>

- `parentGroup:trySelectGridBox(_xIndex, _yIndex, _isRecreateGridBoxAtIndex, _instant)`
- `parentGroup:selectNearestGridBox(_xIndex, _yIndex, _instant)`
- `parentGroup:insertGridBox(_data, _isSelectable)`
- `parentGroup:recreateGridBoxAtIndex(_xIndex, _yIndex, _instant)`
- `parentGroup:recreateSelectedGridBox(_instant)`
- `parentGroup:recreateGridBoxes(_instant)`
- `parentGroup:scrollToGridBoxPosition(_xIndex, _yIndex, _time, _onComplete)`
- `parentGroup:setPositionToGridBox(_xIndex, _yIndex)`
- `parentGroup:getGrid()`
- `parentGroup:getSelectedIndex()`
- `parentGroup:getSelectedXIndex()`
- `parentGroup:getSelectedYIndex()`
- `parentGroup:getGridBox(_xIndex, _yIndex)`
- `parentGroup:getSelectedGridBox()`
- `parentGroup:getSelectedGridBoxData()`
- `parentGroup:getGridBoxByData(_data)`
- `parentGroup:getGridBoxXIndexByData(_data)`
- `parentGroup:getGridBoxYIndexByData(_data)`
- `parentGroup:getGridBoxIndexByData(_data)`
- `parentGroup:getAmountOfGridBoxes()`
- `parentGroup:getAmountOfNonSelectableGridBoxes()`
- `parentGroup:clear()`
- `parentGroup:selectPreviousGridBoxX(_instant)`
- `parentGroup:selectNextGridBoxX(_instant)`
- `parentGroup:selectPreviousGridBoxY(_instant)`
- `parentGroup:selectNextGridBoxY(_instant)`
- `parentGroup:createGridBoxDpadNavigation()`
- `parentGroup:createGridBoxFocusNavigation(_focusSelector)`

</details>

### maskedDisplayObjectBuilder

`classes.modules.interface.maskedDisplayObjectBuilder`

- returns `t`

- `maskedDisplayObjectBuilder:new(_parent, _align, _displayObjectToCropByMask, _mask, _maskTravelPixels, _shouldFloorToPixelSteps)`

<details><summary>Instance / other functions (2)</summary>

- `maskedImageContainer:getScale()`
- `maskedImageContainer:setScale(_scale)`

</details>

### menuBuilder

`classes.modules.interface.menuBuilder`

- returns `t`

- `menuBuilder:new()`

<details><summary>Instance / other functions (21)</summary>

- `menu:getHistory()`
- `menu:clearHistory()`
- `menu:setDefaultScreenParams(...)`
- `menu:getCurrentScreenScreenParams()`
- `menu:getCurrentScreenObject()`
- `menu:getCurrentScreenName()`
- `menu:getNewOrCurrentScreenScreenParams()`
- `menu:getNewOrCurrentScreenName()`
- `menu:getNewScreenName()`
- `menu:getBottomGroup()`
- `menu:getScreenGroup()`
- `menu:getTopGroup()`
- `menu:onUnloadScreen()`
- `menu:showScreen(_screenName, _screenParams, _extraParams)`
- `menu:onBeforeCreateScreen(_screenClass, _screenName, _screenParams, _isBackwards)`
- `menu:onShowScreen(_screenName, _screenParams, _screenObject, _isBackwards)`
- `menu:onBetweenShowScreen(_screenName, _screenParams, _screenObject, _isBackwards)`
- `menu:onAfterShowScreen(_screenName, _screenParams, _screenObject, _isBackwards)`
- `menu:onBack()`
- `menu:back()`
- `menu:close(_onComplete)`

</details>

### menuScreenBuilder

`classes.modules.interface.menuScreenBuilder`

- returns `t`

- `menuScreenBuilder:new()`

<details><summary>Instance / other functions (1)</summary>

- `screen:onBeforeClose(_isBackwards)`

</details>

### nineFrameImageBuilder

`classes.modules.interface.nineFrameImageBuilder`

- returns `Obj`
- requires: `classes.modules.interface.AbstractMultiFrameImage`

- `nineFrameImageBuilder:new(_parent, _path, _options)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`

</details>

### pieChartBuilder

`classes.modules.interface.pieChartBuilder`

- returns `Obj`

- `pieChartBuilder:new(_parent, _diagonal, _ringWidthPercentage, _ringColor, _direction)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getLeftBar()`
- `parentGroup:getRightBar()`
- `parentGroup:setPercentageFilled(_percentage)`

</details>

### radioButtonBuilder

`classes.modules.interface.radioButtonBuilder`

- returns `Obj`

- `radioButtonBuilder:new(_options)`

<details><summary>Instance / other functions (13)</summary>

- `parentGroup:addRadioButton(_createRadioButtonContentFunction)`
- `parentGroup:getRadioButton(_index)`
- `parentGroup:isRadioButtonDisabled(_index)`
- `parentGroup:isRadioButtonSoftDisabled(_index)`
- `parentGroup:setRadioButtonDisabled(_index, _shouldDisable)`
- `parentGroup:disableRadioButton(_index)`
- `parentGroup:enableRadioButton(_index)`
- `parentGroup:setRadioButtonSoftDisabled(_index, _shouldDisable)`
- `parentGroup:disableRadioButtonSoftDisabled(_index)`
- `parentGroup:enableRadioButtonSoftDisabled(_index)`
- `parentGroup:invalidate()`
- `parentGroup:trySelectRadioButton(_index, _instant)`
- `parentGroup:createFocusSelectorNavigation(_focusSelector)`

</details>

### scrollViewBuilder

`classes.modules.interface.scrollViewBuilder`

- returns `Obj`

- `scrollViewBuilder:new(_options)`

<details><summary>Instance / other functions (27)</summary>

- `parentGroup:isLazyRendered(_object)`
- `parentGroup:replaceLazyRenderObject(_oldObject, _newObject, _newRenderFunction, _newDestroyFunction)`
- `parentGroup:addLazyRenderFunction(_object, _renderFunction, _destroyFunction)`
- `parentGroup:executeLazyRenderFunctionForObject(_object)`
- `parentGroup:executeLazyRenderFunctions()`
- `parentGroup:setFaders(_startFade, _endFade)`
- `parentGroup:getStartFade()`
- `parentGroup:getEndFade()`
- `parentGroup:setScrollBar(_scrollBarBackground, _scrollBarFunction)`
- `parentGroup:getScrollBar()`
- `parentGroup:lockContentGroupSize()`
- `parentGroup:resetLimitsBasedOnCustomDimensions(_width, _height)`
- `parentGroup:getContentGroup()`
- `parentGroup:clear()`
- `parentGroup:getPosition()`
- `parentGroup:getXPosition()`
- `parentGroup:getYPosition()`
- `parentGroup:setPosition(_params)`
- `parentGroup:clampCurrentPosition()`
- `parentGroup:pauseScrolling()`
- `parentGroup:resumeScrolling()`
- `parentGroup:scrollToPosition(_params, _onComplete)`
- `parentGroup:stopScrolling(_immediate)`
- `parentGroup:startScrolling(_speedX, _speedY)`
- `parentGroup:takeFocus(event)`
- `parentGroup:createAnalogX()`
- `parentGroup:createDpadScrollNavigation()`

</details>

### slideViewBuilder

`classes.modules.interface.slideViewBuilder`

- returns `Obj`

- `slideViewBuilder:new(_options)`

<details><summary>Instance / other functions (19)</summary>

- `parentGroup:getDirection()`
- `parentGroup:setScrollIndicators(_previousSlideScrollIndicator, _nextSlideScrollIndicator, _scrollIndicatorsAreTouchable)`
- `parentGroup:getScrollIndicators()`
- `parentGroup:addSlide(_slide)`
- `parentGroup:setCanCreateSlide(_function)`
- `parentGroup:setOnCreateSlide(_function)`
- `parentGroup:takeFocus(event)`
- `parentGroup:getCurrentSlideNumber()`
- `parentGroup:getSlide(_index)`
- `parentGroup:getCurrentSlide()`
- `parentGroup:getSlides()`
- `parentGroup:isTransitioning()`
- `parentGroup:setSlide(_index)`
- `parentGroup:isSlideAvailable(_index)`
- `parentGroup:nextSlide(_onComplete)`
- `parentGroup:previousSlide(_onComplete)`
- `parentGroup:jumpToSlide(_slideNumber, _onComplete)`
- `parentGroup:createDpadNavigation()`
- `parentGroup:createShoulderButtonNavigation()`

</details>

### sliderBuilder

`classes.modules.interface.sliderBuilder`

- returns `Obj`

- `sliderBuilder:new(_options)`

<details><summary>Instance / other functions (14)</summary>

- `parentGroup:createGamepadNavigation(_focusSelector)`
- `parentGroup:didTouchBeginOnHandle()`
- `parentGroup:playDisabledPressedAnimation()`
- `parentGroup:isPressed()`
- `parentGroup:setHovered(_bool)`
- `parentGroup:setPressed(_bool)`
- `parentGroup:setEnabledState(_enabled)`
- `parentGroup:alignObjectToHandle(_object)`
- `parentGroup:removeObjectFromHandle()`
- `parentGroup:setValue(_value, _isFinal)`
- `parentGroup:getValue()`
- `parentGroup:setLower()`
- `parentGroup:setHigher()`
- `parentGroup:stopAdjusting()`

</details>

### stepperBuilder

`classes.modules.interface.stepperBuilder`

- returns `Obj`

- `stepperBuilder:new(_options)`

<details><summary>Instance / other functions (8)</summary>

- `parentGroup:updateIdleFrame()`
- `parentGroup:isAdjusting()`
- `parentGroup:startAdjustingIfNotAlreadyStarted(_optionalValueMutator)`
- `parentGroup:stopAdjustingIfNotAlreadyStopped()`
- `parentGroup:getValue()`
- `parentGroup:setValue(_newValue)`
- `parentGroup:createDpadNavigation()`
- `parentGroup:createFocusNavigation(_onObtainFocusLeft, _onObtainFocusRight, _onRemoveFocus)`

</details>

### tabBarBuilder

`classes.modules.interface.tabBarBuilder`

- returns `Obj`

- `tabBarBuilder:createHorizontalLengthOptionsWithTabWidth(_tabWidth, _tabBarHeight)`
- `tabBarBuilder:createHorizontalLengthOptionsWithTabBarWidth(_tabBarWidth, _tabBarHeight)`
- `tabBarBuilder:createVerticalLengthOptionsWithTabHeight(_tabHeight, _tabBarWidth)`
- `tabBarBuilder:createVerticalLengthOptionsWithTabBarHeight(_tabBarHeight, _tabBarWidth)`
- `tabBarBuilder:new(_options)`

<details><summary>Instance / other functions (18)</summary>

- `parentGroup:addTab(_createTabContentFunction)`
- `parentGroup:getTab(_index)`
- `parentGroup:isTabDisabled(_index)`
- `parentGroup:setTabEnabled(_index, _shouldEnable)`
- `parentGroup:disableTab(_index)`
- `parentGroup:enableTab(_index)`
- `parentGroup:invalidate()`
- `parentGroup:getAmountOfTabs()`
- `parentGroup:getSelectedTabIndex()`
- `parentGroup:trySelectTab(_index, _instant)`
- `parentGroup:reloadTab()`
- `parentGroup:selectNearestTab(_index, _instant)`
- `parentGroup:selectNextTab(_shouldLoopIfEdgeReached, _ignoreRightToLeftLanguage)`
- `parentGroup:selectPreviousTab(_shouldLoopIfEdgeReached, _ignoreRightToLeftLanguage)`
- `parentGroup:createDpadNavigation(_shouldPreventLoopIfEdgeReached)`
- `parentGroup:createShoulderButtonNavigation(_shouldPreventLoopIfEdgeReached)`
- `parentGroup:createNumericKeyTabNavigation()`
- `parentGroup:createFunctionKeyTabNavigation()`

</details>

### tableViewBuilder

`classes.modules.interface.tableViewBuilder`

- returns `Obj`
- requires: `classes.modules.interface.gridViewBuilder`

- `tableViewBuilder:new(_options)`

<details><summary>Instance / other functions (9)</summary>

- `parentGroup:deleteGridBoxAtIndex(_yIndex)`
- `parentGroup:getGridBox(_yIndex)`
- `parentGroup:recreateGridBoxAtIndex(_yIndex, _instant)`
- `parentGroup:trySelectGridBox(_yIndex, _isRecreateGridBoxAtIndex, _instant)`
- `parentGroup:selectNearestGridBox(_yIndex, _instant)`
- `parentGroup:scrollToGridBoxPosition(_yIndex, _time, _onComplete)`
- `parentGroup:setPositionToGridBox(_yIndex)`
- `parentGroup:createGridBoxDpadAndShoulderButtonNavigation()`
- `parentGroup:createGridBoxDpadAndShoulderButtonCategoryNavigation()`

</details>

### threeFrameImageBuilder

`classes.modules.interface.threeFrameImageBuilder`

- returns `Obj`
- requires: `classes.modules.interface.AbstractMultiFrameImage`

- `threeFrameImageBuilder:new(_parent, _path, _options, _mutator)`
- `threeFrameImageBuilder:newObject(_parent, _path, _options, _mutator)`
- `threeFrameImageBuilder:newRepeated(_parent, _path, _edgeSheetFile, _middleFile, _options, _mutator)`
- `threeFrameImageBuilder:newRepeatedObject(_parent, _path, _edgeSheetFile, _middleFile, _options, _mutator)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`

</details>

### twoFrameImageBuilder

`classes.modules.interface.twoFrameImageBuilder`

- returns `t`
- requires: `classes.modules.interface.AbstractMultiFrameImage`

- `twoFrameImageBuilder:new(_parent, _path, _options)`
- `twoFrameImageBuilder:newObject(_parent, _path, _options, _mutator)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setWidth(_newWidth)`
- `parentGroup:setHeight(_newHeight)`

</details>

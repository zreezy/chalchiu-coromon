# classes.modules.navigation

Coromon 1.5.4. 12 module(s). [Back to index](../README.md)

[combinedNavigationBuilder](#combinednavigationbuilder), [delegatingNavigationBuilder](#delegatingnavigationbuilder), [focusBuilder](#focusbuilder), [forcedDelegatingNavigationBuilder](#forceddelegatingnavigationbuilder), [forcedParentNavigationBuilder](#forcedparentnavigationbuilder), [gridNavigationBuilder](#gridnavigationbuilder), [horizontalNavigationBuilder](#horizontalnavigationbuilder), [inputNavigationBuilder](#inputnavigationbuilder), [listNavigationBuilder](#listnavigationbuilder), [navigationBuilder](#navigationbuilder), [parentNavigationBuilder](#parentnavigationbuilder), [verticalNavigationBuilder](#verticalnavigationbuilder)

### combinedNavigationBuilder

`classes.modules.navigation.combinedNavigationBuilder`

- returns `t`

- `combinedNavigationBuilder:new(_object)`

<details><summary>Instance / other functions (8)</summary>

- `navigation:getChildren()`
- `navigation:add(_navigation, _optionalIndex)`
- `navigation:clear()`
- `navigation:onFocusObtained()`
- `navigation:onFocusRemoved()`
- `navigation:onHandleKeyEvent(event)`
- `navigation:onHandleCharacterEvent(event)`
- `navigation:onHandleAxisEvent(event)`

</details>

### delegatingNavigationBuilder

`classes.modules.navigation.delegatingNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.navigationBuilder`

- `delegatingNavigationBuilder:new()`

<details><summary>Instance / other functions (7)</summary>

- `navigation:getCurrentChild()`
- `navigation:onFocusRemoved()`
- `navigation:onFocusObtained()`
- `navigation:delegateFocusToNewChild(_newChild)`
- `navigation:onHandleKeyEvent(event)`
- `navigation:onHandleCharacterEvent(event)`
- `navigation:onHandleAxisEvent(event)`

</details>

### focusBuilder

`classes.modules.navigation.focusBuilder`

- returns `t`
- requires: `classes.modules.Class`

- `focusBuilder:new(_object)`

<details><summary>Instance / other functions (11)</summary>

- `focus:getObject()`
- `focus:setOnRemoveFocus(_function)`
- `focus:setOnObtainFocus(_function)`
- `focus:isFocused()`
- `focus:handleRemoveFocus()`
- `focus:onFocusRemoved()`
- `focus:setCanObtainFocus(_function)`
- `focus:handleObtainFocus()`
- `focus:onFocusObtained()`
- `focus:canObtainFocus()`
- `focus:reloadFocus()`

</details>

### forcedDelegatingNavigationBuilder

`classes.modules.navigation.forcedDelegatingNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.delegatingNavigationBuilder`

- `forcedDelegatingNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (3)</summary>

- `navigation:canObtainFocus()`
- `navigation:canChildObtainFocus()`
- `navigation:delegateFocusToNewChild(_newChild)`

</details>

### forcedParentNavigationBuilder

`classes.modules.navigation.forcedParentNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.forcedDelegatingNavigationBuilder`

- `forcedParentNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (2)</summary>

- `navigation:setChild(_child)`
- `navigation:getCurrentChild()`

</details>

### gridNavigationBuilder

`classes.modules.navigation.gridNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.forcedDelegatingNavigationBuilder`

- `gridNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (26)</summary>

- `navigation:getChildObjects()`
- `navigation:traverseHorizontal()`
- `navigation:traverseVertical()`
- `navigation:setGridWidth(_width)`
- `navigation:addRow()`
- `navigation:getAmountOfRows()`
- `navigation:add(_navigation)`
- `navigation:addAndSetSelected(_navigation)`
- `navigation:swapX(_yIndex, _xIndex1, _xIndex2)`
- `navigation:swapY(_yIndex1, _yIndex2)`
- `navigation:clear()`
- `navigation:setSelected(_navigation)`
- `navigation:setSelectedIndex(_xIndex, _yIndex, _shouldPlayCursorSound)`
- `navigation:getCurrentChild()`
- `navigation:getCurrentXIndex()`
- `navigation:getCurrentYIndex()`
- `navigation:getCurrentIndex()`
- `navigation:canChildObtainFocus()`
- `navigation:setRightToLeftAware()`
- `navigation:isRightToLeftAware()`
- `navigation:setInverseYScrolling()`
- `navigation:isInverseYScrolling()`
- `navigation:moveFocusIfPossible(_xIndex, _yIndex)`
- `navigation:tryMoveFocusToDirection(_direction)`
- `navigation:onHandleKeyEvent(event)`
- `navigation:shouldSwitchFromKeyboardToGamepadNavigationMethod(event)`

</details>

### horizontalNavigationBuilder

`classes.modules.navigation.horizontalNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.listNavigationBuilder`

- `horizontalNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (5)</summary>

- `navigation:setUseShoulderButtons()`
- `navigation:isNextChildInListKeyEvent(event)`
- `navigation:setRightToLeftAware()`
- `navigation:isRightToLeftAware()`
- `navigation:getDirectionNumber(event)`

</details>

### inputNavigationBuilder

`classes.modules.navigation.inputNavigationBuilder`

- returns `t`

- `inputNavigationBuilder:new(_options)`

<details><summary>Instance / other functions (12)</summary>

- `navigation:setMultitouchEnabled(_boolean)`
- `navigation:startFocus()`
- `navigation:stopFocus()`
- `navigation:optionallyReloadInputNavigationFocus()`
- `navigation:navigationMethodSwitched()`
- `navigation:switchedFromOrToGamepad()`
- `navigation:character(event)`
- `navigation:mouse(event)`
- `navigation:mappedAxis(event)`
- `navigation:keyOrMappedButton(event)`
- `navigation:onFocusObtained()`
- `navigation:onFocusRemoved()`

</details>

### listNavigationBuilder

`classes.modules.navigation.listNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.forcedDelegatingNavigationBuilder`

- `listNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (19)</summary>

- `navigation:add(_navigation)`
- `navigation:getChildCount()`
- `navigation:getChildObjects()`
- `navigation:reverseOrderOfChildren()`
- `navigation:clear()`
- `navigation:traverseCyclical()`
- `navigation:setOnTraverse(_function)`
- `navigation:setSelected(_navigation, _shouldPlayCursorSound)`
- `navigation:setLastSelected()`
- `navigation:addAndSetSelected(_navigation)`
- `navigation:setSelectedIndex(_index, _shouldPlayCursorSound)`
- `navigation:getSelectedIndex()`
- `navigation:getCurrentChild()`
- `navigation:getChildren()`
- `navigation:canChildObtainFocus()`
- `navigation:onHandleKeyEvent(event)`
- `navigation:isNextChildInListKeyEvent(event)`
- `navigation:getDirectionNumber(event)`
- `navigation:shouldSwitchFromKeyboardToGamepadNavigationMethod(event)`

</details>

### navigationBuilder

`classes.modules.navigation.navigationBuilder`

- returns `t`

- `navigationBuilder:new(_object)`

<details><summary>Instance / other functions (21)</summary>

- `navigation:setShouldSwitchFromKeyboardToGamepadNavigationMethod(_function)`
- `navigation:shouldSwitchFromKeyboardToGamepadNavigationMethod(event)`
- `navigation:setOnUse(_function)`
- `navigation:setOnBack(_function)`
- `navigation:setOnStart(_function)`
- `navigation:setOnLeftShoulder(_function)`
- `navigation:setOnRightShoulder(_function)`
- `navigation:setOnFirstExtra(_function)`
- `navigation:setOnSecondExtra(_function)`
- `navigation:setOnDpad(_function)`
- `navigation:setOnBeforeKeyDown(_function)`
- `navigation:setOnKeyEvent(_function)`
- `navigation:setOnCharacterEvent(_function)`
- `navigation:setOnAxisEvent(_function)`
- `navigation:handleAxisEvent(event)`
- `navigation:onHandleAxisEvent(event)`
- `navigation:handleCharacterEvent(event)`
- `navigation:onHandleCharacterEvent(event)`
- `navigation:setShouldHandleKey(_function)`
- `navigation:handleKeyEvent(event)`
- `navigation:onHandleKeyEvent(event)`

</details>

### parentNavigationBuilder

`classes.modules.navigation.parentNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.delegatingNavigationBuilder`

- `parentNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (2)</summary>

- `navigation:setChild(_child)`
- `navigation:getCurrentChild()`

</details>

### verticalNavigationBuilder

`classes.modules.navigation.verticalNavigationBuilder`

- returns `t`
- requires: `classes.modules.navigation.listNavigationBuilder`

- `verticalNavigationBuilder:new(_parent)`

<details><summary>Instance / other functions (1)</summary>

- `navigation:isNextChildInListKeyEvent(event)`

</details>

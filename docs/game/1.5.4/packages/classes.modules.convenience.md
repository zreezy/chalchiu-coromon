# classes.modules.convenience

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[keys](#keys), [navigations](#navigations), [spriteAnimation](#spriteanimation), [spriteEvent](#spriteevent), [touches](#touches)

### keys

`classes.modules.convenience.keys`

- returns `t`

- `keys.onKeyDown(_listener)`
- `keys.onKeyUp(_listener)`
- `keys:parseNumberOfFunctionKey(_keyName)`
- `keys:parseNumberOfNumpadKey(_keyName)`
- `keys:parseNumberOfKey(_keyName)`
- `keys:parseNumberOfKeyOrNumpadKey(_keyName)`

### navigations

`classes.modules.convenience.navigations`

- returns `t`

- `navigations:findByFunctionRecursive(_navigation, _function)`
- `navigations:switchFromKeyboardToGamepadNavigationMethodOnDpad()`
- `navigations:setShowOnFocus(_navigation, ...)`
- `navigations:createShowNavigation(...)`
- `navigations:setAlphaShowOnFocus(_navigation, ...)`
- `navigations:createAlphaShowNavigation(...)`
- `navigations:setHideOnFocus(_navigation, ...)`
- `navigations:createHideOnFocusNavigation(...)`
- `navigations:createNonFocusableNavigation(_object)`
- `navigations:onStartButtonDown(_listener)`
- `navigations:createUseButtonNavigation(_object, _onObtainFocus, _onRemoveFocus)`
- `navigations:createBackButtonNavigation(_object)`
- `navigations:createStartButtonNavigation(_object)`
- `navigations:createFirstExtraButtonNavigation(_object)`
- `navigations:createSecondExtraButtonNavigation(_object)`
- `navigations:createUpButtonNavigation(_object)`
- `navigations:createDownButtonNavigation(_object)`
- `navigations:createVerticalNavigation(_navigations)`
- `navigations:createVerticalNavigationWithLastSelected(_navigations)`
- `navigations:createHorizontalNavigation(_navigations)`
- `navigations:createHorizontalNavigationWithLastSelected(_navigations)`
- `navigations:createVerticalButtonsNavigation(_buttons, _onFocusObtained, _onFocusRemoved)`
- `navigations:createVerticalButtonsNavigationWithLastSelected(_buttons, _onFocusObtained, _onFocusRemoved)`
- `navigations:createHorizontalButtonsNavigation(_buttons, _onFocusObtained, _optionalSelectedIndex)`
- `navigations:createHorizontalButtonsNavigationWithLastSelected(_buttons, _onFocusObtained)`
- `navigations:createGridButtonsNavigation(_buttons, _gridWidth, _onFocusObtained, _selectedXIndex, _selectedYIndex)`
- `navigations:createCombinedNavigation(_navigations)`
- `navigations:createNumericKeyTouchNavigation(_objectsToTouch)`
- `navigations:createNumericFunctionKeyTouchNavigation(_objectsToTouch)`
- `navigations.mapKeyEventToTouches(_touchable)`
- `navigations.doMapKeyEventToTouch(event, _touchable)`

### spriteAnimation

`classes.modules.convenience.spriteAnimation`

- returns `t`

- `spriteAnimation:sequences(_framesPerSequence, ...)`

### spriteEvent

`classes.modules.convenience.spriteEvent`

- returns `t`

- `spriteEvent.synchroniseFrames(_mainSprite, _otherSprite)`
- `spriteEvent.synchroniseFramesSafe(_mainSprite, _otherSprite)`
- `spriteEvent.synchroniseFramesAndSequences(_mainSprite, _otherSprite)`
- `spriteEvent.synchroniseFramesAndSequencesAndExtend(_mainSprite, _otherSprite, _extend)`
- `spriteEvent.synchroniseFramesAndSequencesSafe(_mainSprite, _otherSprite)`
- `spriteEvent.synchroniseFramesInSequence(_mainSprite, _otherSprite)`
- `spriteEvent.synchroniseFramesToMask(_objectToMask, _frameSprite, _mask, _columns, _rows)`
- `spriteEvent.onFrameChange(_listener)`
- `spriteEvent.onLoop(_sequence, _listener)`
- `spriteEvent.onLoopX(_sequence, _loopIndex, _listener)`
- `spriteEvent.onEnded(_sequence, _listener)`
- `spriteEvent.onFrame(_sequence, _frame, _listener)`
- `spriteEvent.onFrameInSequence(_sequence, _frame, _listener)`
- `spriteEvent.onFrameInSheet(_sequence, _frame, _listener)`
- `spriteEvent.removeSelfOnEnded(_sequence, _listener)`
- `spriteEvent.setInvisibleOnEnded(_sequence, _listener)`
- `spriteEvent.removeSelfOnLoop(_sequence, _listener)`
- `spriteEvent.newSequenceOnEnded(_sequence1, _sequence2, _listener)`
- `spriteEvent.newSequenceOnLoop(_sequence1, _sequence2, _listener)`
- `spriteEvent.newSequenceOnLoopX(_sequence1, _sequence2, _loopCount, _listener)`
- `spriteEvent.newStaticSequenceOnEnded(_sequence1, _sequence2, _listener)`
- `spriteEvent.resetOnEnded(_listener)`

### touches

`classes.modules.convenience.touches`

- returns `t`

- `touches.ifMovedAtLeast(_delta, _listener)`
- `touches.ifMovedAtLeastX(_deltaX, _listener)`
- `touches.ifMovedAtLeastY(_deltaY, _listener)`
- `touches.passFocusAfterMove(_deltaX, _object, _extend)`
- `touches.passFocusAfterMoveX(_deltaX, _object, _extend)`
- `touches.passFocusAfterMoveY(_deltaY, _object, _extend)`
- `touches.loseFocusAfterMove(_deltaX, _extend)`
- `touches.loseFocusAfterMoveX(_deltaX, _extend)`
- `touches.loseFocusAfterMoveY(_deltaY, _extend)`
- `touches.doClick(_touchable)`
- `touches.doClickPress(_touchable, _sourceKeyEvent)`
- `touches.doClickReleaseInsideBounds(_touchable, _sourceKeyEvent)`
- `touches.doClickReleaseOutsideBounds(_touchable)`
- `touches:simulateClick(_group, _x, _y)`
- `touches:getTouchableAtLocation(_group, _x, _y, _optionalFilterFunction)`

<details><summary>Fields with default values (3)</summary>

- `touches.holdDuration_short` = `400`
- `touches.holdDuration_medium` = `600`
- `touches.holdDuration_long` = `1500`

</details>

# classes.modules.input

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[InputDeviceConfigurator](#inputdeviceconfigurator), [InputDeviceRegistry](#inputdeviceregistry), [MouseHover](#mousehover), [inputHelper](#inputhelper)

### InputDeviceConfigurator

`classes.modules.input.InputDeviceConfigurator`

- returns `t`

- `InputDeviceConfigurator:new()`

<details><summary>Instance / other functions (10)</summary>

- `abstractConfigurator:setControllerType(_controllerType)`
- `abstractConfigurator:setAnalogX(_axis, _isInverted)`
- `abstractConfigurator:unsetAnalogX()`
- `abstractConfigurator:setAnalogY(_axis, _isInverted)`
- `abstractConfigurator:unsetAnalogY()`
- `abstractConfigurator:setButton(_buttonUID, ...)`
- `abstractConfigurator:unsetButton(_buttonUID)`
- `abstractConfigurator:setKeysForKeyboardAndMouseNavigation(...)`
- `abstractConfigurator:setKeysForKeyboardOnlyNavigation(...)`
- `abstractConfigurator:isKeyAlreadyUsed(_keyName)`

</details>

### InputDeviceRegistry

`classes.modules.input.InputDeviceRegistry`

- returns `t`

- `InputDeviceRegistry:init(_customConfigByProductName)`
- `InputDeviceRegistry:getCustomConfigByProductName()`
- `InputDeviceRegistry:registerDefaultConfigForMFiProfile(_inputDeviceConfigurator, _MFiProfile)`
- `InputDeviceRegistry:registerDefaultConfigForProductName(_inputDeviceConfigurator, _productName)`
- `InputDeviceRegistry:registerDefaultConfigForProductNameFunction(_inputDeviceConfigurator, _matchProductNameFunction)`
- `InputDeviceRegistry:registerCustomConfigForProductName(_inputDeviceConfigurator, _productName)`
- `InputDeviceRegistry:resolveConfigFor(_device)`

### MouseHover

`classes.modules.input.MouseHover`

- returns `mouseHover`

- `MouseHover:mouse(_event)`
- `MouseHover:setCurrentFrameProperty(_key, _value)`
- `MouseHover:getCurrentFrameProperty(_key)`
- `MouseHover:lateUpdate()`
- `MouseHover:activateWithMouseHoverables(_mouseHoverables)`
- `MouseHover:deactivate()`

### inputHelper

`classes.modules.input.inputHelper`

- returns `t`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `inputHelper:ignoreProgrammaticReleaseForButtonUIDs(_buttonUIDs)`
- `inputHelper:clearProgrammaticReleaseIgnoredButtonUIDs()`
- `inputHelper:isKeyboardDevice(_device)`
- `inputHelper:setCurrentDevice(_device)`
- `inputHelper:getCurrentDevice()`
- `inputHelper:getCurrentDeviceConfig()`
- `inputHelper:isUsingGamepad()`
- `inputHelper:isUsingKeyboard()`
- `inputHelper:isUsingAppleTVRemote()`
- `inputHelper:getCurrentDeviceControllerType()`
- `inputHelper:resolveCurrentDeviceControllerType()`
- `inputHelper:setMultitouchEnabled(_bool)`
- `inputHelper:setInputNavigationForInputLevel(_inputLevel, _navigation)`
- `inputHelper:increaseInputLevel()`
- `inputHelper:decreaseInputLevel()`
- `inputHelper:getInputLevel()`
- `inputHelper:blockInput()`
- `inputHelper:unblockInput()`
- `inputHelper:isInputBlocked(_inputLevel)`
- `inputHelper:blockInputNavigation()`
- `inputHelper:unblockInputNavigation()`
- `inputHelper:listenToTouchOrUseButton(_onComplete, _automaticallyContinueAfter)`
- `inputHelper:releaseFocusOnEvent(_event)`
- `inputHelper:getTouchListener(_options)`
- `inputHelper:onPress(_listener)`
- `inputHelper:onReleaseWithinBounds(_listener)`
- `inputHelper:returnTrue()`
- `inputHelper:getMouseListener(_options)`
- `inputHelper:onMouseSecondaryButton(_onSecondaryButton, _onBeforeEvent)`
- `inputHelper:onMouseMove(_onMove, _onBeforeEvent)`
- `inputHelper:onMouseScroll(_onScroll, _onBeforeEvent)`
- `inputHelper:onMouseScrollAndMove(_onMoveOrScroll, _onBeforeEvent)`
- `inputHelper:getMouseHoverListener(_options)`
- `inputHelper:onMouseHoverBegan(_onMouseHoverBegan, _customMouseHoverListenerOptions)`
- `inputHelper:onMouseHoverBeganOrEnded(_onMouseHoverBegan, _onMouseHoverEnded, _customMouseHoverListenerOptions)`
- `inputHelper:onMouseHoverBeganAndEnded(_onMouseHoverBeganAndEnded, _customMouseHoverListenerOptions)`
- `inputHelper:trySetNavigationMethod(_newNavigationMethod, _shouldResetCurrentDevice)`
- `inputHelper:isGamepadNavigationSelected()`
- `inputHelper:isKeyboardNavigationSelected()`
- `inputHelper:isKeyboardAndMouseNavigationSelected()`
- `inputHelper:isTouchNavigationSelected()`
- `inputHelper:getCurrentNavigationMethod()`
- `inputHelper:repeatIfButtonIsStillPressed(_event, _time, _onlyIfStill)`
- `inputHelper:getLastDirectionNonFake()`
- `inputHelper:getLastHorizontalDirection(_pressedDirections)`
- `inputHelper:getLastVerticalDirection(_pressedDirections)`
- `inputHelper:isKeyPressed(_keyName)`
- `inputHelper:isButtonPressed(_buttonUID)`
- `inputHelper:isButtonActuallyPressed(_buttonUID)`
- `inputHelper:getMillisecondsSinceButtonPressed(_buttonUID)`
- `inputHelper:setKeyEventShouldDetectUnknownGamepads(_boolean)`
- `inputHelper:setKeyEventShouldAcceptFallbackForUnknownGamepads(_boolean)`
- `inputHelper:enableNativeBackToExitForAndroid()`
- `inputHelper:disableNativeBackToExitForAndroid()`
- `inputHelper:getObjectsListeningToMouseHover()`
- `inputHelper:addMouseHoverable(_object, _listener)`
- `inputHelper:removeMouseHoverable(_object)`
- `inputHelper:addTouchable(_object, _listener)`
- `inputHelper:removeTouchable(_object)`
- `inputHelper:isTouchable(_object)`
- `inputHelper:addTouchableOverlay(_object, _listener)`
- `inputHelper:removeTouchableOverlay(_object)`
- `inputHelper:releaseWithinBounds(_object)`
- `inputHelper:releaseKeys()`
- `inputHelper:releaseTouches()`
- `inputHelper:releaseHoverables()`
- `inputHelper:releaseInput()`
- `inputHelper:getOptionalMouseLocation()`

<details><summary>Instance / other functions (2)</summary>

- `_object.inputHelperMouseHoverFinalize()`
- `_object.inputHelperFinalize()`

</details>

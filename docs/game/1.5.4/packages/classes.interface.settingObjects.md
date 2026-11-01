# classes.interface.settingObjects

Coromon 1.5.4. 12 module(s). [Back to index](../README.md)

[AbstractButtonSetting](#abstractbuttonsetting), [AbstractCheckboxSetting](#abstractcheckboxsetting), [AbstractConnectWithOnlineIdentityProviderCheckbox](#abstractconnectwithonlineidentityprovidercheckbox), [AbstractEnumButtonSetting](#abstractenumbuttonsetting), [AbstractKeyboardButtonSetting](#abstractkeyboardbuttonsetting), [AbstractPushNotificationsCheckbox](#abstractpushnotificationscheckbox), [AbstractRadioButtonsSetting](#abstractradiobuttonssetting), [AbstractSettingObject](#abstractsettingobject), [AbstractSliderSetting](#abstractslidersetting), [AbstractStepperSetting](#abstractsteppersetting), [AbstractTwoButtonsSetting](#abstracttwobuttonssetting), [SettingObjectHelper](#settingobjecthelper)

### AbstractButtonSetting

`classes.interface.settingObjects.AbstractButtonSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractSettingObject`

- `AbstractButtonSetting:new(_parent, _settingsScrollView, _UID, _focusSelector, _options)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:getButton()`
- `parentGroup:recreateContextImage()`
- `parentGroup:setButtonState(_bool)`
- `parentGroup:setEnabledState(_bool)`

</details>

### AbstractCheckboxSetting

`classes.interface.settingObjects.AbstractCheckboxSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractSettingObject`

- `AbstractCheckboxSetting:new(_parent, _settingsScrollView, _UID, _focusSelector, _options)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:setEnabledState(_bool)`

</details>

### AbstractConnectWithOnlineIdentityProviderCheckbox

`classes.interface.settingObjects.AbstractConnectWithOnlineIdentityProviderCheckbox`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractCheckboxSetting`, `classes.interface.overlays.MessagePopup`

- `AbstractConnectWithOnlineIdentityProviderCheckbox:new(_parent, _UID, _focusSelector, _settingObjects, _links, _onlineIdentityProvider)`

### AbstractEnumButtonSetting

`classes.interface.settingObjects.AbstractEnumButtonSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractButtonSetting`, `classes.interface.overlays.LocalisableEnumSelectPopup`

- `AbstractEnumButtonSetting:new(_parent, _settingsScrollView, _UID, _label, _focusSelector, _enumPopupHeaderText, _enum, _enumValueObjects, _getCurrentEnumValueObject, _onNewEnumValueConfirmed, _onCreateContext, _additionalContextTextHeight, _onGridboxSelect, _onCreateGridBoxContent, _onPopupCreated)`

### AbstractKeyboardButtonSetting

`classes.interface.settingObjects.AbstractKeyboardButtonSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractButtonSetting`

- `AbstractKeyboardButtonSetting:new(_parent, _settingsScrollView, _UID, _label, _focusSelector, _getContextTextFunction, _openKeyboardFunction)`

### AbstractPushNotificationsCheckbox

`classes.interface.settingObjects.AbstractPushNotificationsCheckbox`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractCheckboxSetting`

- `AbstractPushNotificationsCheckbox:new(_parent, _settingsScrollView, _focusSelector, _settingUID, _options)`

### AbstractRadioButtonsSetting

`classes.interface.settingObjects.AbstractRadioButtonsSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractSettingObject`

- `AbstractRadioButtonsSetting:new(_parent, _UID, _focusSelector, _options)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:getRadioButtons()`

</details>

### AbstractSettingObject

`classes.interface.settingObjects.AbstractSettingObject`

- returns `Obj`

- `AbstractSettingObject:calculateContextTextHeight(_parent, _text, _fontName)`
- `AbstractSettingObject:new(_parent, _UID, _widthUsedForRightPart, _label, _showBottomLine, _additionalContextTextHeight, _labelFont, _contextTextFont)`

<details><summary>Instance / other functions (10)</summary>

- `parentGroup:getUID()`
- `parentGroup:getLabel()`
- `parentGroup:getContextText()`
- `parentGroup:setContextText(_text)`
- `parentGroup:getContextImage()`
- `parentGroup:setContextImage(_contextImage)`
- `parentGroup:isEnabled()`
- `parentGroup:setEnabledState(_bool)`
- `parentGroup:shouldDisableOnInitialRender()`
- `parentGroup:getGamepadNavigation()`

</details>

### AbstractSliderSetting

`classes.interface.settingObjects.AbstractSliderSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractSettingObject`, `classes.interface.horizontalFillSliderBuilder`

- `AbstractSliderSetting:new(_parent, _settingsScrollView, _UID, _label, _focusSelector, _options)`

### AbstractStepperSetting

`classes.interface.settingObjects.AbstractStepperSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractSettingObject`, `classes.modules.interface.stepperBuilder`

- `AbstractStepperSetting:new(_parent, _UID, _label, _focusSelector, _stepperOptions, _optionalContextText)`

### AbstractTwoButtonsSetting

`classes.interface.settingObjects.AbstractTwoButtonsSetting`

- returns `Obj`
- requires: `classes.interface.settingObjects.AbstractButtonSetting`

- `AbstractTwoButtonsSetting:new(_parent, _settingsScrollView, _UID, _focusSelector, _options)`

<details><summary>Instance / other functions (2)</summary>

- `buttonsSetting:setSecondButtonState(_bool)`
- `buttonsSetting:setEnabledState(_bool)`

</details>

### SettingObjectHelper

`classes.interface.settingObjects.SettingObjectHelper`

- returns `Obj`

- `SettingObjectHelper:render(_parent, _focusSelector, _topOffset, _settingObjectCategories, _createSettingObject, _shouldRenderSettingObject, _onObtainFocus)`
- `SettingObjectHelper:renderForScrollView(_scrollView, _settingObjectCategories, _createSettingObject, _shouldRenderSettingObject)`

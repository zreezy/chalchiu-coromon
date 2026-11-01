# classes.interface.enums

Coromon 1.5.4. 5 module(s). [Back to index](../README.md)

[SpeakerStyle](#speakerstyle), [UIContainerStyle](#uicontainerstyle), [UIDirectionalContainerStyle](#uidirectionalcontainerstyle), [UIHorizontalContainerStyle](#uihorizontalcontainerstyle), [UIVerticalContainerStyle](#uiverticalcontainerstyle)

### SpeakerStyle

`classes.interface.enums.SpeakerStyle`

<details><summary>Functions (10)</summary>

- `valueObject:getHeadContainerInnerLineColor()`
- `valueObject:getHeadContainerTextColor()`
- `valueObject:getHeadContainerTextOutlineColor()`
- `valueObject:getHeadContainerFillColor()`
- `valueObject:getHeadContainerStyle()`
- `valueObject:getDialogInnerLineColor()`
- `valueObject:getDialogTextColor()`
- `valueObject:getDialogContainerStyle()`
- `valueObject:getDialogContainerHoverStyle()`
- `valueObject:getDialogContainerPressedStyle()`

</details>

<details><summary>Fields with default values (1)</summary>

- `SpeakerStyle.values` = `{}`

</details>

### UIContainerStyle

`classes.interface.enums.UIContainerStyle`

<details><summary>Functions (32)</summary>

- `valueObject:getOptions()`
- `valueObject:getMinimumWidth()`
- `valueObject:getMinimumHeight()`
- `valueObject:setNonHoverVariant(_nonHoverVariant)`
- `valueObject:getHoverVariantOrSelf()`
- `valueObject:getNonHoverVariantOrSelf()`
- `valueObject:getFontOutlineFillEffect(_textColor)`
- `valueObject:createContainer(_containerWidth, _containerHeight)`
- `valueObject:onAfterUIContainerUpdatedOrCreated(_UIContainerContainer)`
- `valueObject:getFileBasename()`
- `valueObject:getPath()`
- `valueObject:getFullPath()`
- `valueObject:getFrameWidth()`
- `valueObject:getFrameHeight()`
- `ornamentImage:setWidth(_newWidth)`
- `ornamentImage:setHeight(_newHeight)`
- `ornamentImage:setSize(_newWidth, _newHeight)`
- `combinedValueObject:getMinimumWidth()`
- `combinedValueObject:getMinimumHeight()`
- `combinedValueObject:createContainer(_containerWidth, _containerHeight)`
- `combinedContainer:setFillColor(_r, _g, _b, _a)`
- `combinedContainer:setWidth(_newWidth)`
- `combinedContainer:setHeight(_newHeight)`
- `combinedContainer:setSize(_newWidth, _newHeight)`
- `combinedValueObject:onAfterUIContainerUpdatedOrCreated(_UIContainerContainer)`
- `recoloredValueObjectAtPath:onAfterUIContainerUpdatedOrCreated(_UIContainerContainer)`
- `customContainer:setWidth(_newWidth)`
- `customContainer:setHeight(_newHeight)`
- `customContainer:setSize(_newWidth, _newHeight)`
- `backgroundGradient:setWidth(_newWidth)`
- `backgroundGradient:setHeight(_newHeight)`
- `backgroundGradient:setSize(_newWidth, _newHeight)`

</details>

### UIDirectionalContainerStyle

`classes.interface.enums.UIDirectionalContainerStyle`

- returns `UIDirectionalContainerStyle`

<details><summary>Functions (6)</summary>

- `valueObject:getPath()`
- `valueObject:getFullPath()`
- `valueObject:getName()`
- `valueObject:getFrameWidth()`
- `valueObject:getFrameHeight()`
- `valueObject:getDirection()`

</details>

### UIHorizontalContainerStyle

`classes.interface.enums.UIHorizontalContainerStyle`

- returns `UIHorizontalContainerStyle`

<details><summary>Functions (5)</summary>

- `valueObject:getPath()`
- `valueObject:getFullPath()`
- `valueObject:getName()`
- `valueObject:getFrameWidth()`
- `valueObject:getFrameHeight()`

</details>

### UIVerticalContainerStyle

`classes.interface.enums.UIVerticalContainerStyle`

- returns `UIVerticalContainerStyle`

<details><summary>Functions (5)</summary>

- `valueObject:getPath()`
- `valueObject:getFullPath()`
- `valueObject:getName()`
- `valueObject:getFrameWidth()`
- `valueObject:getFrameHeight()`

</details>

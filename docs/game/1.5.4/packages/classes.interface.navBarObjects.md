# classes.interface.navBarObjects

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[abstractInnerNavBarObjectBuilder](#abstractinnernavbarobjectbuilder), [abstractNavBarObjectBuilder](#abstractnavbarobjectbuilder)

### abstractInnerNavBarObjectBuilder

`classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractNavBarObjectBuilder`

- `abstractInnerNavBarObjectBuilder:new(_width, _height)`

<details><summary>Instance / other functions (9)</summary>

- `navBarObject:chooseParent(_navBar, _innerNavBar)`
- `navBarObject:setToOffsetLocation(_navBar, _innerNavBar, _side, _offset)`
- `navBarObject:transitionToOffsetLocation(_navBar, _innerNavBar, _side, _offset)`
- `navBarObject:setToTargetLocation(_navBar, _innerNavBar, _side)`
- `navBarObject:setToInLocation(_navBar, _innerNavBar, _side)`
- `navBarObject:setToOutLocation(_navBar, _innerNavBar, _side)`
- `navBarObject:transitionToTargetLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `navBarObject:transitionToInLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `navBarObject:transitionToOutLocation(_navBar, _innerNavBar, _side, _onComplete)`

</details>

### abstractNavBarObjectBuilder

`classes.interface.navBarObjects.abstractNavBarObjectBuilder`

- returns `t`

- `abstractNavBarObjectBuilder:new(_width, _height)`

<details><summary>Instance / other functions (22)</summary>

- `navBarObject:chooseParent(_navBar, _innerNavBar)`
- `navBarObject:getGamepadGamepadNavigation(_focusSelector)`
- `navBarObject:getGamepadNavigation()`
- `navBarObject:getKeyboardNavigation()`
- `navBarObject:getGlobalNavigation()`
- `navBarObject:setToTargetLocation(_navBar, _innerNavBar, _side)`
- `navBarObject:setToInLocation(_navBar, _innerNavBar, _side)`
- `navBarObject:setToOutLocation(_navBar, _innerNavBar, _side)`
- `navBarObject:transitionToTargetLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `navBarObject:transitionToInLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `navBarObject:transitionToOutLocation(_navBar, _innerNavBar, _side, _onComplete)`
- `navBarObject:getXOffsetToNextObject()`
- `navBarObject:setToOffsetLocation(_navBar, _innerNavBar, _side, _offset)`
- `navBarObject:transitionToOffsetLocation(_navBar, _innerNavBar, _side, _offset)`
- `navBarObject:onDestroy()`
- `navBarObject:setNavBar(_navBar)`
- `navBarObject:setVisibleInNavBar(_isVisible)`
- `navBarObject:shouldBeVisibleInNavBar()`
- `navBarObject:setOffset(_animated, _navBar, _innerNavBar, _side, _offset)`
- `navBarObject:show(_animated, _navBar, _innerNavBar, _side)`
- `navBarObject:hideToInLocation(_animated, _navBar, _innerNavBar, _side, _onComplete)`
- `navBarObject:hideToOutLocation(_animated, _navBar, _innerNavBar, _side, _onComplete)`

</details>

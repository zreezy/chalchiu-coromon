# classes.interface.navBarObjects.bottomBarObjects

Coromon 1.5.4. 3 module(s). [Back to index](../README.md)

[innerBottomBarButtonIndicatorText](#innerbottombarbuttonindicatortext), [innerBottomBarTabBar](#innerbottombartabbar), [innerBottomBarTipText](#innerbottombartiptext)

### innerBottomBarButtonIndicatorText

`classes.interface.navBarObjects.bottomBarObjects.innerBottomBarButtonIndicatorText`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerBottomBarButtonIndicatorText:new(_buttonFileBaseName, _text)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:setText(_newText)`
- `parentGroup:onDestroy()`

</details>

### innerBottomBarTabBar

`classes.interface.navBarObjects.bottomBarObjects.innerBottomBarTabBar`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`, `classes.interface.horizontalTabBarBuilder`

- `innerBottomBarTabBar:createSizeOptionsWithTabBarWidth(_tabBarWidth, _tabBarHeight)`
- `innerBottomBarTabBar:createSizeOptionsWithTabWidth(_tabWidth, _tabBarHeight)`
- `innerBottomBarTabBar:new(_sizeOptions, _options)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:getTabBar()`
- `parentGroup:invalidate()`
- `parentGroup:getGlobalNavigation()`
- `parentGroup:onDestroy()`

</details>

### innerBottomBarTipText

`classes.interface.navBarObjects.bottomBarObjects.innerBottomBarTipText`

- returns `t`
- requires: `classes.interface.navBarObjects.abstractInnerNavBarObjectBuilder`

- `innerBottomBarTipText:new(_text, _side)`

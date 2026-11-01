# classes.interface.worldInterface

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[WorldInterfaceActionsPanel](#worldinterfaceactionspanel), [WorldInterfaceInteractButton](#worldinterfaceinteractbutton)

### WorldInterfaceActionsPanel

`classes.interface.worldInterface.WorldInterfaceActionsPanel`

- returns `Obj`

- `WorldInterfaceActionsPanel:new(_parent, _options)`

<details><summary>Instance / other functions (14)</summary>

- `parentGroup:refreshGauntletButtonIcon()`
- `parentGroup:updateGauntletModuleCooldownScale(_scale)`
- `parentGroup:refreshBindItemIcon()`
- `parentGroup:getGauntletModuleButton()`
- `parentGroup:getBindItemButton()`
- `parentGroup:setGauntletModuleButtonPressed(_isPressed)`
- `parentGroup:setGauntletModuleButtonHovered(_isHovered)`
- `parentGroup:setBindItemButtonPressed(_isPressed)`
- `parentGroup:setBindItemButtonHovered(_isHovered)`
- `parentGroup:showGauntletButtonHoldOverlay()`
- `parentGroup:hideGauntletButtonHoldOverlay()`
- `parentGroup:showBindItemButtonHoldOverlay()`
- `parentGroup:hideBindItemButtonHoldOverlay()`
- `parentGroup:position()`

</details>

### WorldInterfaceInteractButton

`classes.interface.worldInterface.WorldInterfaceInteractButton`

- returns `Obj`

- `WorldInterfaceInteractButton:new(_parent, _buttonUID, _options)`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:getIconFilename()`
- `parentGroup:setIconAndText(_filename, _text)`
- `parentGroup:setPressed(_bool)`
- `parentGroup:setHovered(_bool)`
- `parentGroup:isPressed()`
- `parentGroup:getBackground()`

</details>

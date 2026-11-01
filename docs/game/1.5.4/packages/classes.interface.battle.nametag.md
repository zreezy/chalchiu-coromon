# classes.interface.battle.nametag

Coromon 1.5.4. 3 module(s). [Back to index](../README.md)

[AbstractNametag](#abstractnametag), [MonsterNametag](#monsternametag), [RogueCharacterNametag](#roguecharacternametag)

### AbstractNametag

`classes.interface.battle.nametag.AbstractNametag`

- returns `Obj`

- `AbstractNametag:new(_parent, _participant, _width, _height)`

<details><summary>Instance / other functions (11)</summary>

- `parentGroup:alignFocusSelector(_focusSelector)`
- `parentGroup:getNametagHighlight()`
- `parentGroup:getNametagCodeHighlight()`
- `parentGroup:getNametagHoverHighlight()`
- `parentGroup:instanceOf(_className)`
- `parentGroup:getParticipant()`
- `parentGroup:getTeam()`
- `parentGroup:getSortIndex()`
- `parentGroup:setHighlightedByCode(_isHighlightedByCode)`
- `parentGroup:setHighlightedByHover(_isHighlightedByHover)`
- `parentGroup:isHighlightedByCode()`

</details>

### MonsterNametag

`classes.interface.battle.nametag.MonsterNametag`

- returns `Obj`
- requires: `classes.interface.battle.nametag.AbstractNametag`, `classes.modules.battle.battleHelper`, `classes.interface.monsterXpBarBuilder`, `classes.interface.monsterHealthBarBuilder`, `classes.interface.monsterEnergyBarBuilder`, `classes.interface.monsterPotentialBarBuilder`, `classes.interface.ColoredMonsterTypesInnerContainer`

- `MonsterNametag:new(_parent, _monsterSprite)`

<details><summary>Instance / other functions (26)</summary>

- `parentGroup:getMonsterSprite()`
- `parentGroup:setHighlightedByHover(_isHighlightedByHover)`
- `parentGroup:getSortIndex()`
- `parentGroup:getNametagHighlight()`
- `parentGroup:getNametagCodeHighlight()`
- `parentGroup:getNametagHoverHighlight()`
- `parentGroup:alignFocusSelector(_focusSelector)`
- `parentGroup:refreshName()`
- `parentGroup:refreshTypes()`
- `parentGroup:alignConditionIconToLevelText()`
- `parentGroup:setCondition(_conditionUID)`
- `parentGroup:removeCondition()`
- `parentGroup:refreshHealthBar()`
- `parentGroup:refreshHealthBarAndMaxHealth()`
- `parentGroup:refreshHealthBarAnimated(_onComplete, _wasCriticalHit, _wasVeryEffective, _wasNotEffective)`
- `parentGroup:refreshEnergyBar()`
- `parentGroup:refreshEnergyBarAndMaxEnergy()`
- `parentGroup:refreshEnergyBarAnimated(_onComplete)`
- `parentGroup:refreshXpBarAnimated(_xpRequiredInLevel, _onComplete)`
- `parentGroup:showHealthAndEnergyBar(_onComplete)`
- `parentGroup:showEnergyBar(_onComplete)`
- `parentGroup:showXpBar(_onComplete)`
- `parentGroup:setPreparedMoveIndicator(_preparedMove)`
- `parentGroup:doLevelUpBlink()`
- `parentGroup:doPotentialLevelUpBlink()`
- `parentGroup:doThreeDamageBlinks(_onComplete)`

</details>

### RogueCharacterNametag

`classes.interface.battle.nametag.RogueCharacterNametag`

- returns `Obj`
- requires: `classes.interface.battle.nametag.AbstractNametag`

- `RogueCharacterNametag:new(_parent, _participant)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:getSortIndex()`
- `parentGroup:getNametagHighlight()`
- `parentGroup:alignFocusSelector(_focusSelector)`
- `parentGroup:refreshMovePreviewIcon()`

</details>

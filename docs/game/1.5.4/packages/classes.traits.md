# classes.traits

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[abstractTitanTrait](#abstracttitantrait), [abstractTrait](#abstracttrait)

### abstractTitanTrait

`classes.traits.abstractTitanTrait`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `abstractTitanTrait:new(_monster, _titanPhasePercentages)`

<details><summary>Instance / other functions (8)</summary>

- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`
- `trait:mutateRelativeDamage(_monster, _value)`
- `trait:getTitanPhase()`
- `trait:mutateDamagePriority()`
- `trait:mutateDamage(_monster, _value)`
- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### abstractTrait

`classes.traits.abstractTrait`

- returns `t`
- requires: `classes.battle.abstractMonsterBattleEffect`, `classes.interface.battle.battleIndicatorBuilder`, `classes.lists.traitBaseStatFactorsByEnhancementStageList`

- `abstractTrait:new(_monster)`

<details><summary>Instance / other functions (21)</summary>

- `trait:hasTraitEnhancements()`
- `trait:getBaseStatFactorsByEnhancementStage()`
- `trait:getMonster()`
- `trait:calculateEnhancementStage()`
- `trait:setUID(_UID)`
- `trait:getUID()`
- `trait:getName()`
- `trait:getDescription()`
- `trait:getNameForCalculatedEnhancementStage()`
- `trait:getDescriptionForCalculatedEnhancementStage()`
- `trait:getNameForEnhancementStage(_enhancementStage)`
- `trait:getDescriptionForEnhancementStage(_enhancementStage)`
- `trait:getTraitIndicatorName()`
- `trait:createTraitIndicatorIcon()`
- `trait:createTraitIndicator(_parent, _team)`
- `trait:showTraitIndicator(_team, _onShow)`
- `trait:showTraitIndicatorAt(_team, _magnetFunction)`
- `trait:hideTraitIndicator(_onComplete)`
- `trait:showAndHideTraitIndicator(_team, _onShow)`
- `trait:showAndHideTraitIndicatorButImmediatelyContinue(_team, _onShow)`
- `trait:isTraitIndicatorShown()`

</details>

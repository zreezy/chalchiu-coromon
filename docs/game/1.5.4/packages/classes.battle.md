# classes.battle

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[AbstractMonsterSpriteAction](#abstractmonsterspriteaction), [MonsterSpriteActionsOrStatuses](#monsterspriteactionsorstatuses), [abstractBattleEffect](#abstractbattleeffect), [abstractMonsterBattleEffect](#abstractmonsterbattleeffect)

### AbstractMonsterSpriteAction

`classes.battle.AbstractMonsterSpriteAction`

- returns `t`

- `AbstractMonsterSpriteAction:new()`

<details><summary>Instance / other functions (3)</summary>

- `effect:onApplyEffect(_onComplete)`
- `effect:onBeforeApplyMessage()`
- `effect:tryToApply(_optionsOrOnComplete, _onComplete)`

</details>

### MonsterSpriteActionsOrStatuses

`classes.battle.MonsterSpriteActionsOrStatuses`

- returns `t`

- `MonsterSpriteActionsOrStatuses:tryApplyIfNoBeforeMessages(_monsterSpriteActions, _ifCanApplyNone, _ifCanApplyAny, _afterApply)`

### abstractBattleEffect

`classes.battle.abstractBattleEffect`

- returns `t`

- `abstractBattleEffect:new()`

### abstractMonsterBattleEffect

`classes.battle.abstractMonsterBattleEffect`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `abstractMonsterBattleEffect:new(_battleEffectMonster)`

<details><summary>Instance / other functions (5)</summary>

- `effect:setMonster(_newBattleEffectMonster)`
- `effect:getMonsterSpriteInBattle()`
- `effect:getMonsterSprite()`
- `effect:isSelf(_monster)`
- `effect:isSelfMove(_preparedMove)`

</details>

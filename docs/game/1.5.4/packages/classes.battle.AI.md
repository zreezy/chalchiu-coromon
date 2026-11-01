# classes.battle.AI

Coromon 1.5.4. 9 module(s). [Back to index](../README.md)

[abstractAI](#abstractai), [abstractMonsterAI](#abstractmonsterai), [abstractTrainerAI](#abstracttrainerai), [dumbTrainerAI](#dumbtrainerai), [mirrorChallengeAI](#mirrorchallengeai), [regularMonsterAI](#regularmonsterai), [regularTrainerAI](#regulartrainerai), [smarterMonsterAI](#smartermonsterai), [smarterTrainerAI](#smartertrainerai)

### abstractAI

`classes.battle.AI.abstractAI`

- returns `t`

- `abstractAI:new()`

<details><summary>Instance / other functions (2)</summary>

- `AI:mutateAIScore(_monsterSprite, _move, _score)`
- `AI:mutateMoveScorePairs(_moveScorePairs)`

</details>

### abstractMonsterAI

`classes.battle.AI.abstractMonsterAI`

- returns `t`
- requires: `classes.battle.AI.abstractAI`

- `abstractMonsterAI:new()`

<details><summary>Instance / other functions (1)</summary>

- `AI:mutateAIScore(_monsterSprite, _move, _score)`

</details>

### abstractTrainerAI

`classes.battle.AI.abstractTrainerAI`

- returns `t`
- requires: `classes.battle.AI.abstractAI`

- `abstractTrainerAI:new()`

<details><summary>Instance / other functions (2)</summary>

- `AI:shouldTryToAlwaysHaveStrongestMonsterInBattle()`
- `AI:getBattleGoldBountyMultiplier()`

</details>

### dumbTrainerAI

`classes.battle.AI.dumbTrainerAI`

- returns `t`
- requires: `classes.battle.AI.abstractTrainerAI`

- `dumbTrainerAI:new()`

<details><summary>Instance / other functions (1)</summary>

- `AI:mutateMoveScorePairs(_moveScorePairs)`

</details>

### mirrorChallengeAI

`classes.battle.AI.mirrorChallengeAI`

- returns `t`
- requires: `classes.battle.AI.abstractTrainerAI`, `classes.battle.AI.plugins.smartMutateMoveScorePairsPlugin`

- `mirrorChallengeAI:new()`

<details><summary>Instance / other functions (1)</summary>

- `AI:getBattleGoldBountyMultiplier()`

</details>

### regularMonsterAI

`classes.battle.AI.regularMonsterAI`

- returns `t`
- requires: `classes.battle.AI.abstractMonsterAI`

- `regularMonsterAI:new()`

### regularTrainerAI

`classes.battle.AI.regularTrainerAI`

- returns `t`
- requires: `classes.battle.AI.abstractTrainerAI`

- `regularTrainerAI:new()`

<details><summary>Instance / other functions (2)</summary>

- `AI:shouldTryToAlwaysHaveStrongestMonsterInBattle()`
- `AI:mutateMoveScorePairs(_moveScorePairs)`

</details>

### smarterMonsterAI

`classes.battle.AI.smarterMonsterAI`

- returns `t`
- requires: `classes.battle.AI.abstractMonsterAI`, `classes.battle.AI.plugins.smartMutateMoveScorePairsPlugin`

- `smarterMonsterAI:new()`

### smarterTrainerAI

`classes.battle.AI.smarterTrainerAI`

- returns `t`
- requires: `classes.battle.AI.abstractTrainerAI`, `classes.battle.AI.plugins.smartMutateMoveScorePairsPlugin`

- `smarterTrainerAI:new()`

<details><summary>Instance / other functions (1)</summary>

- `AI:shouldTryToAlwaysHaveStrongestMonsterInBattle()`

</details>

# classes.milestones

Coromon 1.5.4. 22 module(s). [Back to index](../README.md)

[BREW_SCENTS](#brew_scents), [CATCH_MONSTERS](#catch_monsters), [CATCH_PERFECT_MONSTERS](#catch_perfect_monsters), [CATCH_POTENT_MONSTERS](#catch_potent_monsters), [CONSUME_FRUIT](#consume_fruit), [CONSUME_RECALL](#consume_recall), [CONSUME_SCENTS](#consume_scents), [DEAL_DAMAGE](#deal_damage), [DISCOVER_MONSTERS](#discover_monsters), [DISCOVER_PERFECT_MONSTERS](#discover_perfect_monsters), [DISCOVER_POTENT_MONSTERS](#discover_potent_monsters), [EVOLVE_MONSTERS](#evolve_monsters), [HARVEST_FRUIT](#harvest_fruit), [Milestone](#milestone), [REACH_LEVEL](#reach_level), [REROLL_POTENTIAL](#reroll_potential), [REROLL_TRAIT](#reroll_trait), [SWAP_SPINNERS](#swap_spinners), [USE_ATTRACT_MODULE](#use_attract_module), [USE_REPEL_MODULE](#use_repel_module), [WIN_BATTLE](#win_battle), [WIN_BATTLE_TRAINER](#win_battle_trainer)

### BREW_SCENTS

`classes.milestones.BREW_SCENTS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `BREW_SCENTS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### CATCH_MONSTERS

`classes.milestones.CATCH_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `CATCH_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (3)</summary>

- `milestone:getStages()`
- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### CATCH_PERFECT_MONSTERS

`classes.milestones.CATCH_PERFECT_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `CATCH_PERFECT_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### CATCH_POTENT_MONSTERS

`classes.milestones.CATCH_POTENT_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `CATCH_POTENT_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### CONSUME_FRUIT

`classes.milestones.CONSUME_FRUIT`

- returns `t`
- requires: `classes.milestones.Milestone`

- `CONSUME_FRUIT:new(_UID)`

<details><summary>Instance / other functions (3)</summary>

- `milestone:getStages()`
- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### CONSUME_RECALL

`classes.milestones.CONSUME_RECALL`

- returns `t`
- requires: `classes.milestones.Milestone`

- `CONSUME_RECALL:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### CONSUME_SCENTS

`classes.milestones.CONSUME_SCENTS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `CONSUME_SCENTS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### DEAL_DAMAGE

`classes.milestones.DEAL_DAMAGE`

- returns `t`
- requires: `classes.milestones.Milestone`

- `DEAL_DAMAGE:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### DISCOVER_MONSTERS

`classes.milestones.DISCOVER_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `DISCOVER_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### DISCOVER_PERFECT_MONSTERS

`classes.milestones.DISCOVER_PERFECT_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `DISCOVER_PERFECT_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### DISCOVER_POTENT_MONSTERS

`classes.milestones.DISCOVER_POTENT_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `DISCOVER_POTENT_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### EVOLVE_MONSTERS

`classes.milestones.EVOLVE_MONSTERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `EVOLVE_MONSTERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### HARVEST_FRUIT

`classes.milestones.HARVEST_FRUIT`

- returns `t`
- requires: `classes.milestones.Milestone`

- `HARVEST_FRUIT:new(_UID)`

<details><summary>Instance / other functions (3)</summary>

- `milestone:getStages()`
- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### Milestone

`classes.milestones.Milestone`

- returns `t`

- `Milestone:new(_UID)`

<details><summary>Instance / other functions (11)</summary>

- `milestone:getUID()`
- `milestone:getName()`
- `milestone:getStages()`
- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`
- `milestone:getAmountOfStages()`
- `milestone:getAmountOfStagesAchievedForPoints(_currentPoints)`
- `milestone:getStageIndexForPoints(_currentPoints)`
- `milestone:getDescriptionForStage(_stageIndex)`
- `milestone:getRewardForStage(_stageIndex)`
- `milestone:getPointsRequiredForStage(_stageIndex)`

</details>

### REACH_LEVEL

`classes.milestones.REACH_LEVEL`

- returns `t`
- requires: `classes.milestones.Milestone`

- `REACH_LEVEL:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getStages()`
- `milestone:calculatePoints()`

</details>

### REROLL_POTENTIAL

`classes.milestones.REROLL_POTENTIAL`

- returns `t`
- requires: `classes.milestones.Milestone`

- `REROLL_POTENTIAL:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### REROLL_TRAIT

`classes.milestones.REROLL_TRAIT`

- returns `t`
- requires: `classes.milestones.Milestone`

- `REROLL_TRAIT:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### SWAP_SPINNERS

`classes.milestones.SWAP_SPINNERS`

- returns `t`
- requires: `classes.milestones.Milestone`

- `SWAP_SPINNERS:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### USE_ATTRACT_MODULE

`classes.milestones.USE_ATTRACT_MODULE`

- returns `t`
- requires: `classes.milestones.Milestone`

- `USE_ATTRACT_MODULE:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### USE_REPEL_MODULE

`classes.milestones.USE_REPEL_MODULE`

- returns `t`
- requires: `classes.milestones.Milestone`

- `USE_REPEL_MODULE:new(_UID)`

<details><summary>Instance / other functions (2)</summary>

- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### WIN_BATTLE

`classes.milestones.WIN_BATTLE`

- returns `t`
- requires: `classes.milestones.Milestone`

- `WIN_BATTLE:new(_UID)`

<details><summary>Instance / other functions (3)</summary>

- `milestone:getStages()`
- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

### WIN_BATTLE_TRAINER

`classes.milestones.WIN_BATTLE_TRAINER`

- returns `t`
- requires: `classes.milestones.Milestone`

- `WIN_BATTLE_TRAINER:new(_UID)`

<details><summary>Instance / other functions (3)</summary>

- `milestone:getStages()`
- `milestone:getUnrestrictedStage()`
- `milestone:calculatePoints()`

</details>

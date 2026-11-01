# classes.spawnables.behavior

Coromon 1.5.4. 24 module(s). [Back to index](../README.md)

[SurfboardFishingBehavior](#surfboardfishingbehavior), [abstractBehaveTimerBehavior](#abstractbehavetimerbehavior), [abstractBehavior](#abstractbehavior), [alonBendingBehavior](#alonbendingbehavior), [attackingLumonBehavior](#attackinglumonbehavior), [battleBehavior](#battlebehavior), [birdInAreaBehavior](#birdinareabehavior), [bodySlamBehavior](#bodyslambehavior), [debugTurnWithRandomIntervalBehavior](#debugturnwithrandomintervalbehavior), [electricBeetleLabBehavior](#electricbeetlelabbehavior), [fadeInBehavior](#fadeinbehavior), [fadeOutBehavior](#fadeoutbehavior), [jumpBehavior](#jumpbehavior), [jumpTurnBehavior](#jumpturnbehavior), [kerrinHammeringBehavior](#kerrinhammeringbehavior), [leoPickingBehavior](#leopickingbehavior), [panicJumpBehavior](#panicjumpbehavior), [pathBehavior](#pathbehavior), [perrinHammeringBehavior](#perrinhammeringbehavior), [plantSeedsInFloatingPotsBehavior](#plantseedsinfloatingpotsbehavior), [standBehavior](#standbehavior), [testPushModuleBehavior](#testpushmodulebehavior), [turnBehavior](#turnbehavior), [wanderBehavior](#wanderbehavior)

### SurfboardFishingBehavior

`classes.spawnables.behavior.SurfboardFishingBehavior`

- returns `panicJumpBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `SurfboardFishingBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### abstractBehaveTimerBehavior

`classes.spawnables.behavior.abstractBehaveTimerBehavior`

- returns `abstractBehaveTimerBehavior`
- requires: `classes.spawnables.behavior.abstractBehavior`

- `abstractBehaveTimerBehavior:new(class, _config, _name)`

<details><summary>Instance / other functions (5)</summary>

- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`
- `behavior:getBehaveTimerDuration()`
- `behavior:doBehaveTimerActionAfterDelay()`
- `behavior:startBehaving()`
- `behavior:stopBehaving()`

</details>

### abstractBehavior

`classes.spawnables.behavior.abstractBehavior`

- returns `abstractBehavior`

- `abstractBehavior:new(class, _config, _name)`

<details><summary>Instance / other functions (10)</summary>

- `behavior:getName()`
- `behavior:getConfig()`
- `behavior:setBehaviorLocation(_tileX, _tileY)`
- `behavior:getTileX()`
- `behavior:getTileY()`
- `behavior:startBehaving()`
- `behavior:stopBehaving()`
- `behavior:onSetBehavior()`
- `behavior:onUnsetBehavior()`
- `behavior:calculateCullingOptions()`

</details>

### alonBendingBehavior

`classes.spawnables.behavior.alonBendingBehavior`

- returns `AlonBendingBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `alonBendingBehavior:new(class, _config)`

<details><summary>Instance / other functions (4)</summary>

- `behavior:startBehaving()`
- `behavior:stopBehaving()`
- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### attackingLumonBehavior

`classes.spawnables.behavior.attackingLumonBehavior`

- returns `battleBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `attackingLumonBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### battleBehavior

`classes.spawnables.behavior.battleBehavior`

- returns `battleBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `battleBehavior:new(class, _config)`

<details><summary>Instance / other functions (3)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`
- `behavior:tryHitPlayerSpawnable()`

</details>

### birdInAreaBehavior

`classes.spawnables.behavior.birdInAreaBehavior`

- returns `birdInAreaBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `birdInAreaBehavior:new(class, _config)`

<details><summary>Instance / other functions (3)</summary>

- `behavior:calculateCullingOptions()`
- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### bodySlamBehavior

`classes.spawnables.behavior.bodySlamBehavior`

- returns `bodySlamBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `bodySlamBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### debugTurnWithRandomIntervalBehavior

`classes.spawnables.behavior.debugTurnWithRandomIntervalBehavior`

- returns `debugTurnWithRandomIntervalBehavior`
- requires: `classes.spawnables.behavior.turnBehavior`

- `debugTurnWithRandomIntervalBehavior:new(class, _config)`

<details><summary>Instance / other functions (1)</summary>

- `behavior:getBehaveTimerDuration()`

</details>

### electricBeetleLabBehavior

`classes.spawnables.behavior.electricBeetleLabBehavior`

- returns `battleBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `electricBeetleLabBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### fadeInBehavior

`classes.spawnables.behavior.fadeInBehavior`

- returns `fadeInBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `fadeInBehavior:new(class, _config)`

<details><summary>Instance / other functions (3)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`
- `behavior:startBehaving()`

</details>

### fadeOutBehavior

`classes.spawnables.behavior.fadeOutBehavior`

- returns `fadeOutBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `fadeOutBehavior:new(class, _config)`

<details><summary>Instance / other functions (3)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`
- `behavior:startBehaving()`

</details>

### jumpBehavior

`classes.spawnables.behavior.jumpBehavior`

- returns `jumpBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `jumpBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### jumpTurnBehavior

`classes.spawnables.behavior.jumpTurnBehavior`

- returns `jumpTurnBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `jumpTurnBehavior:new(class, _config)`

<details><summary>Instance / other functions (1)</summary>

- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### kerrinHammeringBehavior

`classes.spawnables.behavior.kerrinHammeringBehavior`

- returns `kerrinHammeringBehavior`
- requires: `classes.spawnables.behavior.abstractBehavior`

- `kerrinHammeringBehavior:new(class, _config)`

<details><summary>Instance / other functions (5)</summary>

- `behavior:onSetBehavior()`
- `behavior:onUnsetBehavior()`
- `behavior:calculateCullingOptions()`
- `behavior:startBehaving()`
- `behavior:stopBehaving()`

</details>

### leoPickingBehavior

`classes.spawnables.behavior.leoPickingBehavior`

- returns `leoPickingBehavior`
- requires: `classes.spawnables.behavior.abstractBehavior`

- `leoPickingBehavior:new(class, _config)`

<details><summary>Instance / other functions (5)</summary>

- `behavior:onSetBehavior()`
- `behavior:onUnsetBehavior()`
- `behavior:calculateCullingOptions()`
- `behavior:startBehaving()`
- `behavior:stopBehaving()`

</details>

### panicJumpBehavior

`classes.spawnables.behavior.panicJumpBehavior`

- returns `panicJumpBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `panicJumpBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### pathBehavior

`classes.spawnables.behavior.pathBehavior`

- returns `pathBehavior`
- requires: `classes.spawnables.behavior.abstractBehavior`

- `pathBehavior:new(class, _config)`

<details><summary>Instance / other functions (4)</summary>

- `behavior:calculateCullingOptions()`
- `behavior:startBehaving()`
- `self.onUpdateFunction()`
- `behavior:stopBehaving()`

</details>

### perrinHammeringBehavior

`classes.spawnables.behavior.perrinHammeringBehavior`

- returns `perrinHammeringBehavior`
- requires: `classes.spawnables.behavior.abstractBehavior`

- `perrinHammeringBehavior:new(class, _config)`

<details><summary>Instance / other functions (5)</summary>

- `behavior:onSetBehavior()`
- `behavior:onUnsetBehavior()`
- `behavior:calculateCullingOptions()`
- `behavior:startBehaving()`
- `behavior:stopBehaving()`

</details>

### plantSeedsInFloatingPotsBehavior

`classes.spawnables.behavior.plantSeedsInFloatingPotsBehavior`

- returns `plantSeedsInFloatingPotsBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `plantSeedsInFloatingPotsBehavior:new(class, _config)`

<details><summary>Instance / other functions (3)</summary>

- `behavior:startBehaving()`
- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### standBehavior

`classes.spawnables.behavior.standBehavior`

- returns `standBehavior`
- requires: `classes.spawnables.behavior.abstractBehavior`

- `standBehavior:new(class, _config)`

<details><summary>Instance / other functions (1)</summary>

- `behavior:startBehaving()`

</details>

### testPushModuleBehavior

`classes.spawnables.behavior.testPushModuleBehavior`

- returns `testPushModuleBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `testPushModuleBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:getBehaveTimerDuration()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### turnBehavior

`classes.spawnables.behavior.turnBehavior`

- returns `turnBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `turnBehavior:new(class, _config)`

<details><summary>Instance / other functions (1)</summary>

- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

### wanderBehavior

`classes.spawnables.behavior.wanderBehavior`

- returns `wanderBehavior`
- requires: `classes.spawnables.behavior.abstractBehaveTimerBehavior`

- `wanderBehavior:new(class, _config)`

<details><summary>Instance / other functions (2)</summary>

- `behavior:calculateCullingOptions()`
- `behavior:onBehaveTimerAction(_repeatBehaveTimer)`

</details>

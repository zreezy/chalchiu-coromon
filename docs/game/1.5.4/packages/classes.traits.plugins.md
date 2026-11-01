# classes.traits.plugins

Coromon 1.5.4. 19 module(s). [Back to index](../README.md)

[activeCureConditionTraitPlugin](#activecureconditiontraitplugin), [activeIntervalTraitPlugin](#activeintervaltraitplugin), [activeMonsterUsableIntervalTraitPlugin](#activemonsterusableintervaltraitplugin), [activeMonsterUsableTraitPlugin](#activemonsterusabletraitplugin), [activeTraitPlugin](#activetraitplugin), [activeWorldIntervalTraitPlugin](#activeworldintervaltraitplugin), [activeWorldTraitPlugin](#activeworldtraitplugin), [passiveOnActiveMonsterSpriteFaintedTraitPlugin](#passiveonactivemonsterspritefaintedtraitplugin), [passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin](#passiveonbeforefirstroundoraftermonsterspritespawnedtraitplugin), [passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin](#passiveonbeforeroundorafterdamageinbattlebelowhealthpercentagetraitplugin), [passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin](#passiveonhitafterpartialskillmoveapplystatusestraitplugin), [passiveOnHitAfterPartialSkillMoveReflectDamageTraitPlugin](#passiveonhitafterpartialskillmovereflectdamagetraitplugin), [passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin](#passiveonhitafterpartialskillmovereflectstatusestraitplugin), [passiveOnHitAfterPartialSkillMoveTraitPlugin](#passiveonhitafterpartialskillmovetraitplugin), [passiveOnOpponentMonsterSpritesFaintedTraitPlugin](#passiveonopponentmonsterspritesfaintedtraitplugin), [passivePreventAndRemoveWeatherEffectTraitPlugin](#passivepreventandremoveweathereffecttraitplugin), [passiveShowTraitIndicatorForWeatherEffectTraitPlugin](#passiveshowtraitindicatorforweathereffecttraitplugin), [passiveStartWeatherEffectTraitPlugin](#passivestartweathereffecttraitplugin), [passiveTraitPlugin](#passivetraitplugin)

### activeCureConditionTraitPlugin

`classes.traits.plugins.activeCureConditionTraitPlugin`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`

- `activeCureConditionTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (4)</summary>

- `_trait:isConditionToCure(_condition)`
- `_trait:getOnBeforeUseNoConditionMessage()`
- `_trait:onBeforeMonsterUseMessage(_monster)`
- `_trait:onMonsterUseInTallMonsterButtonOverlay(_tallMonsterButton, _closeTallMonsterButtonOverlay)`

</details>

### activeIntervalTraitPlugin

`classes.traits.plugins.activeIntervalTraitPlugin`

- returns `t`
- requires: `classes.world.effects.traits.traitIntervalWorldEffect`

- `activeIntervalTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (3)</summary>

- `_trait:getTraitIntervalInSeconds()`
- `_trait:onBeforeActivate()`
- `_trait:registerTraitIntervalBattleEffect()`

</details>

### activeMonsterUsableIntervalTraitPlugin

`classes.traits.plugins.activeMonsterUsableIntervalTraitPlugin`

- returns `t`

- `activeMonsterUsableIntervalTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (1)</summary>

- `_trait:onAfterMonsterUseInTallMonsterButtonOverlay()`

</details>

### activeMonsterUsableTraitPlugin

`classes.traits.plugins.activeMonsterUsableTraitPlugin`

- returns `t`
- requires: `classes.interface.overlays.TallMonsterButtonOverlay`

- `activeMonsterUsableTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (7)</summary>

- `_trait:onBeforeMonsterUseMessage(_monster)`
- `_trait:onMonsterUseInTallMonsterButtonOverlay(_tallMonsterButton, _closeTallMonsterButtonOverlay)`
- `_trait:onAfterMonsterUseInTallMonsterButtonOverlay()`
- `_trait:shouldDisableTallMonsterButtonInOverlay(_monster)`
- `_trait:getTallMonsterButtonOverlayMode()`
- `_trait:onBeforeActivate()`
- `_trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### activeTraitPlugin

`classes.traits.plugins.activeTraitPlugin`

- returns `t`
- requires: `classes.interface.overlays.MessagePopup`

- `activeTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (8)</summary>

- `_trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`
- `_trait:getMonsterSpeaker()`
- `class:getSpeakerName()`
- `class:getSpeakerHead(_parent)`
- `class:getSpeakerType()`
- `class:getSpeakerStyle()`
- `_trait:onBeforeActivate()`
- `_trait:tryActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### activeWorldIntervalTraitPlugin

`classes.traits.plugins.activeWorldIntervalTraitPlugin`

- returns `t`

- `activeWorldIntervalTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (1)</summary>

- `_trait:onActivateInWorld()`

</details>

### activeWorldTraitPlugin

`classes.traits.plugins.activeWorldTraitPlugin`

- returns `t`

- `activeWorldTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (2)</summary>

- `_trait:onActivateInWorld()`
- `_trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### passiveOnActiveMonsterSpriteFaintedTraitPlugin

`classes.traits.plugins.passiveOnActiveMonsterSpriteFaintedTraitPlugin`

- returns `t`

- `passiveOnActiveMonsterSpriteFaintedTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (3)</summary>

- `_trait:onActiveMonsterSpriteFainted(_monsterSprite, _onComplete)`
- `_trait:onAfterMonsterSpritesRemovedFromBattlePriority()`
- `_trait:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`

</details>

### passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin

`classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- returns `t`

- `passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (5)</summary>

- `_trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`
- `_trait:onBeforeRoundPriority()`
- `_trait:onBeforeRound(_onComplete, _battleEffects)`
- `_trait:onAfterMonsterSpriteSpawnedPriority()`
- `_trait:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`

</details>

### passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin

`classes.traits.plugins.passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin`

- returns `t`

- `passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (6)</summary>

- `_trait:onBelowHealthPercentageTriggered(_monsterSpriteInBattle, _onComplete)`
- `_trait:tryGetTriggerHealthPercentage()`
- `_trait:onEnterBattle(_onComplete)`
- `_trait:onBeforeRoundPriority()`
- `_trait:onBeforeRound(_onComplete, _battleEffects)`
- `_trait:onAfterDamageInBattle(_onComplete, _monsterSprite)`

</details>

### passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin

`classes.traits.plugins.passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin`

- returns `t`
- requires: `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- `passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (3)</summary>

- `_trait:tryCreateMonsterSpriteStatuses(_monsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `_trait:onAfterPartialSkillMovePriority()`
- `_trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`

</details>

### passiveOnHitAfterPartialSkillMoveReflectDamageTraitPlugin

`classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectDamageTraitPlugin`

- returns `t`
- requires: `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- `passiveOnHitAfterPartialSkillMoveReflectDamageTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (4)</summary>

- `_trait:tryCalculateReflectedDamage(_skillData, _skillDamage, _activeMonsterSprite, _targetMonsterSprite, _didCriticalHit)`
- `_trait:getOnHitAfterPartialSkillMoveText(_activeMonsterSprite, _targetMonsterSprite)`
- `_trait:onAfterPartialSkillMovePriority()`
- `_trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`

</details>

### passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin

`classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- returns `t`
- requires: `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- `passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (4)</summary>

- `_trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `_trait:onHitAfterPartialSkillMoveIfNoReflectedStatuses(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`
- `_trait:onAfterPartialSkillMovePriority()`
- `_trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`

</details>

### passiveOnHitAfterPartialSkillMoveTraitPlugin

`classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- returns `t`

- `passiveOnHitAfterPartialSkillMoveTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (2)</summary>

- `_trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`
- `_trait:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### passiveOnOpponentMonsterSpritesFaintedTraitPlugin

`classes.traits.plugins.passiveOnOpponentMonsterSpritesFaintedTraitPlugin`

- returns `t`

- `passiveOnOpponentMonsterSpritesFaintedTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (3)</summary>

- `_trait:onOpponentMonsterSpritesFaintedAndOpponentParticipantStillHasMonsterSprites(_monsterSprite, _opponentMonsterSpritesFainted, _onComplete)`
- `_trait:onAfterMonsterSpritesRemovedFromBattlePriority()`
- `_trait:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`

</details>

### passivePreventAndRemoveWeatherEffectTraitPlugin

`classes.traits.plugins.passivePreventAndRemoveWeatherEffectTraitPlugin`

- returns `t`
- requires: `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `passivePreventAndRemoveWeatherEffectTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (5)</summary>

- `_trait:isWeatherEffectToPrevent(_weatherEffect)`
- `_trait:onWeatherEffectPreventedText(_monsterSprite)`
- `_trait:onWeatherEffectRemovedText(_monsterSprite)`
- `_trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`
- `_trait:onBeforeApplyWeatherEffect(_onSkipWeatherEffect, _onContinue, _weatherEffect)`

</details>

### passiveShowTraitIndicatorForWeatherEffectTraitPlugin

`classes.traits.plugins.passiveShowTraitIndicatorForWeatherEffectTraitPlugin`

- returns `t`

- `passiveShowTraitIndicatorForWeatherEffectTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (5)</summary>

- `_trait:shouldShowTraitIndicatorForWeatherEffect(_weatherEffect)`
- `_trait:onAfterApplyWeatherEffectPriority()`
- `_trait:onAfterApplyWeatherEffect(_onComplete, _weatherEffect)`
- `_trait:onAfterMonsterSpriteSpawnedPriority()`
- `_trait:onAfterMonsterSpriteSpawned(_onComplete, _battleEffects, _monsterSprite)`

</details>

### passiveStartWeatherEffectTraitPlugin

`classes.traits.plugins.passiveStartWeatherEffectTraitPlugin`

- returns `t`
- requires: `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `passiveStartWeatherEffectTraitPlugin:install(_trait, _monster)`

<details><summary>Instance / other functions (5)</summary>

- `_trait:createWeatherEffect(_turns)`
- `_trait:isWeatherEffectToPersist(_weatherEffect)`
- `_trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`
- `_trait:shouldBlockWeatherEffectRemoval(_weatherEffect)`
- `_trait:onBeforeApplyWeatherEffect(_onSkipWeatherEffect, _onContinue, _weatherEffect)`

</details>

### passiveTraitPlugin

`classes.traits.plugins.passiveTraitPlugin`

- returns `t`

- `passiveTraitPlugin:install(_trait, _monster)`

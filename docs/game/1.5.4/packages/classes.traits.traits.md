# classes.traits.traits

Coromon 1.5.4. 117 module(s). [Back to index](../README.md)

[ACCURATE](#accurate), [ACUPUNCTURE](#acupuncture), [AFTERBURNER](#afterburner), [AMPLIFIED](#amplified), [ANTARCTIC](#antarctic), [ANTIDOTE](#antidote), [ANTIFUNGAL](#antifungal), [BACKUP_PLAN](#backup_plan), [BRAVE](#brave), [BRIGHT_LIGHT](#bright_light), [CAFFEINATED](#caffeinated), [CLEANSE](#cleanse), [CLEAN_RETREAT](#clean_retreat), [CLEAR_SKIES](#clear_skies), [COMEBACK](#comeback), [CONDUCTOR](#conductor), [CONSERVER](#conserver), [CONTAINED_POWER](#contained_power), [COOL_BODY](#cool_body), [COSMIC](#cosmic), [COWARD](#coward), [CREEPING_STARE](#creeping_stare), [CRIPPLER](#crippler), [DARK_ATMOSPHERE](#dark_atmosphere), [DIMENSIONAL_EYE](#dimensional_eye), [DIRT_COAT](#dirt_coat), [DISRUPTING_AURA](#disrupting_aura), [DRY_WIND](#dry_wind), [EMPATHETIC](#empathetic), [ESCAPIST](#escapist), [FAST_LEARNER](#fast_learner), [FAST_METABOLISM](#fast_metabolism), [FEARLESS](#fearless), [FLARE_INTAKE](#flare_intake), [FROST_LAYER](#frost_layer), [FULLY_RESTED](#fully_rested), [FUSEBOX](#fusebox), [GLACIAL_AFFINITY](#glacial_affinity), [GOOD_AIM](#good_aim), [GOURMAND](#gourmand), [GRAVITY_PULL](#gravity_pull), [GULLIBLE](#gullible), [HARDHEADED](#hardheaded), [HOARDER](#hoarder), [HOT_HEADED](#hot_headed), [HUMIDIFIER](#humidifier), [IMPATIENT](#impatient), [INNER_FIRE](#inner_fire), [INTELLIGENT](#intelligent), [INVERSE](#inverse), [KINDRED_SOUL](#kindred_soul), [LOW_DENSITY](#low_density), [LUCKY](#lucky), [MAGIC_LAYER](#magic_layer), [MAGNETIC](#magnetic), [MENACING](#menacing), [MOLTER](#molter), [MOTIVATED](#motivated), [NANO_SKIN](#nano_skin), [NEUTRALIZER](#neutralizer), [NIMBLE](#nimble), [NINJA_SENSE](#ninja_sense), [NOT_ALLOWED](#not_allowed), [NURSE](#nurse), [OVERCLOCKER](#overclocker), [PATDOWN](#patdown), [PEP_TALK](#pep_talk), [POLISHED_BODY](#polished_body), [POLLUTER](#polluter), [PREPARED](#prepared), [RADIATOR](#radiator), [REBIRTH](#rebirth), [RECONSTITUTION](#reconstitution), [REGURGITATOR](#regurgitator), [REIGNITE](#reignite), [RESISTANT](#resistant), [RESTLESS](#restless), [ROBBER](#robber), [SCRAPPER](#scrapper), [SHARP_CLAWS](#sharp_claws), [SHINY](#shiny), [SHOCK_ABSORBER](#shock_absorber), [SHORT_FUSED](#short_fused), [SLIPPERY](#slippery), [SNOWMAN](#snowman), [SOOTHING_AURA](#soothing_aura), [SOUL_EATER](#soul_eater), [SPECIALIST](#specialist), [SPIKED_BODY](#spiked_body), [STATIC_BODY](#static_body), [STEADY](#steady), [STEAM_LAYER](#steam_layer), [STICKY_LAYER](#sticky_layer), [STINKY](#stinky), [STOIC](#stoic), [STRATEGIST](#strategist), [SUGAR_RUSH](#sugar_rush), [SUPERSENSORY](#supersensory), [TACTICAL_RETREAT](#tactical_retreat), [THERMOGENESIS](#thermogenesis), [THICK_SKIN](#thick_skin), [TITAN_ELECTRIC](#titan_electric), [TITAN_FIRE](#titan_fire), [TITAN_GHOST](#titan_ghost), [TITAN_ICE](#titan_ice), [TITAN_SAND](#titan_sand), [TITAN_WATER](#titan_water), [TOUGH_FEET](#tough_feet), [TOXIC_SKIN](#toxic_skin), [VACCINATED](#vaccinated), [VEGETARIAN](#vegetarian), [VENGEFUL](#vengeful), [VIGILANT](#vigilant), [WATER_COOLED](#water_cooled), [WEATHERPROOF](#weatherproof), [WET_COAT](#wet_coat), [ZEALOUS](#zealous)

### ACCURATE

`classes.traits.traits.ACCURATE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `ACCURATE:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`

</details>

### ACUPUNCTURE

`classes.traits.traits.ACUPUNCTURE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.activeTraitPlugin`, `classes.traits.plugins.activeIntervalTraitPlugin`, `classes.traits.plugins.activeMonsterUsableTraitPlugin`, `classes.traits.plugins.activeMonsterUsableIntervalTraitPlugin`, `classes.traits.plugins.activeCureConditionTraitPlugin`

- `ACUPUNCTURE:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:isConditionToCure(_condition)`
- `trait:getOnBeforeUseNoConditionMessage()`
- `trait:getTraitIntervalInSeconds()`
- `trait:onAfterParticipantWonPriority()`
- `trait:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### AFTERBURNER

`classes.traits.traits.AFTERBURNER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnActiveMonsterSpriteFaintedTraitPlugin`, `classes.traits.plugins.passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin`

- `AFTERBURNER:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:onActiveMonsterSpriteFainted(_monsterSprite, _onComplete)`
- `trait:tryGetTriggerHealthPercentage()`
- `trait:onBelowHealthPercentageTriggered(_monsterSpriteInBattle, _onComplete)`
- `trait:tryBurnOpponentsAndOptionallyApplyStatBoost(_monsterSprite, _onComplete)`

</details>

### AMPLIFIED

`classes.traits.traits.AMPLIFIED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `AMPLIFIED:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

### ANTARCTIC

`classes.traits.traits.ANTARCTIC`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveStartWeatherEffectTraitPlugin`

- `ANTARCTIC:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:createWeatherEffect(_turns)`
- `trait:isWeatherEffectToPersist(_weatherEffect)`

</details>

### ANTIDOTE

`classes.traits.traits.ANTIDOTE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.activeTraitPlugin`, `classes.traits.plugins.activeIntervalTraitPlugin`, `classes.traits.plugins.activeMonsterUsableTraitPlugin`, `classes.traits.plugins.activeMonsterUsableIntervalTraitPlugin`, `classes.traits.plugins.activeCureConditionTraitPlugin`

- `ANTIDOTE:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:isConditionToCure(_condition)`
- `trait:getOnBeforeUseNoConditionMessage()`
- `trait:getTraitIntervalInSeconds()`
- `trait:onAfterParticipantWonPriority()`
- `trait:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### ANTIFUNGAL

`classes.traits.traits.ANTIFUNGAL`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.activeTraitPlugin`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.confirmPopupBuilder`

- `ANTIFUNGAL:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onBeforeActivate()`
- `trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### BACKUP_PLAN

`classes.traits.traits.BACKUP_PLAN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `BACKUP_PLAN:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:onEnterBattle(_onComplete)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterDamageInBattle(_onComplete, _monsterSprite)`

</details>

### BRAVE

`classes.traits.traits.BRAVE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `BRAVE:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:onBeforeApplyMonsterSpriteStatus(_onSkipMonsterSpriteStatus, _onComplete, _monsterSprite, _status)`
- `trait:shouldBlockCondition(_monster, _condition)`
- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### BRIGHT_LIGHT

`classes.traits.traits.BRIGHT_LIGHT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passivePreventAndRemoveWeatherEffectTraitPlugin`, `classes.world.effects.plugins.worldEffectPlugin`, `classes.world.effects.plugins.traitWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenTraitPopupWorldEffectPlugin`

- `BRIGHT_LIGHT:new(_monster)`

<details><summary>Instance / other functions (6)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`
- `trait:isWeatherEffectToPrevent(_weatherEffect)`
- `trait:onWeatherEffectPreventedText(_monsterSprite)`
- `trait:onWeatherEffectRemovedText(_monsterSprite)`
- `trait:shouldShowWorldEffectButton()`
- `trait:shouldShowBigWorldDarknessFlashlight()`

</details>

### CAFFEINATED

`classes.traits.traits.CAFFEINATED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `CAFFEINATED:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:mutateBaseStat(_monster, _statUID, _statValue)`
- `trait:shouldBlockCondition(_monster, _condition)`
- `trait:onBeforeTurnPriority(_preparedMove)`
- `trait:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`

</details>

### CLEANSE

`classes.traits.traits.CLEANSE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `CLEANSE:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### CLEAN_RETREAT

`classes.traits.traits.CLEAN_RETREAT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `CLEAN_RETREAT:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterMonsterSpriteUnspawned(_onComplete, _monsterSprite)`

</details>

### CLEAR_SKIES

`classes.traits.traits.CLEAR_SKIES`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passivePreventAndRemoveWeatherEffectTraitPlugin`

- `CLEAR_SKIES:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:isWeatherEffectToPrevent(_weatherEffect)`
- `trait:onWeatherEffectPreventedText(_monsterSprite)`
- `trait:onWeatherEffectRemovedText(_monsterSprite)`
- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`
- `trait:onBeforeApplyEntryHazardEffect(_onSkipEntryHazardEffect, _onContinue, _entryHazard, _monsterSprite)`

</details>

### COMEBACK

`classes.traits.traits.COMEBACK`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin`

- `COMEBACK:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:tryGetTriggerHealthPercentage()`
- `trait:onBelowHealthPercentageTriggered(_monsterSpriteInBattle, _onComplete)`
- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

### CONDUCTOR

`classes.traits.traits.CONDUCTOR`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin`

- `CONDUCTOR:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:tryCreateMonsterSpriteStatuses(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`

</details>

### CONSERVER

`classes.traits.traits.CONSERVER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `CONSERVER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateEnergyCost(_skillData, _monster, _value)`
- `trait:mutateBaseStat(_monster, _statUID, _statValue)`

</details>

### CONTAINED_POWER

`classes.traits.traits.CONTAINED_POWER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `CONTAINED_POWER:new(_monster)`

<details><summary>Instance / other functions (6)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `trait:onBeforeTurnPriority(_preparedMove)`
- `trait:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### COOL_BODY

`classes.traits.traits.COOL_BODY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `COOL_BODY:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

### COSMIC

`classes.traits.traits.COSMIC`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `COSMIC:new(_monster, _constructor)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateStatBoostStatusPriority()`
- `trait:mutateStatBoostStatus(_statBoostStatus)`

</details>

### COWARD

`classes.traits.traits.COWARD`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin`

- `COWARD:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:tryCreateMonsterSpriteStatuses(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`

</details>

### CREEPING_STARE

`classes.traits.traits.CREEPING_STARE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `CREEPING_STARE:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`
- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`

</details>

### CRIPPLER

`classes.traits.traits.CRIPPLER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `CRIPPLER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onAfterApplyMonsterSpriteStatusPriority()`
- `trait:onAfterApplyMonsterSpriteStatus(_onComplete, _monsterSpriteStatus, _monsterSprite)`

</details>

### DARK_ATMOSPHERE

`classes.traits.traits.DARK_ATMOSPHERE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveStartWeatherEffectTraitPlugin`

- `DARK_ATMOSPHERE:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:createWeatherEffect(_turns)`
- `trait:isWeatherEffectToPersist(_weatherEffect)`

</details>

### DIMENSIONAL_EYE

`classes.traits.traits.DIMENSIONAL_EYE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveShowTraitIndicatorForWeatherEffectTraitPlugin`

- `DIMENSIONAL_EYE:new(_monster, _constructor)`

<details><summary>Instance / other functions (4)</summary>

- `trait:shouldShowTraitIndicatorForWeatherEffect(_weatherEffect)`
- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `trait:shouldCriticalHitPriority(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `trait:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`

</details>

### DIRT_COAT

`classes.traits.traits.DIRT_COAT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveShowTraitIndicatorForWeatherEffectTraitPlugin`

- `DIRT_COAT:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:shouldShowTraitIndicatorForWeatherEffect(_weatherEffect)`
- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

### DISRUPTING_AURA

`classes.traits.traits.DISRUPTING_AURA`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- `DISRUPTING_AURA:new(_monster, _constructor)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onAfterPartialSkillMovePriority()`
- `trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`

</details>

### DRY_WIND

`classes.traits.traits.DRY_WIND`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveStartWeatherEffectTraitPlugin`

- `DRY_WIND:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:createWeatherEffect(_turns)`
- `trait:isWeatherEffectToPersist(_weatherEffect)`

</details>

### EMPATHETIC

`classes.traits.traits.EMPATHETIC`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `EMPATHETIC:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:onAfterRecoverHealthInBattle(_onComplete, _monsterSprite, _recoveredHealth)`
- `trait:onAfterApplyMonsterSpriteStatusPriority()`
- `trait:onAfterApplyMonsterSpriteStatus(_onComplete, _monsterSpriteStatus, _monsterSprite)`

</details>

### ESCAPIST

`classes.traits.traits.ESCAPIST`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `ESCAPIST:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `trait:shouldAlwaysSucceedEscape(_monsterSprite)`
- `trait:onBeforeEscapeMoveSuccessPriority()`
- `trait:onBeforeEscapeMoveSuccess(_onComplete, _participant, _monsterSpriteWhichCausedSuccessfulEscape)`

</details>

### FAST_LEARNER

`classes.traits.traits.FAST_LEARNER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `FAST_LEARNER:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`

</details>

### FAST_METABOLISM

`classes.traits.traits.FAST_METABOLISM`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `FAST_METABOLISM:new(_monster, _constructor)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterFruitConsumed(_onComplete, _item, _monsterSprite)`

</details>

### FEARLESS

`classes.traits.traits.FEARLESS`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin`

- `FEARLESS:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:onBeforePlayerEscapeButtonMessage()`
- `trait:mutateBaseStat(_monster, _statUID, _statValue)`
- `trait:tryGetTriggerHealthPercentage()`
- `trait:onBelowHealthPercentageTriggered(_monsterSpriteInBattle, _onComplete)`

</details>

### FLARE_INTAKE

`classes.traits.traits.FLARE_INTAKE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin`

- `FLARE_INTAKE:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:tryCreateMonsterSpriteStatuses(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`

</details>

### FROST_LAYER

`classes.traits.traits.FROST_LAYER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `FROST_LAYER:new(_monster, _constructor)`

<details><summary>Instance / other functions (6)</summary>

- `trait:onEnterBattle(_onComplete)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterPartialSkillMovePriority()`
- `trait:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### FULLY_RESTED

`classes.traits.traits.FULLY_RESTED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `FULLY_RESTED:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:onSkillMovePriority()`
- `trait:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### FUSEBOX

`classes.traits.traits.FUSEBOX`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- `FUSEBOX:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:mutateRelativeDamage(_monster, _value)`
- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `trait:onAfterPartialSkillMovePriority()`
- `trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`

</details>

### GLACIAL_AFFINITY

`classes.traits.traits.GLACIAL_AFFINITY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `GLACIAL_AFFINITY:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

### GOOD_AIM

`classes.traits.traits.GOOD_AIM`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `GOOD_AIM:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### GOURMAND

`classes.traits.traits.GOURMAND`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `GOURMAND:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:mutateRecoverHealthConsumableEffect(_item, _monster, _value)`
- `trait:mutateRecoverEnergyConsumableEffect(_item, _monster, _value)`
- `trait:onAfterMonsterUsableItemUsed(_onComplete, _participant, _item, _targetMonsterSprites)`

</details>

### GRAVITY_PULL

`classes.traits.traits.GRAVITY_PULL`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `GRAVITY_PULL:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`

</details>

### GULLIBLE

`classes.traits.traits.GULLIBLE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `GULLIBLE:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:mutateStatBoostStatusPriority()`
- `trait:mutateStatBoostStatus(_statBoostStatus)`
- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`

</details>

### HARDHEADED

`classes.traits.traits.HARDHEADED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `HARDHEADED:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:mutateRecoilDamage(_recoilDamagedMonsterSprite, _value)`
- `trait:shouldBlockRecoilDamage(_monsterSprite, _recoilDamage)`
- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`

</details>

### HOARDER

`classes.traits.traits.HOARDER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `HOARDER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onAfterParticipantWonPriority()`
- `trait:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### HOT_HEADED

`classes.traits.traits.HOT_HEADED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `HOT_HEADED:new(_monster, _constructor)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

### HUMIDIFIER

`classes.traits.traits.HUMIDIFIER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveStartWeatherEffectTraitPlugin`

- `HUMIDIFIER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:createWeatherEffect(_turns)`
- `trait:isWeatherEffectToPersist(_weatherEffect)`

</details>

### IMPATIENT

`classes.traits.traits.IMPATIENT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnOpponentMonsterSpritesFaintedTraitPlugin`

- `IMPATIENT:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onOpponentMonsterSpritesFaintedAndOpponentParticipantStillHasMonsterSprites(_monsterSprite, _opponentMonsterSpritesFainted, _onComplete)`

</details>

### INNER_FIRE

`classes.traits.traits.INNER_FIRE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `INNER_FIRE:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:shouldBlockCondition(_monster, _condition)`
- `trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:onHitAfterPartialSkillMoveIfNoReflectedStatuses(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### INTELLIGENT

`classes.traits.traits.INTELLIGENT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `INTELLIGENT:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

### INVERSE

`classes.traits.traits.INVERSE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `INVERSE:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateStatBoostStatusPriority()`
- `trait:mutateStatBoostStatus(_statBoostStatus)`

</details>

### KINDRED_SOUL

`classes.traits.traits.KINDRED_SOUL`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `KINDRED_SOUL:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### LOW_DENSITY

`classes.traits.traits.LOW_DENSITY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveShowTraitIndicatorForWeatherEffectTraitPlugin`

- `LOW_DENSITY:new(_monster, _constructor)`

<details><summary>Instance / other functions (5)</summary>

- `trait:shouldShowTraitIndicatorForWeatherEffect(_weatherEffect)`
- `trait:shouldPreventMakingContact(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterPartialSkillMovePriority()`
- `trait:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### LUCKY

`classes.traits.traits.LUCKY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `LUCKY:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`

</details>

### MAGIC_LAYER

`classes.traits.traits.MAGIC_LAYER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `MAGIC_LAYER:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### MAGNETIC

`classes.traits.traits.MAGNETIC`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `MAGNETIC:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterMonsterUsableItemUsed(_onComplete, _participant, _item, _targetMonsterSprites)`

</details>

### MENACING

`classes.traits.traits.MENACING`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`, `classes.world.effects.plugins.worldEffectPlugin`, `classes.world.effects.plugins.traitWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenTraitPopupWorldEffectPlugin`

- `MENACING:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldShowWorldEffectButton()`
- `trait:shouldBlockZoneEncounter(_rolledMonsters)`
- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### MOLTER

`classes.traits.traits.MOLTER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `MOLTER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### MOTIVATED

`classes.traits.traits.MOTIVATED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnOpponentMonsterSpritesFaintedTraitPlugin`

- `MOTIVATED:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onOpponentMonsterSpritesFaintedAndOpponentParticipantStillHasMonsterSprites(_monsterSprite, _opponentMonsterSpritesFainted, _onComplete)`

</details>

### NANO_SKIN

`classes.traits.traits.NANO_SKIN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `NANO_SKIN:new(_monster, _constructor)`

<details><summary>Instance / other functions (4)</summary>

- `trait:shouldBlockCondition(_monster, _condition)`
- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### NEUTRALIZER

`classes.traits.traits.NEUTRALIZER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `NEUTRALIZER:new(_monster, _constructor)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### NIMBLE

`classes.traits.traits.NIMBLE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveTraitPlugin`

- `NIMBLE:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onAfterPartialSkillMovePriority()`
- `trait:onHitAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _skillDamage, _didCriticalHit)`

</details>

### NINJA_SENSE

`classes.traits.traits.NINJA_SENSE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `NINJA_SENSE:new(_monster, _constructor)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldMiss(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `trait:onAfterSkillMovePriority()`
- `trait:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### NOT_ALLOWED

`classes.traits.traits.NOT_ALLOWED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `NOT_ALLOWED:new(_monster)`

### NURSE

`classes.traits.traits.NURSE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.activeTraitPlugin`, `classes.traits.plugins.activeIntervalTraitPlugin`, `classes.traits.plugins.activeMonsterUsableTraitPlugin`, `classes.traits.plugins.activeMonsterUsableIntervalTraitPlugin`, `classes.interface.overlays.MessagePopup`

- `NURSE:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:getTraitIntervalInSeconds()`
- `trait:getTallMonsterButtonOverlayMode()`
- `trait:shouldDisableTallMonsterButtonInOverlay(_tallMonsterButtonMonster)`
- `trait:onBeforeMonsterUseMessage(_monster)`
- `trait:onMonsterUseInTallMonsterButtonOverlay(_tallMonsterButton, _closeTallMonsterButtonOverlay)`

</details>

### OVERCLOCKER

`classes.traits.traits.OVERCLOCKER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `OVERCLOCKER:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### PATDOWN

`classes.traits.traits.PATDOWN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `PATDOWN:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldShowOpponentHoldItem()`
- `trait:onEnterBattle(_onComplete)`
- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### PEP_TALK

`classes.traits.traits.PEP_TALK`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.activeTraitPlugin`, `classes.traits.plugins.activeIntervalTraitPlugin`, `classes.traits.plugins.activeMonsterUsableTraitPlugin`, `classes.traits.plugins.activeMonsterUsableIntervalTraitPlugin`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.TallMonsterButtonOverlay`

- `PEP_TALK:new(_monster)`

<details><summary>Instance / other functions (6)</summary>

- `trait:getTraitIntervalInSeconds()`
- `trait:getTallMonsterButtonOverlayMode()`
- `trait:shouldDisableTallMonsterButtonInOverlay(_tallMonsterButtonMonster)`
- `trait:onMonsterUseInTallMonsterButtonOverlay(_tallMonsterButton, _closeTallMonsterButtonOverlay)`
- `trait:onBeforeActivate()`
- `trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### POLISHED_BODY

`classes.traits.traits.POLISHED_BODY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `POLISHED_BODY:new(_monster)`

<details><summary>Instance / other functions (6)</summary>

- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:mutateStatBoostStatusPriority()`
- `trait:mutateStatBoostStatus(_statBoostStatus)`
- `trait:onBeforeApplyMonsterSpriteStatus(_onSkipMonsterSpriteStatus, _onComplete, _monsterSprite, _status)`
- `trait:onAfterApplyMonsterSpriteStatusPriority()`
- `trait:onAfterApplyMonsterSpriteStatus(_onComplete, _monsterSpriteStatus, _monsterSprite)`

</details>

### POLLUTER

`classes.traits.traits.POLLUTER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `POLLUTER:new(_monster, _constructor)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### PREPARED

`classes.traits.traits.PREPARED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `PREPARED:new(_monster)`

<details><summary>Instance / other functions (7)</summary>

- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`
- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:onBeforeTurnPriority(_preparedMove)`
- `trait:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### RADIATOR

`classes.traits.traits.RADIATOR`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `RADIATOR:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`

</details>

### REBIRTH

`classes.traits.traits.REBIRTH`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnActiveMonsterSpriteFaintedTraitPlugin`

- `REBIRTH:new(_monster)`

<details><summary>Instance / other functions (8)</summary>

- `trait:mutateXpEarnedPriority()`
- `trait:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`
- `trait:onAfterMonsterSpritesRemovedFromBattlePriority()`
- `trait:onActiveMonsterSpriteFainted(_monsterSprite, _onComplete)`
- `trait:evolveBack()`
- `trait:optionallyEvolveBack()`
- `trait:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`
- `trait:onAfterParticipantEscaped(_onComplete, _escapedParticipant)`

</details>

### RECONSTITUTION

`classes.traits.traits.RECONSTITUTION`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.activeTraitPlugin`, `classes.traits.plugins.activeIntervalTraitPlugin`, `classes.interface.overlays.MessagePopup`

- `RECONSTITUTION:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:getTraitIntervalInSeconds()`
- `trait:onBeforeActivate()`
- `trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### REGURGITATOR

`classes.traits.traits.REGURGITATOR`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `REGURGITATOR:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterFruitConsumed(_onComplete, _item, _monsterSprite)`

</details>

### REIGNITE

`classes.traits.traits.REIGNITE`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `REIGNITE:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`
- `trait:onBeforeTurnPriority(_preparedMove)`
- `trait:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`

</details>

### RESISTANT

`classes.traits.traits.RESISTANT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `RESISTANT:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### RESTLESS

`classes.traits.traits.RESTLESS`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `RESTLESS:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldBlockCondition(_monster, _condition)`
- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### ROBBER

`classes.traits.traits.ROBBER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `ROBBER:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateTrainerBattleGoldBounty(_payingParticipant, _value)`

</details>

### SCRAPPER

`classes.traits.traits.SCRAPPER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SCRAPPER:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### SHARP_CLAWS

`classes.traits.traits.SHARP_CLAWS`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SHARP_CLAWS:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

### SHINY

`classes.traits.traits.SHINY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`

- `SHINY:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### SHOCK_ABSORBER

`classes.traits.traits.SHOCK_ABSORBER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectDamageTraitPlugin`

- `SHOCK_ABSORBER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:tryCalculateReflectedDamage(_skillData, _skillDamage, _activeMonsterSprite, _targetMonsterSprite, _didCriticalHit)`

</details>

### SHORT_FUSED

`classes.traits.traits.SHORT_FUSED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin`

- `SHORT_FUSED:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:tryCreateMonsterSpriteStatuses(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`

</details>

### SLIPPERY

`classes.traits.traits.SLIPPERY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SLIPPERY:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:onSkillMovePriority()`
- `trait:onSkillMove(_onSkipSkill, _onContinue, _skillMoveObject, _fromMonsterSprite, _targetedMonsterSprites)`
- `trait:onAfterSkillMovePriority()`
- `trait:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### SNOWMAN

`classes.traits.traits.SNOWMAN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SNOWMAN:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### SOOTHING_AURA

`classes.traits.traits.SOOTHING_AURA`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.activeTraitPlugin`, `classes.traits.plugins.activeIntervalTraitPlugin`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.TallMonsterButtonOverlay`

- `SOOTHING_AURA:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:getTraitIntervalInSeconds()`
- `trait:onBeforeActivate()`
- `trait:onActivateInMonsterSummaryOrGauntletButtonOverlay(_refreshTraitButtonContentAndMonsterSummarySlides, _closePauseMenuOrGauntletButtonOverlayAndActivate)`

</details>

### SOUL_EATER

`classes.traits.traits.SOUL_EATER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnOpponentMonsterSpritesFaintedTraitPlugin`

- `SOUL_EATER:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onOpponentMonsterSpritesFaintedAndOpponentParticipantStillHasMonsterSprites(_monsterSprite, _opponentMonsterSpritesFainted, _onComplete)`

</details>

### SPECIALIST

`classes.traits.traits.SPECIALIST`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SPECIALIST:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:mutateAfterParticipantWonEnergy(_monster, _value)`
- `trait:onBeforeRoundPriority()`
- `trait:onBeforeRound(_onComplete, _battleEffects)`

</details>

### SPIKED_BODY

`classes.traits.traits.SPIKED_BODY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectDamageTraitPlugin`

- `SPIKED_BODY:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:tryCalculateReflectedDamage(_skillData, _skillDamage, _activeMonsterSprite, _targetMonsterSprite, _didCriticalHit)`
- `trait:getOnHitAfterPartialSkillMoveText(_activeMonsterSprite, _targetMonsterSprite)`

</details>

### STATIC_BODY

`classes.traits.traits.STATIC_BODY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `STATIC_BODY:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`

</details>

### STEADY

`classes.traits.traits.STEADY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `STEADY:new(_monster)`

<details><summary>Instance / other functions (6)</summary>

- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterPartialSkillMovePriority()`
- `trait:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### STEAM_LAYER

`classes.traits.traits.STEAM_LAYER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveShowTraitIndicatorForWeatherEffectTraitPlugin`

- `STEAM_LAYER:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:shouldShowTraitIndicatorForWeatherEffect(_weatherEffect)`
- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

### STICKY_LAYER

`classes.traits.traits.STICKY_LAYER`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `STICKY_LAYER:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`

</details>

### STINKY

`classes.traits.traits.STINKY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeFirstRoundOrAfterMonsterSpriteSpawnedTraitPlugin`, `classes.world.effects.plugins.worldEffectPlugin`, `classes.world.effects.plugins.traitWorldEffectPlugin`, `classes.world.effects.plugins.visibleWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenPopupWorldEffectPlugin`, `classes.world.effects.plugins.visibleOpenTraitPopupWorldEffectPlugin`

- `STINKY:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldShowWorldEffectButton()`
- `trait:shouldBlockZoneEncounter(_rolledMonsters)`
- `trait:onBeforeFirstRoundOrAfterMonsterSpriteSpawned(_monsterSprite, _onComplete, _battleEffects)`

</details>

### STOIC

`classes.traits.traits.STOIC`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveApplyStatusesTraitPlugin`

- `STOIC:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:tryCreateMonsterSpriteStatuses(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `trait:onEnterBattle(_onComplete)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterDamageInBattle(_onComplete, _monsterSprite)`

</details>

### STRATEGIST

`classes.traits.traits.STRATEGIST`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `STRATEGIST:new(_monster)`

<details><summary>Instance / other functions (5)</summary>

- `trait:mutateStatBoostStage(_monsterSprite, _statUID, _isForMonsterSpriteDetailsOverlay, _value)`
- `trait:onBeforeTurnPriority(_preparedMove)`
- `trait:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `trait:onAfterSkillMovePriority()`
- `trait:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### SUGAR_RUSH

`classes.traits.traits.SUGAR_RUSH`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SUGAR_RUSH:new(_monster, _constructor)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterFruitConsumed(_onComplete, _item, _monsterSprite)`

</details>

### SUPERSENSORY

`classes.traits.traits.SUPERSENSORY`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `SUPERSENSORY:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:onAfterApplyMonsterSpriteStatusPriority()`
- `trait:onAfterApplyMonsterSpriteStatus(_onComplete, _monsterSpriteStatus, _monsterSprite)`

</details>

### TACTICAL_RETREAT

`classes.traits.traits.TACTICAL_RETREAT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `TACTICAL_RETREAT:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterMonsterSpriteUnspawned(_onComplete, _monsterSprite)`

</details>

### THERMOGENESIS

`classes.traits.traits.THERMOGENESIS`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveStartWeatherEffectTraitPlugin`

- `THERMOGENESIS:new(_monster, _constructor)`

<details><summary>Instance / other functions (2)</summary>

- `trait:createWeatherEffect(_turns)`
- `trait:isWeatherEffectToPersist(_weatherEffect)`

</details>

### THICK_SKIN

`classes.traits.traits.THICK_SKIN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `THICK_SKIN:new(_monster)`

<details><summary>Instance / other functions (7)</summary>

- `trait:shouldCriticalHitPriority(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `trait:shouldCriticalHit(_fromMonsterSprite, _toMonsterSprite, _skillData)`
- `trait:shouldBlockMonsterSpriteStatus(_monsterSprite, _monsterSpriteStatus)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterPartialSkillMovePriority()`
- `trait:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### TITAN_ELECTRIC

`classes.traits.traits.TITAN_ELECTRIC`

- returns `t`
- requires: `classes.traits.abstractTitanTrait`

- `TITAN_ELECTRIC:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`

</details>

### TITAN_FIRE

`classes.traits.traits.TITAN_FIRE`

- returns `t`
- requires: `classes.traits.abstractTitanTrait`

- `TITAN_FIRE:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`

</details>

### TITAN_GHOST

`classes.traits.traits.TITAN_GHOST`

- returns `t`
- requires: `classes.traits.abstractTitanTrait`

- `TITAN_GHOST:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`

</details>

### TITAN_ICE

`classes.traits.traits.TITAN_ICE`

- returns `t`
- requires: `classes.traits.abstractTitanTrait`

- `TITAN_ICE:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`

</details>

### TITAN_SAND

`classes.traits.traits.TITAN_SAND`

- returns `t`
- requires: `classes.traits.abstractTitanTrait`

- `TITAN_SAND:doFallingRocksAnimation(_team, _shouldCombinePhases, _onRockSpritePhaseComplete, _onComplete)`
- `TITAN_SAND:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`
- `trait:onBeforeRound(_onComplete, _battleEffects)`
- `trait:spawnBoulders(_onComplete)`

</details>

### TITAN_WATER

`classes.traits.traits.TITAN_WATER`

- returns `t`
- requires: `classes.traits.abstractTitanTrait`

- `TITAN_WATER:new(_monster)`

<details><summary>Instance / other functions (9)</summary>

- `trait:onBeforeRoundTitanPhaseTriggered(_titanPhaseIndex, _onComplete)`
- `trait:onBeforeTurnPriority(_preparedMove)`
- `trait:onBeforeTurn(_onSkipTurn, _onContinue, _preparedMove)`
- `trait:onBeforeRoundAmazingBending(_onComplete)`
- `trait:onBeforeRoundCorruptedStorm(_onComplete)`
- `trait:onBeforeApplyMonsterSpriteStatus(_onSkipMonsterSpriteStatus, _onComplete, _monsterSprite, _status)`
- `trait:doSplashOnChalchiu(_onComplete)`
- `trait:onBeforeRoundCrimsoniteAbsorptionBoost(_onComplete)`
- `trait:onBeforeRoundWaterfall()`

</details>

### TOUGH_FEET

`classes.traits.traits.TOUGH_FEET`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `TOUGH_FEET:new(_monster, _constructor)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onBeforeApplyEntryHazardEffect(_onSkipEntryHazardEffect, _onContinue, _entryHazard, _monsterSprite)`

</details>

### TOXIC_SKIN

`classes.traits.traits.TOXIC_SKIN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnHitAfterPartialSkillMoveReflectStatusesTraitPlugin`

- `TOXIC_SKIN:new(_monster)`

<details><summary>Instance / other functions (4)</summary>

- `trait:tryCreateMonsterSpriteStatusesToReflect(_activeMonsterSprite, _targetMonsterSprite, _skillData, _didCriticalHit)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onHitAfterPartialSkillMoveIfNoReflectedStatuses(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprite, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### VACCINATED

`classes.traits.traits.VACCINATED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `VACCINATED:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:shouldBlockCondition(_monster, _condition)`

</details>

### VEGETARIAN

`classes.traits.traits.VEGETARIAN`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `VEGETARIAN:new(_monster)`

<details><summary>Instance / other functions (1)</summary>

- `trait:onAfterFruitConsumed(_onComplete, _item, _monsterSprite)`

</details>

### VENGEFUL

`classes.traits.traits.VENGEFUL`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `VENGEFUL:new(_monster, _constructor)`

<details><summary>Instance / other functions (1)</summary>

- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### VIGILANT

`classes.traits.traits.VIGILANT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveOnBeforeRoundOrAfterDamageInBattleBelowHealthPercentageTraitPlugin`

- `VIGILANT:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:tryGetTriggerHealthPercentage()`
- `trait:onBelowHealthPercentageTriggered(_monsterSpriteInBattle, _onComplete)`

</details>

### WATER_COOLED

`classes.traits.traits.WATER_COOLED`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `WATER_COOLED:new(_monster)`

<details><summary>Instance / other functions (6)</summary>

- `trait:shouldBlockCondition(_monster, _condition)`
- `trait:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `trait:mutateSkillDamagePriority()`
- `trait:mutateSkillDamage(_skillData, _toMonsterSprite, _isCritical, _value)`
- `trait:onAfterPartialSkillMovePriority()`
- `trait:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### WEATHERPROOF

`classes.traits.traits.WEATHERPROOF`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `WEATHERPROOF:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:shouldBlockWeatherEffectEffect(_monster, _weatherEffect, _isPositive)`
- `trait:shouldAdaptToPositiveWeatherEffect(_monster, _weatherEffect)`
- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

### WET_COAT

`classes.traits.traits.WET_COAT`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`, `classes.traits.plugins.passiveShowTraitIndicatorForWeatherEffectTraitPlugin`

- `WET_COAT:new(_monster)`

<details><summary>Instance / other functions (2)</summary>

- `trait:shouldShowTraitIndicatorForWeatherEffect(_weatherEffect)`
- `trait:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

### ZEALOUS

`classes.traits.traits.ZEALOUS`

- returns `t`
- requires: `classes.traits.abstractTrait`, `classes.traits.plugins.passiveTraitPlugin`

- `ZEALOUS:new(_monster)`

<details><summary>Instance / other functions (3)</summary>

- `trait:mutateEnergyCost(_skillData, _monster, _value)`
- `trait:mutateSkillPowerPriority()`
- `trait:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

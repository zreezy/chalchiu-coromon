# classes.battle.rules

Coromon 1.5.4. 20 module(s). [Back to index](../README.md)

[AI](#ai), [achieveMilestones](#achievemilestones), [achieveMonsterSpriteSkinMilestones](#achievemonsterspriteskinmilestones), [afterMonsterSpritesFaintedXp](#aftermonsterspritesfaintedxp), [afterPartialSkillMoveCriticalHit](#afterpartialskillmovecriticalhit), [afterPartialSkillMoveSkipRemainingIfActiveFainted](#afterpartialskillmoveskipremainingifactivefainted), [afterPlayerWonRecoverEnergy](#afterplayerwonrecoverenergy), [afterSkillMoveEffectiveAttack](#afterskillmoveeffectiveattack), [afterSkillMoveMiss](#afterskillmovemiss), [afterSkillMoveMultiStrike](#afterskillmovemultistrike), [afterSkillMoveSkipRemainingIfAllMissed](#afterskillmoveskipremainingifallmissed), [battleDome](#battledome), [crimsoniteAura](#crimsoniteaura), [damageRandomizer](#damagerandomizer), [onSameTypeAttack](#onsametypeattack), [onSpreadedAttack](#onspreadedattack), [onlineMenuMutateLevel](#onlinemenumutatelevel), [onlineShouldBlockSkill](#onlineshouldblockskill), [rogue](#rogue), [statBoosts](#statboosts)

### AI

`classes.battle.rules.AI`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `AI:new()`

<details><summary>Instance / other functions (4)</summary>

- `effect:setIsCalculatingAIScore(_boolean)`
- `effect:isCalculatingAIScore()`
- `effect:getDamageRandomizerPriority()`
- `effect:getDamageRandomizer()`

</details>

### achieveMilestones

`classes.battle.rules.achieveMilestones`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`, `classes.interface.MilestoneAchievedPopup`

- `achieveMilestones:new()`

<details><summary>Instance / other functions (8)</summary>

- `effect:onEnterBattlePriority()`
- `effect:onEnterBattle(_onComplete)`
- `effect:onAfterMonsterSpritesRemovedFromBattlePriority()`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:onAfterSkillMovePriority()`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `effect:onAfterParticipantWonPriority()`
- `effect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### achieveMonsterSpriteSkinMilestones

`classes.battle.rules.achieveMonsterSpriteSkinMilestones`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `achieveMonsterSpriteSkinMilestones:new()`

<details><summary>Instance / other functions (4)</summary>

- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`
- `effect:mutateRecoverHealthConsumableEffect(_item, _monster, _value)`
- `effect:onAfterMonsterSpritesRemovedFromBattlePriority()`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`

</details>

### afterMonsterSpritesFaintedXp

`classes.battle.rules.afterMonsterSpritesFaintedXp`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`, `classes.interface.battle.statsOverlayBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.battle.BattleExperienceOverlay`, `classes.interface.battle.skillUnlockedOverlayBuilder`, `classes.interface.battle.IncreasePotentialStatsOverlay`, `classes.interface.battle.monsterEvolutionOverlayBuilder`

- `afterMonsterSpritesFaintedXp:new()`

<details><summary>Instance / other functions (21)</summary>

- `effect:updateNametag(_monsterSprite, _playerMonsterStatsBeforeLevelUp)`
- `effect:showStatsOverlayBuilderAndUpdateNametag(_monsterSprite, _playerMonsterStatsBeforeLevelUp, _onComplete)`
- `effect:evolve(_monsterSprite, _newMonsterUID, _onComplete)`
- `effect:onAfterTurnPriority()`
- `effect:onAfterTurn(_onComplete, _executedMove)`
- `effect:onAfterMonsterSpritesRemovedFromBattlePriority()`
- `effect:onAfterMonsterSpritesRemovedFromBattle(_onComplete, _removedMonsterSprites)`
- `effect:processTotalXpEarnedByMonster(_playerMonsterSprite, _totalXpEarnedByMonsterSprite, _onPlayerMonsterSpriteComplete)`
- `effect:addXpUntilNextBreakpointRecursive(_playerMonsterSprite, _xpLeft, _onPlayerMonsterSpriteComplete)`
- `effect:onPotentialLevelUp(_playerMonsterSprite, _onComplete)`
- `effect:onLevelUp(_playerMonsterSprite, _playerMonsterStatsBeforeLevelUp, _playerMonsterNextEvolutionLevel, _playerMonsterNextEvolutionMonsterUID, _xpLeftAfterLevelUp, _onComplete)`
- `effect:optionallyRecoverHealth(_playerMonsterSprite, _onComplete)`
- `effect:optionallyRecoverEnergy(_playerMonsterSprite, _onComplete)`
- `effect:optionallyEvolve(_playerMonsterSprite, _playerMonsterNextEvolutionLevel, _playerMonsterNextEvolutionMonsterUID, _xpLeftAfterLevelUp, _onComplete)`
- `effect:optionallyShowSkillUnlockedOverlay(_monster, _onComplete)`
- `effect:showXpBarIfInBattle(_playerMonsterSprite, _onComplete)`
- `effect:showHealthAndEnergyBarIfInBattle(_playerMonsterSprite, _onComplete)`
- `effect:addXpAndAnimateXpBarIfInBattle(_playerMonsterSprite, _xp, _onComplete)`
- `effect:doEvolveAnimationIfInBattle(_playerMonsterSprite, _onComplete)`
- `effect:doLevelUpAnimationIfInBattle(_playerMonsterSprite, _onComplete)`
- `effect:doPotentialLevelUpAnimationIfInBattle(_playerMonsterSprite, _onComplete)`

</details>

### afterPartialSkillMoveCriticalHit

`classes.battle.rules.afterPartialSkillMoveCriticalHit`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterPartialSkillMoveCriticalHit:new()`

<details><summary>Instance / other functions (3)</summary>

- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onAfterPartialSkillMovePriority()`
- `effect:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### afterPartialSkillMoveSkipRemainingIfActiveFainted

`classes.battle.rules.afterPartialSkillMoveSkipRemainingIfActiveFainted`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterPartialSkillMoveSkipRemainingIfActiveFainted:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterPartialSkillMovePriority()`
- `effect:onAfterPartialSkillMove(_onComplete, _skipRemainingStrikes, _skillData, _activeMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _criticalHitMonsterSprites, _skillDamageByMonsterSprite)`

</details>

### afterPlayerWonRecoverEnergy

`classes.battle.rules.afterPlayerWonRecoverEnergy`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterPlayerWonRecoverEnergy:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterParticipantWonPriority()`
- `effect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### afterSkillMoveEffectiveAttack

`classes.battle.rules.afterSkillMoveEffectiveAttack`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterSkillMoveEffectiveAttack:new()`

<details><summary>Instance / other functions (3)</summary>

- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`
- `effect:onAfterSkillMovePriority()`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### afterSkillMoveMiss

`classes.battle.rules.afterSkillMoveMiss`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterSkillMoveMiss:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterSkillMovePriority()`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### afterSkillMoveMultiStrike

`classes.battle.rules.afterSkillMoveMultiStrike`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterSkillMoveMultiStrike:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterSkillMovePriority()`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### afterSkillMoveSkipRemainingIfAllMissed

`classes.battle.rules.afterSkillMoveSkipRemainingIfAllMissed`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `afterSkillMoveSkipRemainingIfAllMissed:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:onAfterSkillMovePriority()`
- `effect:onAfterSkillMove(_skipRemainingEffects, _onComplete, _skillData, _fromMonsterSprite, _targetMonsterSprites, _missedMonsterSprites, _skillDamageByMonsterSprite, _amountOfStrikes)`

</details>

### battleDome

`classes.battle.rules.battleDome`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `battleDome:new()`

<details><summary>Instance / other functions (8)</summary>

- `effect:mutateXpEarned(_monsterSprite, _isLazy, _xpPerMonsterSprite, _value)`
- `effect:shouldBlockForceRemove(_monsterSprite)`
- `effect:getPlayerEscapeButtonModePriority()`
- `effect:getPlayerEscapeButtonMode()`
- `effect:onBeforePlayerForfeitConfirmPopupText()`
- `effect:onBeforeUseItemMessage(_item, _mode)`
- `effect:onAfterParticipantWonPriority()`
- `effect:onAfterParticipantWon(_onComplete, _winningParticipant, _losingParticipant)`

</details>

### crimsoniteAura

`classes.battle.rules.crimsoniteAura`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `crimsoniteAura:new()`

### damageRandomizer

`classes.battle.rules.damageRandomizer`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `damageRandomizer:new()`

<details><summary>Instance / other functions (2)</summary>

- `effect:getDamageRandomizerPriority()`
- `effect:getDamageRandomizer()`

</details>

### onSameTypeAttack

`classes.battle.rules.onSameTypeAttack`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `onSameTypeAttack:new()`

<details><summary>Instance / other functions (1)</summary>

- `effect:mutateSkillPower(_skillData, _fromMonsterSprite, _toMonsterSprite, _value)`

</details>

### onSpreadedAttack

`classes.battle.rules.onSpreadedAttack`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `onSpreadedAttack:new()`

<details><summary>Instance / other functions (1)</summary>

- `effect:mutateSkillDamageModifier(_skillData, _fromMonsterSprite, _toMonsterSprite, _isCritical, _value)`

</details>

### onlineMenuMutateLevel

`classes.battle.rules.onlineMenuMutateLevel`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `onlineMenuMutateLevel:new()`

<details><summary>Instance / other functions (1)</summary>

- `effect:mutateLevel(_monster, _level)`

</details>

### onlineShouldBlockSkill

`classes.battle.rules.onlineShouldBlockSkill`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `onlineShouldBlockSkill:new()`

<details><summary>Instance / other functions (1)</summary>

- `effect:shouldBlockSkill(_monsterSprite, _skillData)`

</details>

### rogue

`classes.battle.rules.rogue`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `rogue:new()`

### statBoosts

`classes.battle.rules.statBoosts`

- returns `t`
- requires: `classes.battle.abstractBattleEffect`

- `statBoosts:new()`

<details><summary>Instance / other functions (1)</summary>

- `effect:mutateStat(_monsterSprite, _statUID, _statValue)`

</details>

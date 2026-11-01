# classes.battle.moves

Coromon 1.5.4. 15 module(s). [Back to index](../README.md)

[AIScore](#aiscore), [abstractItemMove](#abstractitemmove), [abstractMonsterSpriteMove](#abstractmonsterspritemove), [abstractMove](#abstractmove), [abstractTrainerParticipantMove](#abstracttrainerparticipantmove), [escapeMove](#escapemove), [forfeitMove](#forfeitmove), [monsterUsableItemMove](#monsterusableitemmove), [rechargeMove](#rechargemove), [restMove](#restmove), [silentSkipMove](#silentskipmove), [skillMove](#skillmove), [skipMonsterSpriteMove](#skipmonsterspritemove), [switchMonsterMove](#switchmonstermove), [usableItemMove](#usableitemmove)

### AIScore

`classes.battle.moves.AIScore`

- returns `t`

- `AIScore:new(_fromMonsterSprite)`

<details><summary>Instance / other functions (24)</summary>

- `score:setSuccessModifier(_modifier)`
- `score:getSuccessModifier()`
- `score:setStrikesModifier(_modifier)`
- `score:setChargeModifier(_turns)`
- `score:setRandomTargetModifier(_modifier)`
- `score:setAnnoyingAIModifier(_modifier)`
- `score:addMutateEnergyScore(_monsterSprite, _value)`
- `score:setMutateEnergyScore(_score)`
- `score:getMutateEnergyScore()`
- `score:addMutateHealthScore(_monsterSprite, _value)`
- `score:setMutateHealthScore(_score)`
- `score:getMutateHealthScore()`
- `score:addOtherScore(_value)`
- `score:setOtherScore(_value)`
- `score:getOtherScore()`
- `score:addMonsterSpriteStatusScore(_multiplier, _status)`
- `score:addBattleStatusScore(_multiplier, _battleStatus)`
- `score:addTrainerParticipantStatusScore(_multiplier, _trainerParticipantStatus)`
- `score:addEntryHazardScore(_multiplier, _entryHazard)`
- `score:addWeatherEffectScore(_multiplier, _weatherEffect)`
- `score:setStatusScore(_value)`
- `score:getStatusScore()`
- `score:overrideTotalScore(_value)`
- `score:getTotalScore()`

</details>

### abstractItemMove

`classes.battle.moves.abstractItemMove`

- returns `t`
- requires: `classes.battle.moves.abstractMove`

- `abstractItemMove:new(_participant, _item)`

<details><summary>Instance / other functions (3)</summary>

- `move:createAndAlignMovePreviewIcon(_movePreviewSlot)`
- `move:onAfterItemIndicatorShown(_hideItemIndicator, _onComplete)`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### abstractMonsterSpriteMove

`classes.battle.moves.abstractMonsterSpriteMove`

- returns `t`
- requires: `classes.battle.moves.abstractMove`

- `abstractMonsterSpriteMove:new(_participant, _monsterSprite)`

<details><summary>Instance / other functions (7)</summary>

- `move:isConsideredMoveForMonsterSprite(_monsterSpriteToCheck)`
- `move:resolveNametag()`
- `move:getMonsterSprite()`
- `move:resolveMonsterSpriteInBattle()`
- `move:getPriority()`
- `move:onExecuteMove(_onMoveComplete)`
- `move:onBeforeExecuteMessage()`

</details>

### abstractMove

`classes.battle.moves.abstractMove`

- returns `t`

- `abstractMove:new(_participant)`

<details><summary>Instance / other functions (12)</summary>

- `move:getRoundIndex()`
- `move:getParticipant()`
- `move:getPriority()`
- `move:isConsideredMoveForMonsterSprite(_monsterSpriteToCheck)`
- `move:resolveNametag()`
- `move:getAIScore()`
- `move:getMovePriority()`
- `move:onBeforeExecuteMessage()`
- `move:createAndAlignMovePreviewIcon(_movePreviewSlot)`
- `move:getPreviewText()`
- `move:onExecuteMove(_onMoveComplete)`
- `move:executeMove(_onMoveComplete)`

</details>

### abstractTrainerParticipantMove

`classes.battle.moves.abstractTrainerParticipantMove`

- returns `t`
- requires: `classes.battle.moves.abstractMove`

- `abstractTrainerParticipantMove:new(_participant)`

<details><summary>Instance / other functions (1)</summary>

- `move:resolveNametag()`

</details>

### escapeMove

`classes.battle.moves.escapeMove`

- returns `t`
- requires: `classes.battle.moves.abstractMove`

- `escapeMove:new(_participant)`

<details><summary>Instance / other functions (4)</summary>

- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:shouldEscape()`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### forfeitMove

`classes.battle.moves.forfeitMove`

- returns `t`
- requires: `classes.battle.moves.abstractMove`

- `forfeitMove:new(_participant)`

<details><summary>Instance / other functions (3)</summary>

- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### monsterUsableItemMove

`classes.battle.moves.monsterUsableItemMove`

- returns `t`
- requires: `classes.battle.moves.abstractItemMove`

- `monsterUsableItemMove:new(_participant, _monsterSprite, _item, _optionalTargetMonsterSprite)`

<details><summary>Instance / other functions (6)</summary>

- `move:isConsideredMoveForMonsterSprite(_monsterSpriteToCheck)`
- `move:getItem()`
- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:onBeforeExecuteMessage()`
- `move:onAfterItemIndicatorShown(_hideItemIndicator, _onComplete)`

</details>

### rechargeMove

`classes.battle.moves.rechargeMove`

- returns `t`
- requires: `classes.battle.moves.abstractMonsterSpriteMove`

- `rechargeMove:new(_participant, _monsterSprite)`

<details><summary>Instance / other functions (3)</summary>

- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### restMove

`classes.battle.moves.restMove`

- returns `t`
- requires: `classes.battle.moves.AIScore`, `classes.battle.moves.abstractMonsterSpriteMove`

- `restMove:new(_participant, _monsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `move:setPercentageOfMaxEnergyToRestore(_newValue)`
- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:getAIScore()`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### silentSkipMove

`classes.battle.moves.silentSkipMove`

- returns `t`
- requires: `classes.battle.moves.abstractTrainerParticipantMove`

- `silentSkipMove:new(_participant)`

<details><summary>Instance / other functions (4)</summary>

- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:createAndAlignMovePreviewIcon(_movePreviewSlot)`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### skillMove

`classes.battle.moves.skillMove`

- returns `t`
- requires: `classes.battle.moves.abstractMonsterSpriteMove`

- `skillMove:new(_participant, _fromMonsterSprite, _skillData, _optionalTargetMonsterSprite)`

<details><summary>Instance / other functions (21)</summary>

- `move:getTargetData()`
- `move:getTargetTeam()`
- `move:getTargetIndex()`
- `move:getValidTargetedMonsterSprites()`
- `move:getSkillData()`
- `move:getOptionalTargetMonsterSprite()`
- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:getAIScore()`
- `move:onBeforeExecuteMessage()`
- `move:onExecuteMove(_onMoveComplete)`
- `move:getPartialSkillTargetMonsterSprites()`
- `move:didSucceed()`
- `move:didCriticalHit()`
- `move:didVeryEffectiveDamage()`
- `move:didVeryEffectiveDamageAgainst(_monsterSprite)`
- `move:didNotEffectiveDamage()`
- `move:didNotEffectiveDamageAgainst(_monsterSprite)`
- `move:getTotalSkillDamageByMonsterSprite()`
- `move:onSkillMove(_skillMoveObject, _onMoveComplete)`
- `move:optionallyHideOrShowNametags(_actualSkillTargetMonsterSprites, _onComplete)`

</details>

### skipMonsterSpriteMove

`classes.battle.moves.skipMonsterSpriteMove`

- returns `t`
- requires: `classes.battle.moves.abstractMonsterSpriteMove`

- `skipMonsterSpriteMove:new(_participant, _monsterSprite)`

<details><summary>Instance / other functions (3)</summary>

- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### switchMonsterMove

`classes.battle.moves.switchMonsterMove`

- returns `t`
- requires: `classes.battle.moves.AIScore`, `classes.battle.moves.abstractMonsterSpriteMove`

- `switchMonsterMove:new(_participant, _monsterSprite, _newMonsterSprite)`

<details><summary>Instance / other functions (5)</summary>

- `move:getNewMonsterSprite()`
- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:getAIScore()`
- `move:onExecuteMove(_onMoveComplete)`

</details>

### usableItemMove

`classes.battle.moves.usableItemMove`

- returns `t`
- requires: `classes.battle.moves.abstractItemMove`

- `usableItemMove:new(_participant, _monsterSprite, _item)`

<details><summary>Instance / other functions (4)</summary>

- `move:getItem()`
- `move:getMovePriority()`
- `move:getPreviewText()`
- `move:onAfterItemIndicatorShown(_hideItemIndicator, _onComplete)`

</details>

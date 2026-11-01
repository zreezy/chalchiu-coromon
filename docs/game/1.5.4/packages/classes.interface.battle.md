# classes.interface.battle

Coromon 1.5.4. 19 module(s). [Back to index](../README.md)

[AbstractPotentialStatsOverlay](#abstractpotentialstatsoverlay), [BattleActionPreviewContainer](#battleactionpreviewcontainer), [BattleExperienceOverlay](#battleexperienceoverlay), [BattleHeldSkillDetailsPopupBuilder](#battleheldskilldetailspopupbuilder), [BattleWeatherEffectPopup](#battleweathereffectpopup), [IncreasePotentialStatsOverlay](#increasepotentialstatsoverlay), [ResetPotentialStatsOverlay](#resetpotentialstatsoverlay), [SetPotentialStatsOverlay](#setpotentialstatsoverlay), [SkillButton](#skillbutton), [SkillTargetPreviewButton](#skilltargetpreviewbutton), [actionsPanelBuilder](#actionspanelbuilder), [actionsPanelManager](#actionspanelmanager), [battleIndicatorBuilder](#battleindicatorbuilder), [cancelMovePanelBuilder](#cancelmovepanelbuilder), [monsterEvolutionOverlayBuilder](#monsterevolutionoverlaybuilder), [oneStepActionsPanelBuilder](#onestepactionspanelbuilder), [skillUnlockedOverlayBuilder](#skillunlockedoverlaybuilder), [statsOverlayBuilder](#statsoverlaybuilder), [trainerMonsterIndicatorBuilder](#trainermonsterindicatorbuilder)

### AbstractPotentialStatsOverlay

`classes.interface.battle.AbstractPotentialStatsOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`, `classes.modules.interface.stepperBuilder`, `classes.interface.overlays.MessagePopup`, `classes.interface.overlays.PotentialStatsOverlayMonsterInformationActionOverlay`

- `AbstractPotentialStatsOverlay:new(_monster, _minimumPotentialStats, _startPotentialStats, _originPotentialStats, _amountOfPotentialStatsToDistribute, _getDoneButtonText, _onSetNewPotential, _shouldAlwaysShowPotentialStat, _cancellable, _resettable, _isButtonDisabled)`

<details><summary>Instance / other functions (3)</summary>

- `innerContentContainer:setStaticInfoText(_text)`
- `innerContentContainer:setDynamicInfoText(_text)`
- `parentGroup:getMonsterInfoButton()`

</details>

### BattleActionPreviewContainer

`classes.interface.battle.BattleActionPreviewContainer`

- returns `Obj`

- `BattleActionPreviewContainer:new(_parent, _xOffsetFromRightEdge)`

<details><summary>Instance / other functions (8)</summary>

- `parentGroup:setHeaderText(_headerText)`
- `parentGroup:getHeaderText()`
- `parentGroup:setContextText(_contextText)`
- `parentGroup:getContextText()`
- `parentGroup:setDetailsPromptVisible(_isVisible)`
- `parentGroup:getVisibleContainer()`
- `parentGroup:show(_onComplete)`
- `parentGroup:hide(_onComplete)`

</details>

### BattleExperienceOverlay

`classes.interface.battle.BattleExperienceOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `BattleExperienceOverlay:createExperienceObject(_monster, _experience)`
- `BattleExperienceOverlay:new(_experienceObjects, _onClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### BattleHeldSkillDetailsPopupBuilder

`classes.interface.battle.BattleHeldSkillDetailsPopupBuilder`

- returns `Obj`

- `BattleHeldSkillDetailsPopupBuilder:new(_parent, _monster, _skillButtonsContainer)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:show(_skillData)`
- `parentGroup:hide()`

</details>

### BattleWeatherEffectPopup

`classes.interface.battle.BattleWeatherEffectPopup`

- returns `Obj`
- requires: `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `BattleWeatherEffectPopup:new(_weatherEffect)`

### IncreasePotentialStatsOverlay

`classes.interface.battle.IncreasePotentialStatsOverlay`

- returns `Obj`
- requires: `classes.interface.battle.AbstractPotentialStatsOverlay`

- `IncreasePotentialStatsOverlay:new(_monster, _cancellable, _onComplete)`

### ResetPotentialStatsOverlay

`classes.interface.battle.ResetPotentialStatsOverlay`

- returns `Obj`
- requires: `classes.interface.battle.AbstractPotentialStatsOverlay`

- `ResetPotentialStatsOverlay:new(_monster, _goldCost, _minimumPotentialStats, _onComplete)`

### SetPotentialStatsOverlay

`classes.interface.battle.SetPotentialStatsOverlay`

- returns `Obj`
- requires: `classes.interface.battle.AbstractPotentialStatsOverlay`

- `SetPotentialStatsOverlay:new(_monster, _startPotentialStats, _onComplete)`

### SkillButton

`classes.interface.battle.SkillButton`

- returns `t`
- requires: `classes.lists.skillButtonOffsetList`, `classes.interface.SkillSideEffectTurnIndicator`

- `SkillButton:new(_parent, _skillData, _options)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:getSkillData()`
- `parentGroup:setHovered(_isHovered)`

</details>

<details><summary>Fields with default values (2)</summary>

- `SkillButton.BUTTON_WIDTH` = `36`
- `SkillButton.BUTTON_HEIGHT` = `32`

</details>

### SkillTargetPreviewButton

`classes.interface.battle.SkillTargetPreviewButton`

- returns `t`
- requires: `classes.lists.skillButtonOffsetList`

- `SkillTargetPreviewButton:new(_parent, _skillData, _targetMonsterSprite, _previewType)`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:getSingleTargetCrosshair()`
- `parentGroup:getTargetMonsterSprite()`
- `parentGroup:getTargetMonsterSprites()`
- `parentGroup:getSkillTargetPreviewButton()`
- `parentGroup:startBobbing()`
- `parentGroup:cancelBobbing()`

</details>

### actionsPanelBuilder

`classes.interface.battle.actionsPanelBuilder`

- returns `Obj`
- requires: `classes.modules.utilities.monsterItemSuggestionInBattleUtility`

- `actionsPanelBuilder:new(_battleActionPreviewContainer, _options)`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:show(_onComplete)`
- `parentGroup:hide(_onComplete)`
- `parentGroup:getGamepadNavigation()`
- `parentGroup:getKeyboardNavigation()`
- `parentGroup:getGlobalNavigation()`
- `parentGroup:setSelectedActionButtonFromBottomIndex(_indexFromBottom)`

</details>

### actionsPanelManager

`classes.interface.battle.actionsPanelManager`

- returns `Obj`
- requires: `classes.interface.battle.cancelMovePanelBuilder`, `classes.interface.battle.BattleActionPreviewContainer`, `classes.interface.battle.oneStepActionsPanelBuilder`, `classes.interface.battle.SkillButton`

- `actionsPanelManager:new(_options, _secondaryOptions)`

<details><summary>Instance / other functions (8)</summary>

- `parentGroup:getNametag()`
- `parentGroup:getMonsterSprite()`
- `parentGroup:show(_onComplete)`
- `parentGroup:hide(_onComplete)`
- `parentGroup:setMonsterSpriteSelectionEffectsVisible(_isVisible)`
- `parentGroup:getGamepadNavigation()`
- `parentGroup:getKeyboardNavigation()`
- `parentGroup:getGlobalNavigation()`

</details>

### battleIndicatorBuilder

`classes.interface.battle.battleIndicatorBuilder`

- returns `Obj`

- `battleIndicatorBuilder:new(_parent, _team, _preparedText, _iconFunction, _yOffset, _shouldAlignTop)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getText()`
- `parentGroup:hide(_onComplete)`
- `parentGroup:show(_onComplete)`

</details>

### cancelMovePanelBuilder

`classes.interface.battle.cancelMovePanelBuilder`

- returns `Obj`

- `cancelMovePanelBuilder:new(_parent, _battleActionPreviewContainer, _focusSelector, _alreadyPreparedMove, _onCancelMove)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:show(_onComplete)`
- `parentGroup:hide(_onComplete)`
- `parentGroup:getGamepadNavigation()`
- `parentGroup:getKeyboardNavigation()`
- `parentGroup:getGlobalNavigation()`

</details>

### monsterEvolutionOverlayBuilder

`classes.interface.battle.monsterEvolutionOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.interface.overlays.MonsterEvolutionDetailsPopup`

- `monsterEvolutionOverlayBuilder:new(_monster, _newMonsterUID, _allowSkipEvolution, _onMonsterUIDChanged, _onClose, _evolveMode)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### oneStepActionsPanelBuilder

`classes.interface.battle.oneStepActionsPanelBuilder`

- returns `Obj`
- requires: `classes.interface.battle.actionsPanelBuilder`, `classes.interface.battle.BattleHeldSkillDetailsPopupBuilder`, `classes.interface.battle.SkillButton`, `classes.interface.overlays.confirmPopupBuilder`, `classes.interface.overlays.MessageToast`, `classes.interface.monsterCriticalHitChargeBarBuilder`

- `oneStepActionsPanelBuilder:new(_battleActionPreviewContainer, _options)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:show(_onComplete)`
- `parentGroup:hide(_onComplete)`
- `parentGroup:getGamepadNavigation()`
- `parentGroup:getKeyboardNavigation()`
- `parentGroup:getGlobalNavigation()`

</details>

### skillUnlockedOverlayBuilder

`classes.interface.battle.skillUnlockedOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `skillUnlockedOverlayBuilder:new(_skillData, _shouldShowDescription, _onClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onClose()`

</details>

### statsOverlayBuilder

`classes.interface.battle.statsOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `statsOverlayBuilder:new(_monster, _monsterStatsBeforeLevelUp)`

### trainerMonsterIndicatorBuilder

`classes.interface.battle.trainerMonsterIndicatorBuilder`

- returns `Obj`
- requires: `classes.spawnables.characterSprites.modularCharacterSprite`

- `trainerMonsterIndicatorBuilder:newSimple(_parent, _team, _options)`
- `trainerMonsterIndicatorBuilder:new(_parent, _trainerParticipant, _team, _monsterSprites)`

<details><summary>Instance / other functions (3)</summary>

- `parentGroup:getSpinnerIconSpriteArrays()`
- `parentGroup:hideSpinnerIcons()`
- `parentGroup:revealSpinnerIcons(_onComplete)`

</details>

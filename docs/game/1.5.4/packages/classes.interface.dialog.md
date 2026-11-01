# classes.interface.dialog

Coromon 1.5.4. 11 module(s). [Back to index](../README.md)

[BattleCornerDialog](#battlecornerdialog), [RogueDialog](#roguedialog), [RogueDialogAnswerSelectionOverlay](#roguedialoganswerselectionoverlay), [RogueDialogOverlay](#roguedialogoverlay), [abstractDialogOverlayBuilder](#abstractdialogoverlaybuilder), [battleDialog](#battledialog), [battleDialogOverlayBuilder](#battledialogoverlaybuilder), [dialog](#dialog), [dialogAnswersOverlayBuilder](#dialoganswersoverlaybuilder), [dialogOverlayBuilder](#dialogoverlaybuilder), [slideViewOverlayBuilder](#slideviewoverlaybuilder)

### BattleCornerDialog

`classes.interface.dialog.BattleCornerDialog`

- returns `t`
- requires: `classes.interface.dialog.battleDialogOverlayBuilder`

- `BattleCornerDialog:isCreated()`
- `BattleCornerDialog:destroy()`
- `BattleCornerDialog:newNonClosable()`
- `BattleCornerDialog:addText(_textOrTexts)`
- `BattleCornerDialog:addQuestion(_answers, _onAnswer)`
- `BattleCornerDialog:onBeforeContinue(_function)`
- `BattleCornerDialog:onTextStarted(_function)`
- `BattleCornerDialog:onTextShown(_function)`
- `BattleCornerDialog:onAfterHide(_function)`

### RogueDialog

`classes.interface.dialog.RogueDialog`

- returns `t`
- requires: `classes.interface.dialog.RogueDialogOverlay`

- `RogueDialog:get()`
- `RogueDialog:isCreated()`
- `RogueDialog:destroy(_isInstantDestroyAfterCreation)`
- `RogueDialog:new(_speakerLeft, _speakerLeftExpression, _speakerRight, _speakerRightExpression)`
- `RogueDialog:switchSpeaker(_oldSpeaker, _newSpeaker, _newSpeakerExpression)`
- `RogueDialog:setSpeakerLeft(_speaker, _expression)`
- `RogueDialog:setSpeakerRight(_speaker, _expression)`
- `RogueDialog:addText(_speaker, _expression, _textOrTexts)`
- `RogueDialog:setAnswersForLastText(_answers, _onAnswer)`
- `RogueDialog:onBeforeContinue(_function)`
- `RogueDialog:onBeforeContinueSetSpeakerExpression(_speaker, _speakerExpression)`
- `RogueDialog:onBeforeContinueSwitchSpeaker(_oldSpeaker, _newSpeaker, _newSpeakerExpression)`
- `RogueDialog:onBeforeContinueSetSpeakerLeft(_newSpeaker, _newSpeakerExpression)`
- `RogueDialog:onBeforeContinueSetSpeakerRight(_newSpeaker, _newSpeakerExpression)`
- `RogueDialog:onTextStarted(_function)`
- `RogueDialog:onTextShown(_function)`
- `RogueDialog:onAfterHide(_function)`

### RogueDialogAnswerSelectionOverlay

`classes.interface.dialog.RogueDialogAnswerSelectionOverlay`

- returns `t`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `RogueDialogAnswerSelectionOverlay:new(_answerContainers, _onAnswer)`

### RogueDialogOverlay

`classes.interface.dialog.RogueDialogOverlay`

- returns `t`
- requires: `classes.interface.dialog.abstractDialogOverlayBuilder`, `classes.interface.dialog.RogueDialogAnswerSelectionOverlay`

- `RogueDialogOverlay:new(_speakerLeft, _speakerLeftExpression, _speakerRight, _speakerRightExpression)`

<details><summary>Instance / other functions (13)</summary>

- `parentGroup:alignText(_text)`
- `parentGroup:getTextFontUID()`
- `parentGroup:setSpeakerExpression(_speaker, _speakerExpression)`
- `parentGroup:switchSpeaker(_oldSpeaker, _newSpeaker, _newSpeakerExpression)`
- `parentGroup:onBeforeOpen()`
- `parentGroup:onShowText(_textStackObject)`
- `parentGroup:showDialogInputIndicator(_direction)`
- `parentGroup:hideDialogInputIndicator()`
- `parentGroup:waitForDialogContinueInput(_onComplete)`
- `parentGroup:waitForDialogScrollDownInput(_onComplete)`
- `parentGroup:showAnswers(_textStackObject, _onAnswer)`
- `parentGroup:addText(_speaker, _expression, _textOrTexts)`
- `parentGroup:setSpeaker(_side, _speaker, _expression)`

</details>

### abstractDialogOverlayBuilder

`classes.interface.dialog.abstractDialogOverlayBuilder`

- returns `t`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `abstractDialogOverlayBuilder:new(_dialogContainer, _textParent, _textWidth, _tickTime, _fillColor)`

<details><summary>Instance / other functions (22)</summary>

- `parentGroup:onShowText(_textStackObject)`
- `parentGroup:alignText(_text)`
- `parentGroup:getAutoCloseTime()`
- `parentGroup:getTextFontUID()`
- `parentGroup:getTextMaxLineCount()`
- `parentGroup:showAnswers(_textStackObject, _onAnswer)`
- `parentGroup:overrideAutoCloseTime(_number)`
- `parentGroup:getOverriddenAutoCloseTime()`
- `parentGroup:waitForDialogContinueInput(_onComplete)`
- `parentGroup:waitForDialogScrollDownInput(_onComplete)`
- `parentGroup:addToTextStack(_textStackObject)`
- `parentGroup:getFirstTextStackObject()`
- `parentGroup:getLastTextStackObject()`
- `parentGroup:addQuestion(_answers, _onAnswer, _shouldDisableAnswer)`
- `parentGroup:addQuestionAndShowGold(_answers, _onAnswer, _shouldDisableAnswer)`
- `parentGroup:addQuestionAndOptionallyShowTrainerHubRecoveriesLeft(_answers, _onAnswer)`
- `parentGroup:setOnBeforeContinue(_function)`
- `parentGroup:setOnTextStarted(_function)`
- `parentGroup:setOnTextShown(_function)`
- `parentGroup:setOnDialogHidden(_function)`
- `parentGroup:showText(_textStackObject)`
- `parentGroup:onOpen()`

</details>

### battleDialog

`classes.interface.dialog.battleDialog`

- returns `t`
- requires: `classes.interface.dialog.battleDialogOverlayBuilder`

- `battleDialog:isCreated()`
- `battleDialog:destroy()`
- `battleDialog:setHeaderText(_headerText)`
- `battleDialog:newNonClosable()`
- `battleDialog:addText(_textOrTexts)`
- `battleDialog:addQuestion(_answers, _onAnswer)`
- `battleDialog:onBeforeContinue(_function)`
- `battleDialog:onTextStarted(_function)`
- `battleDialog:onTextShown(_function)`
- `battleDialog:onAfterHide(_function)`

### battleDialogOverlayBuilder

`classes.interface.dialog.battleDialogOverlayBuilder`

- returns `t`
- requires: `classes.interface.dialog.dialogAnswersOverlayBuilder`, `classes.interface.dialog.abstractDialogOverlayBuilder`, `classes.interface.battle.BattleActionPreviewContainer`

- `battleDialogOverlayBuilder:new(_autoClose)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:alignText(_text)`
- `parentGroup:setHeaderText(_headerText)`
- `parentGroup:showAnswers(_textStackObject, _onAnswer)`
- `parentGroup:addText(_textOrTexts)`
- `parentGroup:getAutoCloseTime()`

</details>

### dialog

`classes.interface.dialog.dialog`

- returns `t`
- requires: `classes.interface.dialog.dialogOverlayBuilder`

- `dialog:get()`
- `dialog:isCreated()`
- `dialog:destroy(_isInstantDestroyAfterCreation)`
- `dialog:new(_spawnable)`
- `dialog:addText(_textOrTexts)`
- `dialog:addQuestion(_answers, _onAnswer, _shouldDisableAnswer)`
- `dialog:addQuestionAndShowGold(_answers, _onAnswer, _shouldDisableAnswer)`
- `dialog:addQuestionAndOptionallyShowTrainerHubRecoveriesLeft(_answers, _onAnswer)`
- `dialog:onBeforeContinue(_function)`
- `dialog:onTextStarted(_function)`
- `dialog:onTextShown(_function)`
- `dialog:onAfterHide(_function)`

### dialogAnswersOverlayBuilder

`classes.interface.dialog.dialogAnswersOverlayBuilder`

- returns `t`
- requires: `classes.interface.overlays.baseOverlayBuilder`

- `dialogAnswersOverlayBuilder:new(_alignDialogAnswersFunction, _textStackObject, _onAnswer, _isInstant)`

### dialogOverlayBuilder

`classes.interface.dialog.dialogOverlayBuilder`

- returns `t`
- requires: `classes.interface.dialog.dialogAnswersOverlayBuilder`, `classes.interface.dialog.abstractDialogOverlayBuilder`

- `dialogOverlayBuilder:new(_speakerObject)`

<details><summary>Instance / other functions (8)</summary>

- `parentGroup:alignText(_text)`
- `parentGroup:showAnswers(_textStackObject, _onAnswer)`
- `parentGroup:showDialogInputIndicator(_direction)`
- `parentGroup:hideDialogInputIndicator()`
- `parentGroup:waitForDialogContinueInput(_onComplete)`
- `parentGroup:waitForDialogScrollDownInput(_onComplete)`
- `parentGroup:addText(_textOrTexts)`
- `parentGroup:onClose()`

</details>

### slideViewOverlayBuilder

`classes.interface.dialog.slideViewOverlayBuilder`

- returns `Obj`
- requires: `classes.interface.overlays.basePopupBuilder`, `classes.modules.interface.slideViewBuilder`

- `slideViewOverlayBuilder:new()`

<details><summary>Instance / other functions (6)</summary>

- `parentGroup:createPage()`
- `page:addTitle(_title)`
- `page:addText(_text, _optionalAdditionalOffset)`
- `page:addObject(_object, _optionalAdditionalOffset)`
- `parentGroup:onBeforeOpen()`
- `parentGroup:onBeforeClose()`

</details>

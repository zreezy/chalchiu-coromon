# classes.questionMarkEvents

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[AbstractQuestionMarkEvent](#abstractquestionmarkevent), [GREEDY_HEALER](#greedy_healer)

### AbstractQuestionMarkEvent

`classes.questionMarkEvents.AbstractQuestionMarkEvent`

- returns `t`

- `AbstractQuestionMarkEvent:new(_value)`

<details><summary>Instance / other functions (5)</summary>

- `event:getAnswerUIDs()`
- `event:onAnswer(_answerUID, _onEventComplete)`
- `event:getLocaliseParams(_answerUID)`
- `event:getLocalisedQuestion()`
- `event:getLocalisedAnswer(_answerUID)`

</details>

### GREEDY_HEALER

`classes.questionMarkEvents.GREEDY_HEALER`

- returns `t`
- requires: `classes.questionMarkEvents.AbstractQuestionMarkEvent`

- `GREEDY_HEALER:new()`

<details><summary>Instance / other functions (3)</summary>

- `event:getAnswerUIDs()`
- `event:getLocaliseParams(_answerUID)`
- `event:onAnswer(_answerUID, _onEventComplete)`

</details>

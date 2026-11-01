# classes.sprites

Coromon 1.5.4. 4 module(s). [Back to index](../README.md)

[Bird](#bird), [CoromonLogo](#coromonlogo), [TRAGsoftLogo](#tragsoftlogo), [TitleScreenBackground](#titlescreenbackground)

### Bird

`classes.sprites.Bird`

- returns `Bird`

- `Bird:new(_parent, _type, _transitionLibrary, _deltaLimits)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:setHoverSequence(_direction)`
- `parentGroup:setMovingSequence(_direction)`
- `parentGroup:tryRandomAction(_onComplete)`
- `parentGroup:up(_deltaTileY, _onComplete)`
- `parentGroup:diagonal(_deltaTileX, _deltaTileY, _onComplete)`

</details>

### CoromonLogo

`classes.sprites.CoromonLogo`

- returns `Obj`

- `CoromonLogo:new(_parent, _imageMutator)`

<details><summary>Instance / other functions (1)</summary>

- `logo:playSwurmySequence(_sequence, _onComplete)`

</details>

### TRAGsoftLogo

`classes.sprites.TRAGsoftLogo`

- returns `Obj`

- `TRAGsoftLogo:newAnimatedAtCenterOfScreen(_parent, _transitionTag, _onComplete)`

### TitleScreenBackground

`classes.sprites.TitleScreenBackground`

- returns `Obj`

- `TitleScreenBackground:createRandomBirdAnimations(_backgroundContainer, _timerTag)`
- `TitleScreenBackground:new(_parent, _type)`

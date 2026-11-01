# classes.interface.games

Coromon 1.5.4. 7 module(s). [Back to index](../README.md)

[FlappySwurmySettingsPopup](#flappyswurmysettingspopup), [MiniGameGamePopup](#minigamegamepopup), [MiniGameResultPopup](#minigameresultpopup), [MiniGameTitleScreenOverlay](#minigametitlescreenoverlay), [SwurmyRushSettingsPopup](#swurmyrushsettingspopup), [flappySwurmyGameBuilder](#flappyswurmygamebuilder), [swurmyRushGameBuilder](#swurmyrushgamebuilder)

### FlappySwurmySettingsPopup

`classes.interface.games.FlappySwurmySettingsPopup`

- returns `Obj`
- requires: `classes.interface.FocusSelector`, `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `FlappySwurmySettingsPopup:new()`

### MiniGameGamePopup

`classes.interface.games.MiniGameGamePopup`

- returns `Obj`
- requires: `classes.interface.overlays.darkOverlayBuilder`, `classes.interface.games.MiniGameResultPopup`, `classes.interface.games.swurmyRushGameBuilder`, `classes.interface.games.flappySwurmyGameBuilder`

- `MiniGameGamePopup:new(_miniGameUID, _onScoreObtained)`

<details><summary>Instance / other functions (5)</summary>

- `parentGroup:getGamePopupBackground()`
- `parentGroup:getGamePopupBackgroundContentGroup()`
- `parentGroup:setGameNavigation(_navigation)`
- `parentGroup:onOpen()`
- `parentGroup:onBeforeClose()`

</details>

### MiniGameResultPopup

`classes.interface.games.MiniGameResultPopup`

- returns `Obj`
- requires: `classes.interface.overlays.FadingGradientOverlay`

- `MiniGameResultPopup:new(_miniGameUID, _currentScore, _highestScore, _callbacks, _rolledPotentialCategory)`

### MiniGameTitleScreenOverlay

`classes.interface.games.MiniGameTitleScreenOverlay`

- returns `Obj`
- requires: `classes.interface.overlays.baseOverlayBuilder`, `classes.interface.games.MiniGameGamePopup`, `classes.interface.games.swurmyRushGameBuilder`, `classes.interface.games.flappySwurmyGameBuilder`

- `MiniGameTitleScreenOverlay:new(_miniGameUID, _onAfterClose)`

<details><summary>Instance / other functions (1)</summary>

- `parentGroup:onBeforeClose()`

</details>

### SwurmyRushSettingsPopup

`classes.interface.games.SwurmyRushSettingsPopup`

- returns `Obj`
- requires: `classes.interface.FocusSelector`, `classes.interface.overlays.AbstractContentContainerWithHeaderPopup`

- `SwurmyRushSettingsPopup:new()`

### flappySwurmyGameBuilder

`classes.interface.games.flappySwurmyGameBuilder`

- returns `Obj`
- requires: `classes.interface.games.FlappySwurmySettingsPopup`

- `flappySwurmyGameBuilder:preloadTextures()`
- `flappySwurmyGameBuilder:releaseTextures()`
- `flappySwurmyGameBuilder:newSettingsPopup()`
- `flappySwurmyGameBuilder:newTitleScreen(_parent)`
- `flappySwurmyGameBuilder:newGame(_gamePopup, _fullTouchRect, _leftTouchRect, _rightTouchRect, _onGameFinished)`

<details><summary>Instance / other functions (2)</summary>

- `parentGroup:updateScrollingEnvironment(_deltaSeconds)`
- `swurmySpriteContainer:startJumping()`

</details>

### swurmyRushGameBuilder

`classes.interface.games.swurmyRushGameBuilder`

- returns `Obj`
- requires: `classes.interface.games.SwurmyRushSettingsPopup`

- `swurmyRushGameBuilder:preloadTextures()`
- `swurmyRushGameBuilder:releaseTextures()`
- `swurmyRushGameBuilder:newSettingsPopup()`
- `swurmyRushGameBuilder:newTitleScreen(_parent)`
- `swurmyRushGameBuilder:newGame(_gamePopup, _fullTouchRect, _leftTouchRect, _rightTouchRect, _onGameFinished)`

<details><summary>Instance / other functions (7)</summary>

- `electricBeetleWithCloudContainer:pause()`
- `parentGroup:updateScrollingEnvironment(_deltaSeconds)`
- `swurmySprite:startJumping()`
- `swurmySprite:stopJumping()`
- `swurmySprite:startDucking()`
- `swurmySprite:stopDucking()`
- `parentGroup:updateSwurmy(_deltaSeconds)`

</details>

# classes.spawnables.characterSprites

Coromon 1.5.4. 1 module(s). [Back to index](../README.md)

[modularCharacterSprite](#modularcharactersprite)

### modularCharacterSprite

`classes.spawnables.characterSprites.modularCharacterSprite`

- returns `t`

- `modularCharacterSprite:new(_parent, characterConfig, _includeArmAnimations, _mutator)`
- `modularCharacterSprite:newHead(_parent, _characterConfig, _characterConfigModifier, _additionalYOffsetWithinContainer, _additionalHeight)`
- `modularCharacterSprite:newBody(_parent, _characterConfig, _characterConfigModifier)`

<details><summary>Instance / other functions (17)</summary>

- `characterSprite:setHeadLayerLocation()`
- `characterSprite:addPartSprite(_partKey, _partConfig)`
- `characterSprite:setFrame(_frame)`
- `characterSprite:setSequenceWithoutReset(_sequence)`
- `characterSprite:isDoingWalkAnimation()`
- `characterSprite:doWalkAnimation(_timePerFrame, _shouldRotateEveryTwoSequences, _shouldStopAfterFullRotate)`
- `self.walkAnimationFunction(event)`
- `characterSprite:stopWalkAnimation()`
- `characterSprite:getFirstArmAnimationPartSprite()`
- `characterSprite:doArmUpStartAnimation(_shouldCharge, _onComplete)`
- `characterSprite:doArmUpEndAnimation(_shouldCharge, _onComplete)`
- `characterSprite:doArmFrontStartAnimation(_shouldCharge, _direction, _onComplete)`
- `characterSprite:doArmFrontEndAnimation(_direction, _onComplete)`
- `characterSprite:createCharacterHead(_parent, _characterConfigModifier)`
- `characterSprite:createCharacterBody(_parent, _characterConfigModifier)`
- `characterSprite:getCharacterConfig()`
- `characterSprite:setCharacterConfig(_newCharacterConfig)`

</details>

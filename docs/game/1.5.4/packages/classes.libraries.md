# classes.libraries

Coromon 1.5.4. 15 module(s). [Back to index](../README.md)

[Window](#window), [array](#array), [device](#device), [display](#display), [easing](#easing), [global](#global), [math](#math), [math2d](#math2d), [os](#os), [string](#string), [table](#table), [timer](#timer), [transition](#transition), [utf8](#utf8), [vararg](#vararg)

### Window

`classes.libraries.Window`

- returns `t`

- `Window:setFullscreen(_boolean)`
- `Window:isFullscreen()`
- `Window:setScale(_contentToScreenScale)`

### array

`classes.libraries.array`

- returns `array`

- `array.forEach(_array, _function)`
- `array.forEachReversed(_array, _function)`
- `array.processed(_array, _function)`
- `array.reduce(_array, _function, _start)`
- `array.reduceStartingWithFirst(_array, _function)`
- `array.distinct(_array)`
- `array.sum(_array, _function)`
- `array.average(_array, _function)`
- `array.equals(_array1, _array2)`
- `array.equalValues(_array1, _array2)`
- `array.split(_array, _function)`
- `array.groupBy(_array, _function)`
- `array.groupByChildren(_group, _function)`
- `array.groupByToArrayIfSorted(_array, _function)`
- `array.groupByToArrayIfNotSorted(_array, _function)`
- `array.count(_array, _obj)`
- `array.countByFunction(_array, _function)`
- `array.countToTable(_array, _mapperFunction)`
- `array.union(...)`
- `array.add(_primaryArray, ...)`
- `array.addIfNotExists(_primaryArray, ...)`
- `array.replaceByFunction(_array, _function)`
- `array.map(_array, _mapperFunction)`
- `array.mapReversed(_array, _mapperFunction)`
- `array.mapWithNils(_array, _mapperFunction)`
- `array.mapDistinct(_array, _mapperFunction)`
- `array.mapToSet(_array, _mapperFunction)`
- `array.mapToTable(_array, _mapperFunction)`
- `array.mapToTableWithValue(_array, _function)`
- `array.mapToTableWithKey(_array, _function)`
- `array.flatMap(_array, _function)`
- `array.flatMapDistinct(_array, _function)`
- `array.flatten(_array, _function)`
- `array.flattenRecursive(_array, _function)`
- `array.flattenIncludingParentRecursive(_array, _function)`
- `array.flattenIncludingParentRecursiveDistinct(_array, _function)`
- `array.flattenDisplayGroupRecursive(_group, _getGroupToFlattenFunction)`
- `array.flattenDisplayGroupIncludingParentRecursive(_group, _getGroupToFlattenFunction)`
- `array.reversed(_array)`
- `array.reverseRange(_array, _start, _end)`
- `array.construct(_amount, _value)`
- `array.constructRepeatingSequence(_amount, _sequence)`
- `array.constructRange(_start, _end)`
- `array.constructDescendingRange(_start, _end)`
- `array.constructSequence(_amount)`
- `array.constructByInLoop(...)`
- `array.constructByFunction(_amount, _function)`
- `array.constructByFunctionWithNils(_amount, _function)`
- `array.findByFunction(_array, _function)`
- `array.findByFunctionWithIndex(_array, _function)`
- `array.findByFunctionReversed(_array, _function)`
- `array.findValueByFunction(_array, _function)`
- `array.findValueByFunctionReversed(_array, _function)`
- `array.findValueByFunctionWithIndex(_array, _function)`
- `array.findIndexByFunction(_array, _function)`
- `array.findIndexByFunctionReversed(_array, _function)`
- `array.getByFunction(_array, _function)`
- `array.getByFunctionWithIndex(_array, _function)`
- `array.getByFunctionReversed(_array, _function)`
- `array.getValueByFunction(_array, _function)`
- `array.getIndexByFunction(_array, _function)`
- `array.getIndexByFunctionReversed(_array, _function)`
- `array.filter(_array, _function)`
- `array.filterIfNot(_array, _function)`
- `array.filterToMatching(_array, _otherArray)`
- `array.filterToMissing(_array, _otherArray)`
- `array.findMin(_array, _function)`
- `array.findMinWithIndex(_array, _function)`
- `array.findMinIfNotDuplicateValue(_array, _function)`
- `array.findMax(_array, _function)`
- `array.findMaxWithIndex(_array, _function)`
- `array.findMinWithValue(_array, _function)`
- `array.findMaxWithValue(_array, _function)`
- `array.findMinInGroup(_group, _function)`
- `array.findMaxInGroup(_group, _function)`
- `array.findMinValue(_array, _function)`
- `array.findMinValueInGroup(_group, _function)`
- `array.findMinIndex(_array, _function)`
- `array.findMaxIndex(_array, _function)`
- `array.findMaxValue(_array, _function)`
- `array.findMaxValueInGroup(_group, _function)`
- `array.allMatches(_array, _function)`
- `array.noneMatches(_array, _function)`
- `array.anyMatches(_array, _function)`
- `array.indexOf(_array, _object)`
- `array.indexOfChild(_group, _child)`
- `array.indexFromEnd(_array, _object)`
- `array.contains(_array, _object)`
- `array.containsAll(_array, _objectsToMatch)`
- `array.containsAny(_array, _objectsToMatch)`
- `array.containsDuplicate(_array, _mapperFunction)`
- `array.copy(_array)`
- `array.rep(_array, _amountOfRepeats)`
- `array.roll(_array, _total, _getDistributionValueFunction, _resultMapperFunction)`
- `array.rollFromTotal(_array, _getDistributionValueFunction)`
- `array.rollFromTotalWithNegatives(_array, _getDistributionValueFunction)`
- `array.shuffle(_array)`
- `array.hardShuffle(_array)`
- `array.shuffled(_array)`
- `array.hardShuffled(_array)`
- `array.toRandomizationTable(_array)`
- `array.random(_array)`
- `array.randomExcept(_array, _exception)`
- `array.tryGetRandom(_array)`
- `array.swap(_array, _object1, _object2)`
- `array.swapByIndex(_array, _index1, _index2)`
- `array.clear(_array)`
- `array.removeMultiple(_primaryArray, _arrayToRemove)`
- `array.removeByFunction(_array, _function)`
- `array.removeMultipleByFunction(_array, _function)`
- `array.removeMultipleByFunctionRecursive(_array, _shouldRemoveFunction, _getInnerArrayFunction)`
- `array.removeRandom(_array)`
- `array.removeRandoms(_amount, _array)`
- `array.next(_array, _obj)`
- `array.nextOrCurrent(_array, _obj)`
- `array.nextOrFirst(_array, _obj)`
- `array.previousOrCurrent(_array, _obj)`
- `array.previousOrLast(_array, _obj)`
- `array.last(_array)`
- `array.insert(_array, _objectOrPosition, _object)`
- `array.insertIfNotNil(_array, _object)`
- `array.remove(_array, _objectOrPosition)`
- `array.moveToFront(_array, _object)`
- `array.moveToBack(_array, _object)`
- `array.removeSortedIndices(_array, _indices)`
- `array.removeUnsortedIndices(_array, _indices)`
- `array.removeOneFromStart(_array)`
- `array.removeOneFromEnd(_array)`
- `array.removeMultipleFromStart(_array, _amount)`
- `array.removeMultipleFromEnd(_array, _amount)`
- `array.without(_array, _object)`
- `array.sort(_array, _comparator)`
- `array.sorted(_array, _comparator)`
- `array.sortedIncreasing(_array, _optionalGetPropertyFunction)`
- `array.sortedDecreasing(_array, _optionalGetPropertyFunction)`
- `array.sortIncreasing(_array, _optionalGetPropertyFunction)`
- `array.sortDecreasing(_array, _optionalGetPropertyFunction)`
- `array.sortChildren(_group, _getPropertyFunction)`
- `array.convertToSet(_array)`
- `array.traverseUntilTrue(_array, _startIndex, _function)`
- `array.range(_array, _startIndex, _endIndex)`
- `array.rangeReversed(_array, _startIndex, _endIndex)`
- `array.rangeUntilEnd(_array, _startIndex)`
- `array.rangeFromEnd(_array, _amountOfEntriesFromEnd)`

### device

`classes.libraries.device`

- returns `t`
- requires: `classes.require_desktop_plugin`, `classes.require_ios_appstore`, `classes.require_android_appstore`

- `device:calculateWidthCompactnessFactorFor(_maximumWidth)`
- `device:calculateHeightCompactnessFactorFor(_maximumHeight)`
- `device:hasToUnlockFullGame()`
- `device:isSwitchWithoutOnline()`

<details><summary>Fields with default values (17)</summary>

- `device.isRunningOnWindows` = `true`
- `device.isRunningOnMacOS` = `true`
- `device.isSimulator` = `true`
- `device.isIOS` = `true`
- `device.isAndroid` = `true`
- `device.isWindows` = `true`
- `device.isMacOS` = `true`
- `device.isTvOS` = `true`
- `device.isSwitch` = `true`
- `device.isLinux` = `true`
- `device.isOnAppleAppStore` = `true`
- `device.supportsOpenSSL` = `true`
- `device.supportsPushNotifications` = `false`
- `device.usesICloud` = `false`
- `device.targetAppStore` = `"none"`
- `device.iOSMajorVersion` = `0`
- `device.iOSMinorVersion` = `0`

</details>

### display

`classes.libraries.display`

- returns `display`
- defines globals: `display` = display

- `display:setDebugTimeScale(_timeScale)`
- `display:setTimeScale(_timeScale)`
- `display:handleWeirdReloadingBug(_obj)`
- `display.setVisible(_obj)`
- `display.setInvisible(_obj)`
- `display.getWidth(_obj)`
- `display.getHeight(_obj)`
- `display.isActuallyVisible(_obj)`
- `display.findMaxWidth(_array)`
- `display.findMaxHeight(_array)`
- `display:getObjectAtLocation(_group, _x, _y, _filterFunction)`
- `display:useLinearFilter(_function)`
- `display:isWithin(_displayObject, _x, _y, _extraOffsets)`
- `display:isOutsideClippingGroup(_object, _x, _y)`
- `display:xToColumn(_columns, _x, _displayObject)`
- `display:yToRow(_columns, _y, _displayObject)`
- `display:isLeftHalfOf(_displayObject, _x)`
- `display:isLeftHalfOfOrFurtherThan(_displayObject, _x)`
- `display:isRightHalfOf(_displayObject, _x)`
- `display:isRightHalfOfOrFurtherThan(_displayObject, _x)`
- `display:isTopHalfOf(_displayObject, _y)`
- `display:isBottomHalfOf(_displayObject, _y)`
- `display:isFullyRendered(_displayObject)`
- `display:isAtLeastPartiallyRendered(_displayObject)`
- `display:isWithinScreenWidth(_displayObject)`
- `display:isWithinScreenHeight(_displayObject)`
- `display:isWithinObject(_smallObject, _bigObject, _extraOffsets)`
- `display:getHeuristicDistanceFromCenterOfScreen(_displayObject, _xOffset, _yOffset)`
- `display:isColliding(_displayObject1, _displayObject2)`
- `display:isAt(_displayObject, _x, _y)`
- `display:drawBounds(_bounds)`
- `display:newLazyLoadable(_parent, _width, _height, _onCreateActualObject)`
- `display:newPrepared(_preparedObject)`
- `display:spawnPrepared(_parent, _preparedObject)`
- `display.saveToFile(_displayObject, _options)`
- `display:isDisplayObject(_displayObject)`
- `display:isSpriteObject(_displayObject)`
- `display:isDisplayGroup(_displayObject)`
- `display:isOrWasDisplayGroup(_displayObject)`
- `display:getParentParam(...)`
- `display:getChildrenRecursive(_group)`
- `display:getChildrenIncludingParentRecursive(_group)`
- `display:getContentBounds(_displayObject)`
- `display:swap(_displayObject1, _displayObject2)`
- `display:applyDisplayObjectMutations(_displayObject, _mutator)`
- `display:applyRectMutations(_displayObject, _mutator)`
- `display.translateAll(_table, _deltaX, _deltaY)`
- `display.clear(_group)`
- `display.removeAll(...)`
- `display:repeatWithin(_container, _createObjectFunction)`
- `display:horizontallyRepeatWithin(_container, _createObjectFunction)`
- `display:verticallyRepeatWithin(_container, _createObjectFunction)`
- `display:addPropertyChangeListener(_displayObject, _key, _function)`
- `display:synchronizeProperties(_master, _child)`

<details><summary>Instance / other functions (2)</summary>

- `container:onPositionChanged()`
- `proxy:translate(_x, _y)`

</details>

<details><summary>Fields with default values (1)</summary>

- `display.timeScale` = `1`

</details>

### easing

`classes.libraries.easing`

- defines globals: `outInQuad` = function(t, tMax, start, delta, propertyName), `parabola` = function(_parabolaDelta, _easing), `accelerate` = function(_delta, _initialSpeed, _targetSpeed), `percentages` = function(_percentages), `steps` = function(_steps), `inElasticCustom` = function(a, p), `outElasticCustom` = function(a, p), `inOutElasticCustom` = function(a, p), `outInElasticCustom` = function(a, p), `outBackCustom` = function(_s), `inBackCustom` = function(_s), `inOutBackCustom` = function(_s), `outInBackCustom` = function(_s), `linear` = function(t, tMax, start, delta, propertyName), `inQuad` = function(t, tMax, start, delta, propertyName), `outQuad` = function(t, tMax, start, delta, propertyName), `inOutQuad` = function(t, tMax, start, delta, propertyName), `inCubic` = function(t, tMax, start, delta, propertyName), `outCubic` = function(t, tMax, start, delta, propertyName), `inOutCubic` = function(t, tMax, start, delta, propertyName), `outInCubic` = function(t, tMax, start, delta, propertyName), `inQuart` = function(t, tMax, start, delta, propertyName), `outQuart` = function(t, tMax, start, delta, propertyName), `inOutQuart` = function(t, tMax, start, delta, propertyName), `outInQuart` = function(t, tMax, start, delta, propertyName), `inQuint` = function(t, tMax, start, delta, propertyName), `outQuint` = function(t, tMax, start, delta, propertyName), `inOutQuint` = function(t, tMax, start, delta, propertyName), `outInQuint` = function(t, tMax, start, delta, propertyName), `inSine` = function(t, tMax, start, delta, propertyName), `outSine` = function(t, tMax, start, delta, propertyName), `inOutSine` = function(t, tMax, start, delta, propertyName), `outInSine` = function(t, tMax, start, delta, propertyName), `inExpo` = function(t, tMax, start, delta, propertyName), `outExpo` = function(t, tMax, start, delta, propertyName), `inOutExpo` = function(t, tMax, start, delta, propertyName), `outInExpo` = function(t, tMax, start, delta, propertyName), `inCirc` = function(t, tMax, start, delta, propertyName), `outCirc` = function(t, tMax, start, delta, propertyName), `inOutCirc` = function(t, tMax, start, delta, propertyName), `outInCirc` = function(t, tMax, start, delta, propertyName), `inBack` = function(t, tMax, start, delta, propertyName, s), `outBack` = function(t, tMax, start, delta, propertyName, s), `inOutBack` = function(t, tMax, start, delta, propertyName, s), `outInBack` = function(t, tMax, start, delta, propertyName, s), `outBounce` = function(t, tMax, start, delta, propertyName), `inBounce` = function(t, tMax, start, delta, propertyName), `inOutBounce` = function(t, tMax, start, delta, propertyName), `outInBounce` = function(t, tMax, start, delta, propertyName), `continuousLoop` = function(t, tMax, start, delta, propertyName)

<details><summary>Functions (50)</summary>

- `outInQuad(t, tMax, start, delta, propertyName)`
- `parabola(_parabolaDelta, _easing)`
- `accelerate(_delta, _initialSpeed, _targetSpeed)`
- `percentages(_percentages)`
- `steps(_steps)`
- `inElasticCustom(a, p)`
- `outElasticCustom(a, p)`
- `inOutElasticCustom(a, p)`
- `outInElasticCustom(a, p)`
- `outBackCustom(_s)`
- `inBackCustom(_s)`
- `inOutBackCustom(_s)`
- `outInBackCustom(_s)`
- `linear(t, tMax, start, delta, propertyName)`
- `inQuad(t, tMax, start, delta, propertyName)`
- `outQuad(t, tMax, start, delta, propertyName)`
- `inOutQuad(t, tMax, start, delta, propertyName)`
- `inCubic(t, tMax, start, delta, propertyName)`
- `outCubic(t, tMax, start, delta, propertyName)`
- `inOutCubic(t, tMax, start, delta, propertyName)`
- `outInCubic(t, tMax, start, delta, propertyName)`
- `inQuart(t, tMax, start, delta, propertyName)`
- `outQuart(t, tMax, start, delta, propertyName)`
- `inOutQuart(t, tMax, start, delta, propertyName)`
- `outInQuart(t, tMax, start, delta, propertyName)`
- `inQuint(t, tMax, start, delta, propertyName)`
- `outQuint(t, tMax, start, delta, propertyName)`
- `inOutQuint(t, tMax, start, delta, propertyName)`
- `outInQuint(t, tMax, start, delta, propertyName)`
- `inSine(t, tMax, start, delta, propertyName)`
- `outSine(t, tMax, start, delta, propertyName)`
- `inOutSine(t, tMax, start, delta, propertyName)`
- `outInSine(t, tMax, start, delta, propertyName)`
- `inExpo(t, tMax, start, delta, propertyName)`
- `outExpo(t, tMax, start, delta, propertyName)`
- `inOutExpo(t, tMax, start, delta, propertyName)`
- `outInExpo(t, tMax, start, delta, propertyName)`
- `inCirc(t, tMax, start, delta, propertyName)`
- `outCirc(t, tMax, start, delta, propertyName)`
- `inOutCirc(t, tMax, start, delta, propertyName)`
- `outInCirc(t, tMax, start, delta, propertyName)`
- `inBack(t, tMax, start, delta, propertyName, s)`
- `outBack(t, tMax, start, delta, propertyName, s)`
- `inOutBack(t, tMax, start, delta, propertyName, s)`
- `outInBack(t, tMax, start, delta, propertyName, s)`
- `outBounce(t, tMax, start, delta, propertyName)`
- `inBounce(t, tMax, start, delta, propertyName)`
- `inOutBounce(t, tMax, start, delta, propertyName)`
- `outInBounce(t, tMax, start, delta, propertyName)`
- `continuousLoop(t, tMax, start, delta, propertyName)`

</details>

### global

`classes.libraries.global`

- defines globals: `pack` = function(...), `execute` = function(_function, ...), `wrapFunctions` = function(...), `negate` = function(_booleanFunction), `toboolean` = function(_value), `unrequire` = function(_modulePath), `requireOnce` = function(_modulePath), `crash` = function(), `pairsWithIndex` = function(_table), `orderedPairs` = function(_table), `orderedPairsNext` = function(_table, _previousKey), `orderedPairsWithIndex` = function(_table)

<details><summary>Functions (12)</summary>

- `pack(...)`
- `execute(_function, ...)`
- `wrapFunctions(...)`
- `negate(_booleanFunction)`
- `toboolean(_value)`
- `unrequire(_modulePath)`
- `requireOnce(_modulePath)`
- `crash()`
- `pairsWithIndex(_table)`
- `orderedPairs(_table)`
- `orderedPairsNext(_table, _previousKey)`
- `orderedPairsWithIndex(_table)`

</details>

### math

`classes.libraries.math`

- defines globals: `math` = math

- `math.getAmountOfRandomCalls()`
- `math.getUnexpectedRandomCallFileAndLineNumbers()`
- `math.getExpectedRandomCallFileAndLineNumbers()`
- `math.withRandomseed(_seed, _function)`
- `math.randomseed(_seed)`
- `math.toStage(_stages, _percentage)`
- `math.toBits(_number, _amountOfBits)`
- `math.toBooleanBits(_number, _amountOfBits)`
- `math.zeroTo(_max, _value)`
- `math.oneTo(_max, _value)`
- `math.getHeuristicDistance(_from, _to)`
- `math.getEuclideanDistance(_from, _to)`
- `math.getEuclideanDistanceForEdges(_rectangle1, _rectangle2)`
- `math.between(_value, _low, _high)`
- `math.betweenSafe(_value, _val1, _val2)`
- `math.betweenExclusiveStart(_value, _low, _high)`
- `math.betweenExclusiveEnd(_value, _low, _high)`
- `math.clamp(_value, _low, _high)`
- `math.clampAndReturnDirectionNumber(_value, _low, _high)`
- `math.getScaledValueRounded(_minimumValue, _maximumValue, _scale)`
- `math.isPositive(_value)`
- `math.isNegative(_value)`
- `math.greatestCommonDivisor(_val1, _val2)`
- `math.greatestCommonDivisorOfArray(_values)`
- `math.greatestCommonDivisorByFunction(_table, _function)`
- `math.randomArgument(...)`
- `math.randomOneOrMinusOne()`
- `math.randomBoolean()`
- `math.randomPositiveOrNegative(_value)`
- `math.randomWithDeviation(_number, _deviation)`
- `math.round(_number)`
- `math.floorByInterval(_number, _interval)`
- `math.ceilByInterval(_number, _interval)`
- `math.roundByInterval(_number, _interval)`
- `math.roundToNearestPowerOfTwo(_number)`
- `math.roundedDivideIntoTwo(_number)`
- `math.roundedDivideIntoThree(_number)`
- `math.spreadOut(_totalValue, _amountOfParts)`
- `math.spreadOutWithMaxDifference(_totalValue, _amountOfParts, _maxDifferenceFactor)`
- `math.randomDistribution(_totalValue, _amountOfParts, _possibleValuesOptionallyContainingDuplicates)`
- `math.chance(_percentage)`
- `math.randomOneIn(_number)`
- `math.minusOrNil(_value)`
- `math.newCounter()`
- `math.addOneToKey(_map, _key)`
- `math.removeOneFromKey(_map, _key)`

<details><summary>Instance / other functions (3)</summary>

- `map:add(_object)`
- `map:subtract(_object)`
- `map:isZero(_object)`

</details>

### math2d

`classes.libraries.math2d`

- returns `lib`

- `math2d.add(...)`
- `math2d.fast.add(x1, y1, x2, y2)`
- `math2d.sub(...)`
- `math2d.fast.sub(x1, y1, x2, y2)`
- `math2d.diff(...)`
- `math2d.fast.diff(x1, y1, x2, y2)`
- `math2d.dot(...)`
- `math2d.fast.dot(x1, y1, x2, y2)`
- `math2d.cross(...)`
- `math2d.fast.cross(x1, y1, x2, y2)`
- `math2d.length(...)`
- `math2d.fast.length(x, y)`
- `math2d.length2(...)`
- `math2d.fast.length2(x, y)`
- `math2d.scale(...)`
- `math2d.fast.scale(x, y, scale)`
- `math2d.normalize(...)`
- `math2d.fast.normalize(x, y)`
- `math2d.normals(...)`
- `math2d.fast.normals(x, y)`
- `math2d.vector2Angle(...)`
- `math2d.fast.vector2Angle(x, y)`
- `math2d.angle2Vector(angle, tableRet)`
- `math2d.fast.angle2Vector(angle)`

<details><summary>Fields with default values (1)</summary>

- `math2d.fast` = `{}`

</details>

### os

`classes.libraries.os`

- defines globals: `os` = os

- `os.parse(_date)`
- `os.timeInMilliseconds()`
- `os.executeMove(_fromPath, _fromFile, _toPath, _optionalToFile)`
- `os.executeCopy(_fromPath, _fromFile, _toPath, _optionalToFile)`
- `os.executeRemove(_path, _file)`
- `os.executeMakeDir(_path)`
- `os.executeRemoveDir(_path)`
- `os.executeReplaceDir(_path)`
- `os.removePngMetadata(_path, _file)`
- `os.convertGifToSquare(_path, _fileWithoutExtension, _size)`
- `os.convertGifToMp4(_path, _fileWithoutExtension)`
- `os.convertImagesToGif(_path, _fileWithoutExtension, _frames, _options)`

<details><summary>Fields with default values (1)</summary>

- `os.separator` = `"/"`

</details>

### string

`classes.libraries.string`

- `string.splitPath(_path)`
- `string.splitExtension(_path)`
- `string.split(_string, _stringToMatch)`
- `string.splitByLength(_string, _length)`
- `string.toArray(_string)`
- `string.toHex(_string)`
- `string.fromHex(_string)`
- `string.removeFromLeft(_string, _amountOfCharacters)`
- `string.removeFromRight(_string, _amountOfCharacters)`
- `string.findNthIndexOf(_string, _stringToMatch, _nth)`
- `string.subAfterFirstIndexOf(_string, _stringToMatch, _nth)`
- `string.subAfterLastIndexOf(_string, _stringToMatch, _nth)`
- `string.subBeforeFirstIndexOf(_string, _stringToMatch, _nth)`
- `string.subBeforeLastIndexOf(_string, _stringToMatch, _nth)`
- `string.charAt(_string, _index)`
- `string.starts(_string, prefix)`
- `string.ends(_string, suffix)`
- `string.matchesAny(_string, _stringsToMatch)`
- `string.contains(_string, _stringToMatch)`
- `string.containsAny(_string, _stringsToMatch)`
- `string.isEmpty(_string)`
- `string.getAmountOfMatches(_string, _part)`
- `string.getLongestCommonPrefixOf(_strings)`
- `string.capitalise(_string)`
- `string.formatAsMinuteSecond(_seconds)`
- `string.formatAsHourMinute(_seconds)`
- `string.formatAsHourMinuteSecond(_seconds)`
- `string.addAfterFirstIndex(_string, _stringToMatch, _nth, _stringToAdd)`
- `string.addAfterLastIndex(_string, _stringToMatch, _nth, _stringToAdd)`
- `string.addBeforeExtension(_path, _string)`
- `string.wrapWithDoubleQuotes(_string)`
- `string.removePrefix(_string, _prefix)`
- `string.removeSuffix(_string, _suffix)`
- `string.removeDoubleQuotes(_string)`
- `string.replace(_string, _match, _replaceWith)`
- `string.replaceMany(_string, _matchesAndReplacements)`
- `string.remove(_string, _match)`
- `string.gsubEscape(_string)`
- `string.construct(_amountOfCharacters, _character)`
- `string.constructByFunction(_amountOfCharacters, _function)`
- `string.randomChar(_maxIndexInAlphabet)`
- `string.random(_amountOfCharacters)`
- `string.randomWithoutUpperCase(_amountOfCharacters)`
- `string.normalizePath(_path)`
- `string.toUpperCaseAlphabeticCharacter(_number)`
- `string.toLowerCaseAlphabeticCharacter(_number)`
- `string.fromUpperCaseAlphabeticCharacter(_character)`
- `string.fromLowerCaseAlphabeticCharacter(_character)`
- `string.optionallyMaskProfanityWordsForNintendo(_string)`

### table

`classes.libraries.table`

- defines globals: `table` = table

- `table.forEach(_table, _function)`
- `table.forEachSorted(_table, _function)`
- `table.forEachRecursive(_table, _function)`
- `table.processed(_table, _function)`
- `table.mapToPercentages(_table)`
- `table.sum(_table, _function)`
- `table.average(_table, _function)`
- `table.equals(_table1, _table2)`
- `table.deepequals(_table1, _table2)`
- `table.group(_table, _function)`
- `table.groupSortedByKey(_table, _function)`
- `table.groupKeys(_table, _function)`
- `table.groupKeysSortedByKey(_table, _function)`
- `table.groupValues(_table, _function)`
- `table.groupValuesSortedByKey(_table, _function)`
- `table.countKeys(_table)`
- `table.countKeysByFunction(_table, _function)`
- `table.switch(_table, _key1, _key2)`
- `table.merged(_primaryTable, _secondaryTable)`
- `table.merge(_primaryTable, _secondaryTable)`
- `table.mergeSafe(_primaryTable, _secondaryTable)`
- `table.mergeIfNotExists(_primaryTable, _secondaryTable)`
- `table.map(_table, _function)`
- `table.mapToArray(_table, _function)`
- `table.mapKeysToArray(_table, _function)`
- `table.mapValuesToArray(_table, _function)`
- `table.flatMap(_table, _function)`
- `table.flatMapDistinct(_table, _function)`
- `table.modifyKeys(_table, _function)`
- `table.reverseKeyValue(_table)`
- `table.findKeyByFunction(_table, _function)`
- `table.findValueByFunction(_table, _function)`
- `table.allMatches(_table, _function)`
- `table.noneMatches(_table, _function)`
- `table.anyMatches(_table, _function)`
- `table.filter(_table, _function)`
- `table.filterToValues(_table, _function)`
- `table.filterToValuesSortedByReturnValue(_table, _function)`
- `table.filterToValuesSortedByKey(_table, _function)`
- `table.filterToKeys(_table, _function)`
- `table.filterToKeysSorted(_table, _function, _sortValueFunction)`
- `table.filterToNonEqual(_table, _otherTable, _calculateDifferenceFunction)`
- `table.findMax(_table, _function)`
- `table.findMaxWithValue(_table, _function)`
- `table.findMaxKey(_table, _function)`
- `table.findMaxValue(_table, _function)`
- `table.findMaxKeyValue(_table, _function)`
- `table.findKeysWithMaxValue(_table, _function)`
- `table.findMin(_table, _function)`
- `table.findMinWithValue(_table, _function)`
- `table.findMinKey(_table, _function)`
- `table.findMinValue(_table, _function)`
- `table.findMinKeyValue(_table, _function)`
- `table.findKeysWithMinValue(_table, _function)`
- `table.findKeyByValue(_table, _value)`
- `table.containsValue(_table, _object)`
- `table.clone(_table)`
- `table.cloneWithMetatable(_table)`
- `table.deepclone(_table)`
- `table.deepcloneWithMetatable(_table)`
- `table.rollKey(_table, _total)`
- `table.rollKeyFromTotal(_table)`
- `table.randomKey(_table)`
- `table.randomValue(_table)`
- `table.randomKeyValue(_table)`
- `table.removeKey(_table, _key)`
- `table.removeKeysByValue(_table, _valueToRemove)`
- `table.getKeys(_table)`
- `table.getValues(_table)`
- `table.getValuesSortedByKey(_table)`
- `table.getKeysSorted(_table, _sortValueFunction)`
- `table.getKeysSortedDecreasing(_table, _sortValueFunction)`
- `table.isArray(_table)`
- `table.isNumberArray(_table)`
- `table.print(_tableToPrint)`

### timer

`classes.libraries.timer`

- returns `t`
- defines globals: `timer` = table, `nextFrame` = function(_onNextFrame), `nextFrameFunction` = function(_onNextFrame)

- `timer:enterFrame(event)`
- `timer.performWithDelay(_delay, _listener, _iterationsOrTag, ...)`
- `timer.performWithDelayIgnoringTimescale(_delay, _listener, _iterationsOrTag, ...)`
- `timer.performWithDelayAndNow(_delay, _listener, _iterationsOrTag, ...)`
- `timer.performWithDelayArray(_delayArray, _listener, _onComplete, ...)`
- `timer.performWithRepeatingDelayArray(_delayArray, _listener, ...)`
- `timer.performWithRandomDelay(_minTime, _maxTime, _listener, _iterationsOrTag, ...)`
- `timer.performWithRandomDelayAndNow(_minTime, _maxTime, _listener, _iterationsOrTag, ...)`
- `timer.cancel(_entryOrTag)`
- `timer.cancelAll()`
- `timer.pause(_entryOrTag)`
- `timer.isPaused(_entry)`
- `timer.resume(_entryOrTag)`
- `timer.complete(_entryOrTag)`
- `timer.untilObjectDestroyed(_object, _entry)`
- `timer.delay(_time, _listener, _iterationsOrTag)`
- `timer.blockingDelay(_time, _listener)`
- `timer.atleast(_time, _listener)`
- `timer.toggle(...)`
- `timer.toggleWithOnComplete(...)`
- `timer.toggleVisibility(_obj, _onComplete)`

<details><summary>Instance / other functions (2)</summary>

- `nextFrame(_onNextFrame)`
- `nextFrameFunction(_onNextFrame)`

</details>

<details><summary>Fields with default values (1)</summary>

- `timer.timeScale` = `1`

</details>

### transition

`classes.libraries.transition`

- returns `t`

- `transition:enterFrame(event)`
- `transition.to(_obj, _duration, _easing, _properties, _optionsOrOnComplete, _onComplete)`
- `transition.toDelta(_obj, _duration, _easing, _properties, _optionsOrOnComplete, _onComplete)`
- `transition.from(_obj, _duration, _easing, _properties, _optionsOrOnComplete, _onComplete)`
- `transition.fromDelta(_obj, _duration, _easing, _properties, _optionsOrOnComplete, _onComplete)`
- `transition.isTransitioning(_target)`
- `transition.pause(_handleOrTagOrTarget)`
- `transition.resume(_handleOrTagOrTarget)`
- `transition.cancel(_handleOrTagOrTarget, _shouldFinish)`
- `transition.cancelAll()`
- `transition.cancelRecursive(_displayGroup)`
- `transition.removeSelf(_extend)`
- `transition.removeSelfAnd(...)`
- `transition.doRemoveSelf(_obj)`
- `transition.setVisible(_extend)`
- `transition.doSetVisible(_obj)`
- `transition.setInvisible(_extend)`
- `transition.doSetInvisible(_obj)`
- `transition.toArray(_amountOfFrames, _from, _to, _easing)`
- `transition.toDeltaArray(_amountOfFrames, _from, _to, _easing)`
- `transition.withDelay(_objects, _delay, _function, _onComplete)`
- `transition.withDelayOrImmediate(_objects, _delay, _function, _onComplete)`
- `transition.withDelayByNumber(_amount, _delay, _function, _onComplete)`
- `transition.withReversedDelay(_objects, _delay, _function, _onComplete)`
- `transition.withReversedDelayOrImmediate(_objects, _delay, _function, _onComplete)`
- `transition.path(_obj, _transitionFunctions, _onAllComplete)`
- `transition.wiggle(_obj, _transitionFunctions)`
- `transition.onBeforeSetPropertySetValue(_obj, k, v)`
- `transition.onBeforeSetPropertySetOneMinusValue(_obj, k, v)`
- `transition.createWiggleSynchronizer(_createTransitionFunctionsFunction)`
- `transition.number(_start, _end, _duration, _easing, _onBeforeSetProperty, _optionsOrOnComplete, _onComplete)`
- `transition.numberAndNow(_start, _end, _duration, _easing, _onBeforeSetProperty, _optionsOrOnComplete, _onComplete)`
- `transition.color(_obj, _duration, _easing, _fromColor, _toColor, _optionsOrOnComplete, _onComplete)`
- `transition.duotone(_obj, _duration, _easing, _fromColor, _toColor, _optionsOrOnComplete, _onComplete)`
- `transition.fadeOut(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fadeIn(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.show(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.shrink(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.grow(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.shrinkMask(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.growMask(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.press(_obj, _onComplete)`
- `transition.fancyPress(_obj, _onComplete)`
- `transition.leftPress(_obj, _onComplete)`
- `transition.rightPress(_obj, _onComplete)`
- `transition.toBottom(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toBottomOrFadeOut(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromBottom(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromBottomOrFadeIn(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toTop(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toTopOrFadeOut(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromTop(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromTopOrFadeIn(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toRight(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toRightOrFadeOut(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromRight(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromRightOrFadeIn(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toLeft(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toLeftOrFadeOut(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromLeft(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromLeftOrFadeIn(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toEdge(_obj, _edge, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.fromEdge(_obj, _edge, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition:createRightToLeftAwareTransition()`
- `transition.toMagnetX(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toMagnetY(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toOriginalX(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.toOriginalY(_obj, _duration, _easing, _optionsOrOnComplete, _onComplete)`
- `transition.zRotate(_obj, _duration, _easing, _startDegrees, _endDegrees, _perspective, _hideBack, _options, _onComplete)`
- `transition.frameShake(_obj, _amountOfShakes, _options, _onComplete)`
- `transition.timeShake(_transitionTarget, _duration, _options, _onComplete)`
- `transition.gravityMove(_obj, _duration, _delta, _options, _onComplete)`

<details><summary>Instance / other functions (4)</summary>

- `parentGroup:addObject(_obj, _synchronizeFunction)`
- `parentGroup:removeObject(_obj)`
- `parentGroup:optionallyRemoveObject(_obj)`
- `parentGroup:hasObject(_obj)`

</details>

<details><summary>Fields with default values (1)</summary>

- `transition.timeScale` = `1`

</details>

### utf8

`classes.libraries.utf8`

- returns `utf8`
- requires: `plugin.utf8`

- `utf8.starts(_string, _prefix)`
- `utf8.ends(_string, _suffix)`
- `utf8.capitalise(_string)`
- `utf8.removeFromLeft(_string, _amountOfCharacters)`
- `utf8.removeFromRight(_string, _amountOfCharacters)`
- `utf8.toNumber(_string)`
- `utf8.format(_format, ...)`
- `utf8.decodeUnicodeCharacter(_unicodeCharacter)`

### vararg

`classes.libraries.vararg`

- returns `vararg`

- `vararg.countNonNil(...)`
- `vararg.concat(...)`
- `vararg.concatSafe(...)`

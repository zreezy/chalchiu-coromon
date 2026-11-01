# classes.modules.analytics

Coromon 1.5.4. 2 module(s). [Back to index](../README.md)

[Analytics](#analytics), [GoogleAnalyticsClient](#googleanalyticsclient)

### Analytics

`classes.modules.analytics.Analytics`

- returns `t`
- requires: `classes.modules.analytics.GoogleAnalyticsClient`

- `Analytics:getClient()`
- `Analytics:init(_measurementId, _apiSecret, _options)`
- `Analytics:sendApplicationOpenEvent()`
- `Analytics:sendApplicationHeartbeatEvent()`
- `Analytics:sendErrorEvent(_errorCategory, _errorParams, _optionalStackTrace)`
- `Analytics:sendWarningEvent(_warningCategory, _warningDetails, _optionalStackTrace)`
- `Analytics:sendConfiguredInputDeviceEvent(_inputDeviceName, _inputDeviceConfig)`
- `Analytics:sendConfiguredSafeInsetEvent(_modelName, _safeInsetValue)`
- `Analytics:sendBattleLostEvent(_battleUID)`

### GoogleAnalyticsClient

`classes.modules.analytics.GoogleAnalyticsClient`

- returns `t`

- `GoogleAnalyticsClient:new(_measurementId, _apiSecret, _options)`

<details><summary>Instance / other functions (6)</summary>

- `client:setStackTraceMutator(_stackTraceMutator)`
- `client:getStackTraceMutator()`
- `client:sendEvent(_eventName, _properties, _optionalStackTrace)`
- `client:resetOrStartHeartbeatTimerIfSessionTrackingEnabled()`
- `client:startSessionTracking(_sessionDurationInMinutes, _doSendApplicationOpenEvent, _doSendSessionHeartbeatEvent)`
- `client:startUnhandledExceptionTracking(_doSendErrorEvent, _unhandledErrorMessageMutator)`

</details>

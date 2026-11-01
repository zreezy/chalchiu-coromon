# classes.constants

Coromon 1.5.4. 6 module(s). [Back to index](../README.md)

[Color](#color), [HttpResponseCodes](#httpresponsecodes), [colors](#colors), [milliseconds](#milliseconds), [minutes](#minutes), [seconds](#seconds)

### Color

`classes.constants.Color`

- returns `Color`

- `Color:rgbFloat(_red, _green, _blue)`
- `Color:rgbaFloat(_red, _green, _blue, _alpha)`
- `Color:rgb(_red, _green, _blue)`
- `Color:rgba(_red, _green, _blue, _alpha)`
- `Color:rgbTable(_red, _green, _blue)`
- `Color:rgbaTable(_red, _green, _blue, _alpha)`
- `Color:grey(_greyValue)`
- `Color:greyFloat(_greyValue)`
- `Color:greyTable(_greyValue)`
- `Color:blackWithAlpha(_alpha)`
- `Color:blackWithAlphaTable(_alpha)`
- `Color:darkenedRgbFloat(_factor, _red, _green, _blue)`
- `Color:darkenedRgbaFloat(_factor, _red, _green, _blue, _alpha)`
- `Color:unpackRgb(_color)`
- `Color:unpackRgba(_color)`
- `Color:pack(_color)`
- `Color:packWithAlpha(_color, _alpha)`

### HttpResponseCodes

`classes.constants.HttpResponseCodes`

- returns `t`

<details><summary>Fields with default values (63)</summary>

- `HttpResponseCodes.CONTINUE` = `100`
- `HttpResponseCodes.SWITCHING_PROTOCOLS` = `101`
- `HttpResponseCodes.PROCESSING` = `102`
- `HttpResponseCodes.OK` = `200`
- `HttpResponseCodes.CREATED` = `201`
- `HttpResponseCodes.ACCEPTED` = `202`
- `HttpResponseCodes.NON_AUTHORITATIVE_INFORMATION` = `203`
- `HttpResponseCodes.NO_CONTENT` = `204`
- `HttpResponseCodes.RESET_CONTENT` = `205`
- `HttpResponseCodes.PARTIAL_CONTENT` = `206`
- `HttpResponseCodes.MULTI_STATUS` = `207`
- `HttpResponseCodes.ALREADY_REPORTED` = `208`
- `HttpResponseCodes.IM_USED` = `226`
- `HttpResponseCodes.MULTIPLE_CHOICES` = `300`
- `HttpResponseCodes.MOVED_PERMANENTLY` = `301`
- `HttpResponseCodes.FOUND` = `302`
- `HttpResponseCodes.SEE_OTHER` = `303`
- `HttpResponseCodes.NOT_MODIFIED` = `304`
- `HttpResponseCodes.USE_PROXY` = `305`
- `HttpResponseCodes.TEMPORARY_REDIRECT` = `307`
- `HttpResponseCodes.PERMANENT_REDIRECT` = `308`
- `HttpResponseCodes.BAD_REQUEST` = `400`
- `HttpResponseCodes.UNAUTHORIZED` = `401`
- `HttpResponseCodes.PAYMENT_REQUIRED` = `402`
- `HttpResponseCodes.FORBIDDEN` = `403`
- `HttpResponseCodes.NOT_FOUND` = `404`
- `HttpResponseCodes.METHOD_NOT_ALLOWED` = `405`
- `HttpResponseCodes.NOT_ACCEPTABLE` = `406`
- `HttpResponseCodes.PROXY_AUTHENTICATION_REQUIRED` = `407`
- `HttpResponseCodes.REQUEST_TIMEOUT` = `408`
- `HttpResponseCodes.CONFLICT` = `409`
- `HttpResponseCodes.GONE` = `410`
- `HttpResponseCodes.LENGTH_REQUIRED` = `411`
- `HttpResponseCodes.PRECONDITION_FAILED` = `412`
- `HttpResponseCodes.PAYLOAD_TOO_LARGE` = `413`
- `HttpResponseCodes.REQUEST_URI_TOO_LONG` = `414`
- `HttpResponseCodes.UNSUPPORTED_MEDIA_TYPE` = `415`
- `HttpResponseCodes.REQUESTED_RANGE_NOT_SATISFIABLE` = `416`
- `HttpResponseCodes.EXPECTATION_FAILED` = `417`
- `HttpResponseCodes.I_M_A_TEAPOT` = `418`
- ... 23 more in `api.json`

</details>

### colors

`classes.constants.colors`

- returns `t`
- requires: `classes.constants.appPalettes.coromon1Colors`, `classes.constants.appPalettes.coromonRoguePlanetColors`

- `colors.DEFAULT_BACKGROUND()`
- `colors.RANDOM()`

### milliseconds

`classes.constants.milliseconds`

- returns `t`

<details><summary>Fields with default values (5)</summary>

- `milliseconds.SECOND` = `1000`
- `milliseconds.MINUTE` = `60000`
- `milliseconds.HOUR` = `3600000`
- `milliseconds.DAY` = `86400000`
- `milliseconds.WEEK` = `604800000`

</details>

### minutes

`classes.constants.minutes`

- returns `t`

<details><summary>Fields with default values (3)</summary>

- `minutes.HOUR` = `60`
- `minutes.DAY` = `1440`
- `minutes.WEEK` = `10080`

</details>

### seconds

`classes.constants.seconds`

- returns `t`

<details><summary>Fields with default values (4)</summary>

- `seconds.MINUTE` = `60`
- `seconds.HOUR` = `3600`
- `seconds.DAY` = `86400`
- `seconds.WEEK` = `604800`

</details>

# Changelog

## [v1.0.57](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.57) (2021-07-15)

- Logging to backend is set only when setting `logLevel` to `.debug`

## [v1.0.56](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.56) (2021-07-09)

**Issues done:**

- `ZTApi.shared.linkUser(userId:attributes:completion:)` returns appUserId (called also xUserId) which can be used for Strava.

## [v1.0.55](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.55) (2021-06-08)

**Issues done:**

- Compiled framework distribution

## [v1.0.54](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.54) (2021-06-03)

**Issues done:**

- Documentation updated.

## [v1.0.53](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.53) (2021-06-02)

**Issues done:**

- Send additional attribute (`deviceIndetifier`) with attributes for shoes     [\#RUN-1799](https://zhortech.atlassian.net/browse/RUN-1799)
- Added new error `activityIsRunning` when trying to connect to shoes with runnign activity     [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817)
- Added new method to connect to ZTDevice `connectWithDevice(_ device: ZTDevice?, timeout: Double? = 5, completion: ConnectResultBlock?)` [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817) 

## [v1.0.52](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.52) (2021-05-27)

**Issues done:**

- Changed activity segments obtaining after `stop`. Segments obtained after activity is stopped are sent in `activity/stop` endpoint request.    [\#RUN-1710](https://zhortech.atlassian.net/browse/RUN-1710)

## [v1.0.51](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.51) (2021-05-26)

**Issues done:**

- Fixed additional headers for Safety-Dakota app    [\#PDORA-1406](https://zhortech.atlassian.net/browse/PDORA-1406)

## [v1.0.50](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.50) (2021-05-25)

**Issues done:**

- Added support for changed Smart Insoles Serial Number having `SI` instead of product abbreviation.    [\#RUN-1796](https://zhortech.atlassian.net/browse/RUN-1796)

- Added support for data matrix code format.    [\#RUN-1801](https://zhortech.atlassian.net/browse/RUN-1801)

## [v1.0.49](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.49) (2021-05-24)

**Issues done:**

- Addition to `stop` activity flow to obtain and recheck activity segments. Segments also obtained after activity is stopped and sent in `activity/stop` endpoint request.    [\#RUN-1710](https://zhortech.atlassian.net/browse/RUN-1710)

## [v1.0.48](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.48) (2021-04-22)

**Issues done:**

- new method `getActivityRealtimeData` in ZTApi to provide realtime data for current activity  [\#RUN-1679](https://zhortech.atlassian.net/browse/RUN-1679)

- ability for SDK to connect and use ZT device connected to BLE    [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817)

## [v1.0.47](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.47) (2021-04-21)

**Issues done:**

- allow connection sharing between applications  [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817)

## [v1.0.46](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.46) (2021-04-16)

**Issues done:**

- Organization code check  [\#PDORA-1346](https://zhortech.atlassian.net/browse/PDORA-1346)

## [v1.0.45](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.45) (2021-04-13)

**Issues done:**

- Organization code support  [\#PDORA-1346](https://zhortech.atlassian.net/browse/RUN-1346)

## [v1.0.44](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.44) (2021-04-09)

**Issues done:**

- Added push notification endpoint  [\#RUN-1586](https://zhortech.atlassian.net/browse/RUN-1586)

## [v1.0.43](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.43) (2021-04-09)

**Issues done:**

- Sub organization identification  [\#PDORA-1346](https://zhortech.atlassian.net/browse/RUN-1346)


## [v1.0.42](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.42) (2021-04-08)

**Issues done:**

- Fixed X-Attempts header for repeated requests [\#RUN-1610](https://zhortech.atlassian.net/browse/RUN-1610)


## [v1.0.40](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.40) (2021-04-07)

**Issues done:**

- Adding new notification when activity stop event was sent to ZCloud if it failed initially  [\#RUN-1614](https://zhortech.atlassian.net/browse/RUN-1614)

## [v1.0.39](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.39) (2021-04-05)

**Issues done:**

- Adding more logging to segments sending to ZCloud  [\#RUN-1571](https://zhortech.atlassian.net/browse/RUN-1571)

## [v1.0.38](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.38) (2021-03-31)

**Issues done:**

- Resending segments which failed to be sent to ZCloud  [\#RUN-1571](https://zhortech.atlassian.net/browse/RUN-1571)

## [v1.0.37](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.37) (2021-03-30)

**Issues done:**

- Fixed User-Agent header for requests [\#RUN-1583](https://zhortech.atlassian.net/browse/RUN-1583)


## [v1.0.36](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.36) (2021-03-26)

**Issues done:**

- Fixed app data sending for short activity with 1 segement only [\#RUN-1565](https://zhortech.atlassian.net/browse/RUN-1565)

## [v1.0.34](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.1.0.34) (2021-03-16)

**Implemented enhancements:**

- Updated libraries and set minimum iOS version to 13 [\#RUN-1504](https://zhortech.atlassian.net/browse/RUN-1504)


## [v0.0.32](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.0.0.32) (2021-03-15)

**Implemented enhancements:**

- activityData compressing to accept ny data array [\#RUN-1504](https://zhortech.atlassian.net/browse/RUN-1504)


## [v0.0.31](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.0.0.30) (2021-02-26)

**Implemented enhancements:**

- New parameters for activity summary [\#RUN-1209](https://zhortech.atlassian.net/browse/RUN-1209)
- Segments data sending during activity [\#PDORA-1386](https://zhortech.atlassian.net/browse/PDORA-1386)


## [v0.0.30](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/v.0.0.30) (2021-02-02)

**Implemented enhancements:**

- New user flow [\#RUN-1230](https://zhortech.atlassian.net/browse/RUN-1230)
- Collect activity data after the modules go to sleep [\#PDORA-1268](https://zhortech.atlassian.net/browse/PDORA-1268)

**Issues done:**

- Delete activity [\#RUN-1202](https://zhortech.atlassian.net/browse/RUN-1202)


# Changelog

## [1.1.14](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.14) (2021-11-25)

- support for ZCloud V2
- websocket connection to new ZCloud V2
- new ZTApi methods added: `sendDirectMessage(message:completion:)`, `getDirectMessages(completion:)`, `deleteDirectMessage(id: completion:)`, `sendCannedMessage(message:completion:)`, `getCannedMessages(message:completion:)`
- support for Baliston & Univesral firmwares
- added method `getDeviceInfo(code:completion:)` to register device on ZCloud and get device information

## [1.1.13](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.13) (2021-10-21)

- refactoring for automatic activity

## [1.1.12](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.12) (2021-10-05)

- support for XCode 13, Swift 5.5 and iOS 15

## [1.1.11](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.11) (2021-10-04)

- added additional parameters into `ZTApi` `getActivities` and `getActivity` methods 

## [1.1.10](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.10) (2021-10-01)

- fixed `userExist` to return error if ZCloud returns error. App shouldn't go further if error is returned
- added `chunkDuration` property into ZTSettings. It is used to set custom chunk duration in seconds for activity
- added `isReady` property to `ZTDevice` which is updated when all characteristics are read during connection
- added `onAllCharacteristicsRead` observer for `ZTDevice` to notify when all characteristics were read so `ZTDevice` can accept command and has characteristics values from `DeviceInformation` service

## [1.1.9](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.9) (2021-09-24)

- updated DFU flow to use new `ZTDFU` name on peripheral (in addition to DfuTarg)

## [1.1.8](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.8) (2021-09-17)

- changed `onActivityInfoUpdated` observer to send full `ZTMessageActivity`
- changed `ZTActivity` to support automatic activity and activity events


## [1.1.7](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.7) (2021-08-31)

- `ZTDevice` stores advertisement data in it when scanning
- Simplified observers for `ZTDevice`

## [1.1.6](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.6) (2021-08-10)

- Increased exponential backoff for ZCloud requests to retry in 500ms, then 1000ms, 2000ms, 4000ms, 8000ms 

## [1.1.5](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.5) (2021-08-05)

- Added support `ZT_NOTIFY_DATA` characteristic to support `Generic` group id
- Added `onNotifyGenericGroupUpdated` value observer for `ZTDevice` to notify about new data for `Generic` group id

## [1.1.4](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.4) (2021-08-02)

- Added support for timeout to `scan` method - `scan(for:timeout:completion:)`
- Added mac address for right module which is obtained from Adverrtisement Data to ZTDevice  as `macAddressRight`

## [1.1.3](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.3) (2021-07-27)

- Added support for Warm product
- Added commands for Warm product

## [1.1.2](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.2) (2021-07-22)

- Improved logging for `.debug` `logLevel`

## [1.1.1](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.1) (2021-07-21)

- Added new error type `.noUserParametersSet` into ZTError

## [1.1.0](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.0) (2021-07-20)

- Removed dependencies for Pod and SPM

## [1.0.57](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.57) (2021-07-15)

- Logging to backend is set only when setting `logLevel` to `.debug`

## [1.0.56](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.56) (2021-07-09)

- `ZTApi.shared.linkUser(userId:attributes:completion:)` returns appUserId (called also xUserId) which can be used for Strava.

## [1.0.55](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.55) (2021-06-08)

- Compiled framework distribution

## [1.0.54](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.54) (2021-06-03)

- Documentation updated.

## [1.0.53](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.53) (2021-06-02)

- Send additional attribute (`deviceIndetifier`) with attributes for shoes     [\#RUN-1799](https://zhortech.atlassian.net/browse/RUN-1799)
- Added new error `activityIsRunning` when trying to connect to shoes with runnign activity     [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817)
- Added new method to connect to ZTDevice `connectWithDevice(_ device: ZTDevice?, timeout: Double? = 5, completion: ConnectResultBlock?)` [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817) 

## [1.0.52](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.52) (2021-05-27)

- Changed activity segments obtaining after `stop`. Segments obtained after activity is stopped are sent in `activity/stop` endpoint request.    [\#RUN-1710](https://zhortech.atlassian.net/browse/RUN-1710)

## [1.0.51](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.51) (2021-05-26)

- Fixed additional headers for Safety-Dakota app    [\#PDORA-1406](https://zhortech.atlassian.net/browse/PDORA-1406)

## [1.0.50](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.50) (2021-05-25)

- Added support for changed Smart Insoles Serial Number having `SI` instead of product abbreviation.    [\#RUN-1796](https://zhortech.atlassian.net/browse/RUN-1796)

- Added support for data matrix code format.    [\#RUN-1801](https://zhortech.atlassian.net/browse/RUN-1801)

## [1.0.49](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.49) (2021-05-24)

- Addition to `stop` activity flow to obtain and recheck activity segments. Segments also obtained after activity is stopped and sent in `activity/stop` endpoint request.    [\#RUN-1710](https://zhortech.atlassian.net/browse/RUN-1710)

## [1.0.48](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.48) (2021-04-22)

- new method `getActivityRealtimeData` in ZTApi to provide realtime data for current activity  [\#RUN-1679](https://zhortech.atlassian.net/browse/RUN-1679)

- ability for SDK to connect and use ZT device connected to BLE    [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817)

## [1.0.47](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.47) (2021-04-21)

- allow connection sharing between applications  [\#RUN-817](https://zhortech.atlassian.net/browse/RUN-817)

## [1.0.46](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.46) (2021-04-16)

- Organization code check  [\#PDORA-1346](https://zhortech.atlassian.net/browse/PDORA-1346)

## [1.0.45](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.45) (2021-04-13)

- Organization code support  [\#PDORA-1346](https://zhortech.atlassian.net/browse/RUN-1346)

## [1.0.44](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.44) (2021-04-09)

- Added push notification endpoint  [\#RUN-1586](https://zhortech.atlassian.net/browse/RUN-1586)

## [1.0.43](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.43) (2021-04-09)

- Sub organization identification  [\#PDORA-1346](https://zhortech.atlassian.net/browse/RUN-1346)

## [1.0.42](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.42) (2021-04-08)

- Fixed X-Attempts header for repeated requests [\#RUN-1610](https://zhortech.atlassian.net/browse/RUN-1610)

## [1.0.40](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.40) (2021-04-07)

- Adding new notification when activity stop event was sent to ZCloud if it failed initially  [\#RUN-1614](https://zhortech.atlassian.net/browse/RUN-1614)

## [1.0.39](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.39) (2021-04-05)

- Adding more logging to segments sending to ZCloud  [\#RUN-1571](https://zhortech.atlassian.net/browse/RUN-1571)

## [1.0.38](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.38) (2021-03-31)

- Resending segments which failed to be sent to ZCloud  [\#RUN-1571](https://zhortech.atlassian.net/browse/RUN-1571)

## [1.0.37](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.37) (2021-03-30)

- Fixed User-Agent header for requests [\#RUN-1583](https://zhortech.atlassian.net/browse/RUN-1583)

## [1.0.36](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.36) (2021-03-26)

- Fixed app data sending for short activity with 1 segement only [\#RUN-1565](https://zhortech.atlassian.net/browse/RUN-1565)

## [1.0.34](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.0.34) (2021-03-16)

- Updated libraries and set minimum iOS version to 13 [\#RUN-1504](https://zhortech.atlassian.net/browse/RUN-1504)

## [0.0.32](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/0.0.32) (2021-03-15)

- activityData compressing to accept ny data array [\#RUN-1504](https://zhortech.atlassian.net/browse/RUN-1504)

## [0.0.31](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/0.0.30) (2021-02-26)

- New parameters for activity summary [\#RUN-1209](https://zhortech.atlassian.net/browse/RUN-1209)
- Segments data sending during activity [\#PDORA-1386](https://zhortech.atlassian.net/browse/PDORA-1386)

## [0.0.30](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/0.0.30) (2021-02-02)

- New user flow [\#RUN-1230](https://zhortech.atlassian.net/browse/RUN-1230)
- Collect activity data after the modules go to sleep [\#PDORA-1268](https://zhortech.atlassian.net/browse/PDORA-1268)
- Delete activity [\#RUN-1202](https://zhortech.atlassian.net/browse/RUN-1202)

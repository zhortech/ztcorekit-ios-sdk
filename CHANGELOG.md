# Changelog

## [1.1.56](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.56) (2022-12-02)

- support for background DFU
- new method `initiateBackgroundDFU` to start upgrade with background DFU. BL and APP will be updated automatically if they are outdated. This method must be used only with Baliston firmware which support background DFU

## [1.1.55](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.55) (2022-10-28)

- new parameter `enableRawDataCheck` in `ZTSettings` to obtain raw data automatically for last activity on reconnection.

## [1.1.54](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.54) (2022-10-24)

- new parameter `shouldObtaineMissedChunks` in `ZTSettings` to skip gathering of missed chunks during monitored activity stop. Activity with `raw data` mode will always gather chunks.

## [1.1.53](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.53) (2022-08-31)

- fixed parameters for `ZTSamplingMode`

## [1.1.52](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.52) (2022-08-05)

- added commands for `Gaming` firmware
- fixed `preconditionFailure` which may cause crash when making signout with method `ZTSettings.shared.clear()` 

## [1.1.51](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.51) (2022-07-28)

- make static `version` property as public

## [1.1.50](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.50) (2022-07-15)

- extended ZTError with `outsideActivityDetected` case

## [1.1.49](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.49) (2022-07-13)

- new method `getLogFilesList` for `ZTApi` instance to get list of log files in development environment

## [1.1.48](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.48) (2022-07-07)

- DFU support with local file

## [1.1.47](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.47) (2022-07-04)

- updated DFU library to latest version

## [1.1.46](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.46) (2022-06-29)

- resetting chunk id after reaching UInt16.max
- notification about firmware errors using “onFirmwareError“
- added model number as property into device

## [1.1.45](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.45) (2022-06-16)

- remove only self subscriber for onDeviceStateChanged in `connectWithDevice` method

## [1.1.44](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.44) (2022-06-02)

- refactoring activity chunks check

## [1.1.43](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.43) (2022-06-01)

- using `NWPathMonitor` instead of `Reachability` 
    
## [1.1.42](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.42) (2022-05-30)

- fix for full custom url 

## [1.1.41](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.41) (2022-05-25)

- ignoring battery level 0 for left side for connected device

## [1.1.40](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.40) (2022-05-20)

- added logging into file for .debug loglevel

## [1.1.39](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.39) (2022-05-20)

- fix for connecting device in raw data mode 

## [1.1.38](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.38) (2022-05-19)

- fix for scanning in raw data mode 

## [1.1.37](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.37) (2022-05-17)

- support of background mode for DFU 

## [1.1.36](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.36) (2022-05-04)

- refactoring for `ZTDevice`

## [1.1.35](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.35) (2022-04-27)

- support for new commands for universal firmware

## [1.1.34](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.34) (2022-04-14)

- fix for `checkFirmwareUpdate` method in `ZTApi`

## [1.1.33](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.33) (2022-04-12)

- `ZTMessageTime` timestamp type changed
- new `ZTError` - `.invalidMobilityScanResults` 
- more logging

## [1.1.32](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.32) (2022-04-05)

- tweak for subscribers

## [1.1.31](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.31) (2022-03-28)

- added MSG_ACTIVITY_METADATA to `ZTActivity`

## [1.1.30](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.30) (2022-03-24)

- improved DFU for sdk17 firmware

## [1.1.29](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.29) (2022-03-23)

- ZTDfuDelegate change in `func dfuDelegate(didFail error: ZTError?)`

## [1.1.28](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.28) (2022-03-21)
- read serial number from Serial Number characteristic or from QR code 

## [1.1.27](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.27) (2022-03-17)

- refactored DFU
- added more logging for commands

## [1.1.26](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.26) (2022-03-15)

- refactored chunk-related models

## [1.1.25](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.25) (2022-03-14)

- improved the way chunks are stored

## [1.1.24](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.24) (2022-03-10)

- cleaning code

## [1.1.23](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.23) (2022-03-08)

- cancel all requests on signout - `ZTSettings.shared.clear()`

## [1.1.22](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.22) (2022-03-04)

- fixed storing of chunks in latest Swift

## [1.1.21](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.21) (2022-02-17)

- changed method `uploadProfileImage(image: completion:)` in `ZTApi` for new ZCloud environment
- added method `getUserProfile(completion:)` into `ZTApi` to get user's profile as `[String: Any]` 

## [1.1.20](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.20) (2022-02-10)

- refactored chunks status update

## [1.1.19](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.19) (2022-02-07)

- Added method `getUserShoe(code: completion:)` into `ZTApi` to get shoes by code
- Added method `updateUserShoe(code: attributes: completion:)` into `ZTApi` to update shoe with attributes
- Added method `deleteUserShoe(code: completion:)` into `ZTApi` to delete user's shoe from ZCloud

## [1.1.18](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.18) (2022-02-03)

- Added generic method into ZTApi to post and get data as dictionary
- Removed Baliston-related methods


## [1.1.17](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.17) (2022-02-02)

- Fixed parameter encoding for GET methods
- Fixed saving requests methods for ZC environment

## [1.1.16](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.16) (2022-01-25)

- DFU support for SF legacy firmware

## [1.1.15](https://github.com/zhortech/ztcorekit-ios-sdk/-/tags/1.1.15) (2021-12-14)

- support for Universal firmware
- support for raw data upload endpoint
- support for new command in Universal firmware

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

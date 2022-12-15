
# ZTCoreKit SDK for iOS
[![CocoaPods](https://img.shields.io/cocoapods/v/ZTCoreKit.svg)](https://github.com/zhortech/ztcorekit-ios-sdk)
[![Swift Package Manager](https://rawgit.com/jlyonsmith/artwork/master/SwiftPackageManager/swiftpackagemanager-compatible.svg)](https://swift.org/package-manager/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

The ZTCoreKit for iOS provides a library and documentation for developers to build connected mobile applications using Zhortech services and modules.

## TOC

[Installation](#installation)

[How to use it](#how-to-use-it)

* [Setup](#setup)
* [User](#user)
* [Scan](#scan)
* [Connect](#connect)
* [Auto Reconnect](#autoreconnect)
* [Listen](#listen)
* [Disconnection](#disconnection)
* [Observers](#observers)
* [Autoconnection](#Autoconnection)

[Documentation](#documentation)

[Sample application](#sample-application)

[License](#license)


## INSTALLATION

To get started with the ZTCoreKit SDK for iOS, check out the [Developer Guide for iOS](https://github.com/zhortech/ztcorekit-ios-sdk/blob/master/README.md). You can set up the SDK and start building a new project, or you integrate the SDK in an existing project. You can also run the samples to get a sense of how the SDK works.

To use the ZTCoreKit SDK for iOS, you will need the following installed on your development machine:

* Xcode 11.0 or later
* iOS 13 or later

## Include the SDK for iOS in an Existing Application

There is example project [example](https://github.com/zhortech/ztexample-ios) applications which showcase how to use the ZTCoreKit SDK for iOS.  Please note that the code in these sample applications is not of production quality.

There are several ways to integrate the ZTCoreKit Mobile SDK for iOS into your own project:

* [CocoaPods](https://cocoapods.org/)
* [Swift Package Manager](https://swift.org/package-manager/)

You should use ONE and only one of these ways to import the ZTCoreKit Mobile SDK. Importing the SDK in multiple ways loads duplicate copies of the SDK into the project and causes compiler/linker errors.

### CocoaPods

1. The ZTCoreKit Mobile SDK for iOS is available through [CocoaPods](http://cocoapods.org). If you have not installed CocoaPods, install CocoaPods by running the command:

        $ gem install cocoapods
        $ pod setup

    Depending on your system settings, you may have to use `sudo` for installing `cocoapods` as follows:

        $ sudo gem install cocoapods
        $ pod setup

2. In your project directory (the directory where your `*.xcodeproj` file is), run the following to create a `Podfile` in your project.

        $ pod init

3. Edit the podfile to include the pods you want to integrate into your project.  For example, ZTCoreKit is `a must` framework and is required to connect to shoes. `ZTSafetyKit` is used when working with `Safety` products. As a result, your podfile might look something like this:

```
target 'YourTarget' do
    pod 'ZTCoreKit', :git => 'https://github.com/zhortech/ztcorekit-ios-sdk.git', :branch => 'master'
end
```
Please add post install script at the end of `Podfile` if there is problem to use  library:

```ruby
post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
    end
  end
```

For a complete list of our pods, check out the .podspec files in the root directory of this project.

3. Then run the following command:
    
        $ pod install --repo-update

4. To open your project, open the newly generated `*.xcworkspace` file in your project's directory with XCode. 

    **Note**: Do **NOT** use `*.xcodeproj`. If you open up a project file instead of a workspace, you may receive the following error:

        ld: library not found for -lPods-ZTCoreKit
        clang: error: linker command failed with exit code 1 (use -v to see invocation)


### Swift Package Manager

1. The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.
Xcode with Swift tools version of 5.3 is required for ZTCoreKit. Earlier Xcode versions don't support Swift packages with resources.
To check your current Swift tools version run in your terminal:

```ruby
xcrun swift -version
```

> NOTE: In some cases you can have multiple Swift tools versions installed.


Follow the official Apple SPM guide [instructions](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) for more details.\n  

2. To use Swift Package Manager, in Xcode add the https://github.com/zhortech/ztcorekit-ios-sdk dependency and choose the `Exact` version.
<p align="center">
<img src="readme-images/ZTCoreKit_SPM_1.jpg" width="70%">
</p>

3. Set your project Target if not preselected :

<p align="center">
<img src="readme-images/ZTCoreKit_SPM_2.jpg" width="70%">
</p>

4. Select your target and note that `ZTCoreKit` is automatically linked as a framework to your project target. Done!

<p align="center">
<img src="readme-images/ZTCoreKit_SPM_3.jpg" width="70%">
</p>

### Frameworks

1. Download the [latest SDK](https://github.com/zhortech/ztcorekit-ios-sdk/latest/ztsafetykit-sdk.zip).

2. With your project open in Xcode, select your **Target**. Under **General** tab, find **Embedded Binaries** and then click the **+** button.

3. Click the **Add Other...** button, navigate to the `ZTCoreKit.framework` file and select it. Check the **Destination: Copy items if needed** checkbox when prompted.  Add the frameworks that you need for you specific use case.  For example, if you are using ZTCoreKit, you will want to add the following framework:

    * `ZTCoreKit.framework`
    
4. Under the **Build Phases** tab in your **Target**, click the **+** button on the top left and then select **New Run Script Phase**. Then setup the build phase as follows. Make sure this phase is below the `Embed Frameworks` phase.

        Shell /bin/sh
        
        bash "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/ZTCoreKit.framework/strip-frameworks.sh"
        
        Show environment variables in build log: Checked
        Run script only when installing: Not checked
        
        Input Files: Empty
        Output Files: Empty

## Update the SDK to a Newer Version

When we release a new version of the SDK, you can pick up the changes as described below.

### CocoaPods

1. Run the following command in your project directory. CocoaPods automatically picks up the new changes.

        $ pod update

    **Note**: If your pod is having an issue, you can delete `Podfile.lock` and `Pods/` then run `pod install` to cleanly install the SDK.
    
    ![image](readme-images/cocoapods.png?raw=true)

### Swift Package Manager

1. You can update to the latest version of any packages you depend on at any time by selecting File ▸ Swift Packages ▸ Update to Latest Package Versions.

### Frameworks

1. In Xcode's **Project Navigator**, type "ZT" to find the ZT frameworks that were manually added to your project.  Manually select all of the ZT frameworks and hit **delete** on your keyboard. Then select **Move to Trash**.  If you were following the example from above which uses ZTSafetyKit, you would remove:

    * `ZTCoreKit.framework`
    * `ZTSafetyKit.framework`
    
2. Follow the installation process above to include the new version of the SDK.

## HOW TO USE IT

### Getting Started

1. Import the ZTCoreKit header in the application delegate.

    ```swift
    import ZTCoreKit
    ```

2. Create a default service configuration by adding the following code snippet in the `application:didFinishLaunchingWithOptions:` application delegate method.

    ```swift
        ZTSettings.shared.environment = .dev //should be changed according to current environment (.dev / .staging / .production / )
        ZTCore.shared.setup(apiKey: 'YOUR_KEY',
                        secret: 'YOUR_SECRET',
                        appId: 'YOUR_APPLICATION_ID')
    ```

**Note**: Most of the service client classes have a singleton method to get a default instance. The naming convention is `.shared` (e.g. `ZTCore.shared` in the above code snippet). This singleton method creates a service client with `ZTCore` and maintains a strong reference to the client.

3. Associated application's user with portal user or create new user in portal.
*It is important point*.

```swift
ZTApi.shared.linkUser(userId: applicationUser.id, attributes: applicationUser.asDictionary()])
```

**Note**: If `attributes` include key `uid` - be sure it is the same as passed into `userId` or better don't pass such key `uid` in `attributes` parameter.

### User

ZTCoreSDK creates and stores shoes data for device under a unique id called the `appUserId`. 
Application has to identify user before using core features.  
Usually it is done after signup or signin so unique user id can be passed to backend together with user attributes (like name, email or other attributes).  

```swift
ZTApi.shared.linkUser(userId: String, attributes: [String: Any]])
```

It will create user object in portal for new user or associate user with current session to allows viewing activities in future.

### Scan
You can scan for certain product type `ZTProductType`. 
New peripheral is returned in callback `ConnectResultBlock` when it is discovered:
```swift
        ZTCore.shared.scan(for: .safety) { (device, error) in
            debugPrint("new device discovered:\(String(describing: device))")
        }
```
The scan process is automatically stopped once you start the connection command. To stop scanning call `stopScan`:
```swift
        ZTCore.shared.stopScan()
```

### Connect
There are 2 ways to connect to peripheral.

You can connect using QR code or data matrix code with or without a timeout set, after a timeout you receive a `.timeout` error. 
```swift
        ZTCore.shared.connectWithCode(code, timeout: 15) { [weak self] (device, error) in
            if error != nil {
                debugPrint(String(describing: error))
            } else {
                debugPrint(String(describing: device))
            }
        }
```

You can connect using `ZTDevice` instance obtained during scanning. You will receive error if there is timeout, issue with BLE connection or device has activity running.
```swift
        ZTCore.shared.connectWithDevice(device, timeout: 10) { [weak self] (device, error) in
            if error != nil {
                debugPrint(String(describing: error))
            } else {
                debugPrint(String(describing: device))
            }
        }
```

### Auto Reconnect
By default, ZTSettings `autoConnect` is true and ZTCoreKit will always try to automatically reconnect after an unexpected disconnection.

ZTCoreKit will only set `autoConnect` to false after calling `disconnect()` and the disconnection is successful.

### Disconnection
Disconnection can be explicit or unexpected.
If you need to disconnect from peripheral, use this method:
```swift
 device.disconnect()
```
Unexpected can be due for different reasons: device out of range, low battery, device reset etc

## Observers
### Connection observer
_Connection event observer_:
The `ZTCore.shared.bleManager.onDeviceStateChange` informs you about change in a device connection state.

A connection event is defined by different states:
- a peripheral was connected after a `connect` command or after automatic reconnection
- when there is error occurred during a connection
- when a peripheral was disconnected

### BLE observer
_Bluetooth state event observer_:
The `ZTCore.shared.bleManager.onBluetoothStateChange` informs you about change in a device connection state.

_Bluetooth device discovery observer_:
The `ZTCore.shared.bleManager.onDeviceDiscovered` informs you about discovering new ZTDevice.

### Autoconnection
The autoconnection is managed by the `ZTSettings.shared.autoConnect` configuration.

Autoconnection may not work if application has no Bluetooth permission to run in background.

 
### Logging

As of version 0.0.30 of this SDK, logging can be controlled by setting approriate logging level. It allows to see network requests and additional information from ZTCoreKit.

### Changing Log Levels

**Swift**

```swift
ZTSettings.shared.logLevel = .info
```

The following logging level options are available:

* `.all`
* `.debug`
* `.info`
* `.error`
* `.fatal`

We recommend setting the log level to `.error` before publishing to the Apple App Store.

## DOCUMENTATION
Jazzy doc is available [here](https://github.com/zhortech/ztcorekit-ios-sdk/docs/index.html)

## SAMPLE APPLICATION
A sample application can be download [here](https://github.com/zhortech/ztcorekit-ios-sdk/ztexample). 


## Talk to Us

Visit Gitlab [Issues](https://github.com/zhortech/ztcorekit-ios-sdk/-/issues) to leave feedback or create any issue.

## Author

Zhortech

## License

See the **LICENSE** file for more info.

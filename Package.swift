// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ZTCoreKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ZTCoreKit",
            targets: ["ZTCoreKit"]
        )
    ],
    dependencies: [
        .package(name: "NordicDFU", url: "https://github.com/NordicSemiconductor/IOS-DFU-Library", .upToNextMajor(from: "4.14.0"))
    ],
    targets: [
        .binaryTarget(
            name: "ZTCoreKit",
            path: "Sources/ZTCoreKit.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)

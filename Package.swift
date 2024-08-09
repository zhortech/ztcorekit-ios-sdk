// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "ZTCoreKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ZTCoreKit",
            targets: ["ZTCoreKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZTCoreKit",
            path: "Sources/ZTCoreKit.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)

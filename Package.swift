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
            targets: ["ZTCoreKit", "ZhortechBase"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ZTCoreKit",
            path: "Sources/ZTCoreKit.xcframework"
        ),
        .binaryTarget(
            name: "ZhortechBase",
            path: "Sources/ZhortechBase.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)

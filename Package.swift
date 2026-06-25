// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterMobVista",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterMobVista",
            targets: ["AdiscopeMediaMaxAdapterMobVistaTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.3"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterMobVistaTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterMobVista"),
                .target(name: "AppLovinMediationMintegralAdapter"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterMobVista",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "90c5fd22053c6bb3ea0ad3d0d2262b4fef9ee76ea0e4e2ecf375fca5c707014c"
        ),
        .binaryTarget(
            name: "AppLovinMediationMintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationMintegralAdapter.xcframework.zip",
            checksum: "0b9ed537a2e686799e67afcf19a48b703f8d27c92c30af1c93d70c523fd2f0d7"
        ),
    ]
)

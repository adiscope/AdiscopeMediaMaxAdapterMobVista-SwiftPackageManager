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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.0.4"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterMobVista.zip",
            checksum: "a6f3a6b71146a37cc9408557d66a41580559e5437b0e872ab22dec376bb5e98d"
        ),
        .binaryTarget(
            name: "AppLovinMediationMintegralAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationMintegralAdapter.xcframework.zip",
            checksum: "ded2eb8b4478ee3016fceae7254bb7fc043f203d563f6e215cf8feaf803a37d3"
        ),
    ]
)

// swift-tools-version:5.9
import PackageDescription

// PLACEHOLDER — the `url` and `checksum` below are written by the release
// pipeline (youkey-sdk repo) on each tagged release. Do not edit by hand.
let package = Package(
    name: "YoukeySDK",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "YoukeySDK", targets: ["YoukeySDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "YoukeySDK",
            url: "https://dl.cloudsmith.io/REPLACED_BY_CI/youkey/youkey-sdk/raw/files/YoukeySDK-0.0.0.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"
        ),
    ]
)

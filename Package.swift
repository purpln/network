// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "Network",
    products: [
        .library(name: "Network", targets: ["Network"]),
    ],
    dependencies: [
        .package(url: "https://github.com/purpln/platform.git", branch: "main"),
        .package(url: "https://github.com/purpln/log.git", branch: "main"),
        .package(url: "https://github.com/purpln/stream.git", branch: "main"),
        .package(url: "https://github.com/purpln/loop.git", branch: "main"),
    ],
    targets: [
        .target(name: "Network", dependencies: [
            .product(name: "Platform", package: "platform"),
            .product(name: "Log", package: "log"),
            .product(name: "Stream", package: "stream"),
            .product(name: "Loop", package: "loop"),
        ])
    ]
)

#if os(macOS) || os(iOS) || os(watchOS) || os(tvOS)
package.platforms = [.macOS(.v13), .iOS(.v16), .watchOS(.v9), .tvOS(.v16)]
#endif

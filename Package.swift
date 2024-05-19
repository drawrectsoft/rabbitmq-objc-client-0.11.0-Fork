// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let package = Package(
    name: "RMQClient",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "RMQClient",
            targets: ["RMQClient"])
    ],
    dependencies: [
        .package(name:"JKVValue",
                 url: "https://github.com/drawrectsoft/JKVValue-1.3.3-Fork",
                 branch: "main"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git",
                 from: "7.6.5")
    ],
    targets: [
        .target(
            name: "RMQClient",
            dependencies: [
                "CocoaAsyncSocket",
                "JKVValue"
            ],
            path: "RMQClient",
            exclude: [
                "Info.plist"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include/RMQClient")
            ])
    ]
)

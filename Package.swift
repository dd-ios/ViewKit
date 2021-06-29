// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ViewKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ViewKit",
            targets: ["ViewKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/khlopko/Outline.git", .exact("1.3.3"))
    ],
    targets: [
        .target(
            name: "ViewKit",
            dependencies: [
                .product(name: "Outline", package: "Outline")
            ]),
        .testTarget(
            name: "ViewKitTests",
            dependencies: [
                .target(name: "ViewKit")
            ])
    ])

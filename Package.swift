// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Spine",
    platforms: [
        .iOS(.v17),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Spine",
            targets: ["Spine"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),
        .package(url: "https://github.com/Thomvis/BrightFutures.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "Spine",
            dependencies: [
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                "BrightFutures"
            ],
            path: "Spine"),
        .testTarget(
            name: "SpineTests",
            dependencies: ["Spine"],
            path: "SpineTests",
            exclude: ["Info.plist"])
    ]
)
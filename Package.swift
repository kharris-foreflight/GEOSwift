// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GEOSwift",
    platforms: [.iOS(.v9), .macOS("10.9"), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(name: "GEOSwift", type: .dynamic, targets: ["GEOSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/kharris-foreflight/geos.git", .branch("main"))
    ],
    targets: [
        .target(
            name: "GEOSwift",
            dependencies: ["geos"]
        ),
        .testTarget(
            name: "GEOSwiftTests",
            dependencies: ["GEOSwift"]
        )
    ]
)

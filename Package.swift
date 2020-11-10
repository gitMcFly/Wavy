// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Wavy",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13),
                .watchOS(.v6)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Wavy",
            targets: ["Wavy"]),
        .library(
            name: "Stations",
            targets: ["Wavy", "Stations"]),
    ],
    dependencies: [
        .package(url: "https://github.com/christopherweems/unstandard.git", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Wavy",
            dependencies: [
                .product(name: "unstandard", package: "unstandard"),
            ]),
        .target(
            name: "Stations",
            dependencies: [
                "Wavy",
                .product(name: "unstandard", package: "unstandard"),
            ]),
        .testTarget(
            name: "WavyTests",
            dependencies: ["Wavy"]),
    ]
)

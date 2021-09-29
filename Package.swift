// swift-tools-version:5.4
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
            name: "StationGroup",
            targets: ["StationGroup"]),
        
        .library(
            name: "Wavy",
            targets: ["StationGroup", "Wavy"]),
        
        .library(
            name: "WavyShows",
            targets: ["ShowGroup", "WavyShows"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),
        .package(url: "https://github.com/gitMcFly/MixedGroup.git", from: "0.0.2"),
        .package(url: "https://github.com/christopherweems/Resultto.git", from: "0.1.0"),
        .package(url: "https://github.com/christopherweems/Statehood.git", from: "0.0.5"),
        .package(url: "https://github.com/christopherweems/unstandard.git", from: "0.4.0"),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ShowGroup",
            dependencies: [
                .product(name: "MixedGroup", package: "MixedGroup"),
                .product(name: "Resultto", package: "Resultto"),
                .product(name: "Statehood", package: "Statehood"),
                .product(name: "unstandard", package: "unstandard"),
                "StationGroup",
            ]),
        
        .target(
            name: "StationGroup",
            dependencies: [
                .product(name: "MixedGroup", package: "MixedGroup"),
                .product(name: "Resultto", package: "Resultto"),
                .product(name: "Statehood", package: "Statehood"),
                .product(name: "unstandard", package: "unstandard"),
            ]),
        
        .target(
            name: "Wavy",
            dependencies: [
                "StationGroup",
                .product(name: "unstandard", package: "unstandard"),
            ]),
        
        .target(
            name: "WavyShows",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                "Wavy",
                "ShowGroup",
                .product(name: "unstandard", package: "unstandard"),
            ]),
        
        /* Tests */
        
        .testTarget(
            name: "ShowGroupTests",
            dependencies: ["ShowGroup", "WavyShows"]),
        
        .testTarget(
            name: "StationGroupTests",
            dependencies: ["StationGroup", "Wavy"]),
    ]
)

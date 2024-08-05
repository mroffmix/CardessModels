// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardessModels",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CardessModels",
            targets: ["CardessModels"]),
    ],
    targets: [
        .target(
            name: "CardessModels",
            dependencies: [],
            path: "Sources/CardessModels",
//            exclude: ["generate.swift"],
            exclude: ["README.md"],
            sources: ["."],
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "CardessModelsTests",
            dependencies: ["CardessModels"]),
    ]
)

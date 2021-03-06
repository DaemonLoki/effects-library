// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "EffectsLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "EffectsLibrary",
            targets: ["EffectsLibrary"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EffectsLibrary",
            dependencies: [],
            resources: [.process("Resources")]),
        .testTarget(
            name: "EffectsLibraryTests",
            dependencies: ["EffectsLibrary"]),
    ]
)

#if swift(>=5.6)
package.dependencies.append(
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
)
#endif

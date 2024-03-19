// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "SwiftDiff",
    platforms: [.macOS(.v14), .iOS(.v16), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(name: "SwiftDiff", targets: ["SwiftDiff"]),
        .library(name: "SwiftDiffSwiftUI", targets: ["SwiftDiffSwiftUI"])
    ],
    targets: [
        .target(name: "SwiftDiff"),
        .target(name: "SwiftDiffSwiftUI", dependencies: ["SwiftDiff"]),
        .executableTarget (
            name: "_Playground",
            dependencies: ["SwiftDiffSwiftUI"]),
        .testTarget(name: "SwiftDiffTests", dependencies: ["SwiftDiff"]),
    ]
)

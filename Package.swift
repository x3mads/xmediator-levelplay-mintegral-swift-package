// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayMintegralAdapterCompatibility",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "LevelPlayMintegralAdapter", targets: ["LevelPlayMintegralAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Mintegral-Adapter-Swift-Package.git", exact: "5.18.1"),
    ],
    targets: [
        .target(
            name: "LevelPlayMintegralAdapterWrapper",
            dependencies: [
                .product(
                    name: "MintegralAdapter",
                    package: "LevelPlay-Mintegral-Adapter-Swift-Package",
                    moduleAliases: ["MintegralAdapter": "LevelPlayMintegralAdapterTarget"]
                ),
            ]
        ),
    ]
)

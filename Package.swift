// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "MuzTAAE",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MuzTAAE",
            targets: ["MuzTAAE"]
        )
    ],
    targets: [
        .target(
            name: "MuzTAAE",
            path: "Sources/MuzTAAE",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("include"),
                .define("USE_CUSTOM_AUDIO_ENGINE", to: "1")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)

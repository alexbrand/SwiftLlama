// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SwiftLlama",
    platforms: [
        .macOS(.v15),
        .iOS(.v18),
        .watchOS(.v11),
        .tvOS(.v18),
        .visionOS(.v2)
    ],
    products: [
        .library(name: "SwiftLlama", targets: ["SwiftLlama"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SwiftLlama", 
                dependencies: [
                    "LlamaFramework"
                ]),
        .testTarget(name: "SwiftLlamaTests", dependencies: ["SwiftLlama"]),
        .binaryTarget(
            name: "LlamaFramework",
            url: "https://github.com/ggml-org/llama.cpp/releases/download/b6295/llama-b6295-xcframework.zip",
            checksum: "b7f17b8cfffd7b0d66ed6f4afa961e64ead62cae4a48b04807a0f716150d43fc"
        )
    ]
)

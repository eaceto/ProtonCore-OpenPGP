// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ProtonCore-OpenPGP",
    platforms: [
        .macOS(.v10_14), .iOS(.v13)
    ],
    products: [
        .library(
            name: "ProtonCore-OpenPGP",
            targets: ["OpenPGP"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "OpenPGP",
            url: "https://github.com/eaceto/ProtonCore-Crypto/raw/main/Crypto/Crypto.xcframework.zip",
            checksum: "ac8facc5f8717e8475cee3f791e4333959b592962bd8765120f4e6e3b70c24ff"
        ),
        .testTarget(
            name: "OpenPGPTests",
            dependencies: ["OpenPGP"]
        )
    ]
)
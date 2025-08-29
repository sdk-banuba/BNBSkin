// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.5"

let package = Package(
    name: "BNBSkin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBSkin",
            targets: [
                "BNBSkin",
                "BNBSkin_BNBSdkCore",
                "BNBSkin_BNBEffectPlayer",
                "BNBSkin_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBSkin",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.5/BNBSkin.zip",
            checksum: "32198e5386ff55a5a7befe6db372e81dc89ec7b47ba720b537390254de5b6833"
        ),
        .target(
            name: "BNBSkin_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBSkin_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBSkin_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)

// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.0-3-gb365c1950"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.0-3-gb365c1950/BNBSkin.zip",
            checksum: "257de81afe32a0b642b292862009aa9e49a65eb711c2d7caaff022aec22ce1ea"
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

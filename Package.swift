// swift-tools-version: 5.7.1
import PackageDescription

let package = Package(
    name: "vnvce-core",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(
            name: "VNVCECore",
            targets: ["VNVCECore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto.git", from: "2.2.2")
    ],
    targets: [
        .target(
            name: "VNVCECore",
            dependencies: [
                .product(name: "Crypto", package: "swift-crypto")
            ]),
        .testTarget(
            name: "VNVCECoreTests",
            dependencies: ["VNVCECore"]),
    ]
)

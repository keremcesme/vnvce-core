// swift-tools-version: 5.7.1
import PackageDescription

let package = Package(
    name: "vnvce-core",
    products: [
        .library(
            name: "VNVCECore",
            targets: ["VNVCECore"]),
    ],
    dependencies: [
        
    ],
    targets: [
        
        .target(
            name: "VNVCECore",
            dependencies: []),
        .testTarget(
            name: "VNVCECoreTests",
            dependencies: ["VNVCECore"]),
    ]
)

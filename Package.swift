// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/shankarpriyank/SharedAnalytics/com/priyank/sharedananalytics/shared-kmmbridge/0.1.7/shared-kmmbridge-0.1.7.zip"
let remoteKotlinChecksum = "6537cc2d2be5a05b91c087e9508b9ee876fd85fca72041fcdbff6d96e182d4d3"
let packageName = "shared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)
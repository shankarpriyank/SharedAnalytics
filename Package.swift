// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/shankarpriyank/SharedAnalytics/com/priyank/sharedananalytics/shared-kmmbridge/0.1.8/shared-kmmbridge-0.1.8.zip"
let remoteKotlinChecksum = "647d8f8ee1cfe75b9a4e20db08991b2a6c8eeeacff6ea537782dea4e2a882634"
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
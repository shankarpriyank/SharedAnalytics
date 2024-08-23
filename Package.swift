// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/shankarpriyank/SharedAnalytics/com/priyank/sharedananalytics/shared-kmmbridge/0.1.6/shared-kmmbridge-0.1.6.zip"
let remoteKotlinChecksum = "e97ea8ea2d3105735662d8e2a3913f724e4a45a819ced2791006c6ae5df787c9"
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
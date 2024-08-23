// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/shankarpriyank/SharedAnalytics/com/priyank/sharedananalytics/shared-kmmbridge/0.1.4/shared-kmmbridge-0.1.4.zip"
let remoteKotlinChecksum = "0b85649ac47018581eebf95db249a48fd0cf8cc754c815e3cfb70594afeb86a3"
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
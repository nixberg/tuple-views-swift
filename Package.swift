// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "tuple-views-swift",
    products: [
        .library(
            name: "TupleViews",
            targets: ["TupleViews"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "TupleViews"),
        .testTarget(
            name: "TupleViewsTests",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                "TupleViews"
            ]),
    ]
)

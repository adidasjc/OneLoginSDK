// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OneLoginSDK",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "OneLoginSDKTarget",
            targets: ["OneLoginSDKTarget"]
        )
    ],
    targets: [
        .target(
            name: "OneLoginSDKTarget",
            dependencies: [
                "account_login_sdk_noui_core",
                "EAccountApiSDK",
                "TYRZUISDK",
                "OneLoginSDK"
            ],
            path: "OneLoginSDK",
            resources: [
                .process("Assets")
            ]
        ),
        .binaryTarget(
            name: "account_login_sdk_noui_core",
            url: "https://cdnadidasapp.s3.cn-north-1.amazonaws.com.cn/spm-sdk/account_login_sdk_noui_core.xcframework.zip",
            checksum: "9057de76e820e27af59c4560eb4bc8174014bcba1509735edd66d358767278f7"
        ),
        .binaryTarget(
            name: "EAccountApiSDK",
            url: "https://cdnadidasapp.s3.cn-north-1.amazonaws.com.cn/spm-sdk/EAccountApiSDK.xcframework.zip",
            checksum: "15fc53d86c58cdb9353a39c96d3bf368a079c5985a89207d248ca59a903f01e7"
        ),
        .binaryTarget(
            name: "TYRZUISDK",
            url: "https://cdnadidasapp.s3.cn-north-1.amazonaws.com.cn/spm-sdk/TYRZUISDK.xcframework.zip",
            checksum: "f8f91f31802ecca3ec26efc4ee558d1d76132744b2fe5c990c465b514351d1e7"
        ),
        .binaryTarget(
            name: "OneLoginSDK",
            url: "https://cdnadidasapp.s3.cn-north-1.amazonaws.com.cn/spm-sdk/OneLoginSDK.xcframework.zip",
            checksum: "0753b95b07d731b1dc1b39892a831fe8c75bed46f7bb7863fb5b9905c29330fb"
        )
    ]
)

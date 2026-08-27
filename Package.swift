// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-UnityAds-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAdsAdapter", targets: ["UnityAdsAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.20.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "UnityAdsAdapter",
      dependencies: [
        "UnityAdsAdapterSDK",
        .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "UnityAdsAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/unityads-adapter/5.11.0/ISUnityAdsAdapter5.11.0.zip",
      checksum: "3cfe757f494b9e118b09940cd20d73b2b5b95ef829965b5a90d9672a9055b555"
    )
  ]
)

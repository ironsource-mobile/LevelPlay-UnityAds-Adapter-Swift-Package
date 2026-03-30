// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-UnityAds-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAdsAdapter", targets: ["UnityAdsAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.17.0"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "UnityAdsAdapter",
      dependencies: [
        "UnityAdsAdapterSDK",
        .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "UnityAdsAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/unityads-adapter/5.6.0/ISUnityAdsAdapter5.6.0.zip",
      checksum: "0f69a035e6ff165e0431daaad7e846ed76e4b7d498891fb6a2801e09dc279ee5"
    )
  ]
)

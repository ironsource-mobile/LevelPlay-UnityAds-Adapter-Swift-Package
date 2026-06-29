// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-UnityAds-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAdsAdapter", targets: ["UnityAdsAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.19.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/unityads-adapter/5.9.0/ISUnityAdsAdapter5.9.0.zip",
      checksum: "024b91ede1a8d19aaf2ce620616f15d8a8e5b05b46ea9a596017d1015ccf61bd"
    )
  ]
)

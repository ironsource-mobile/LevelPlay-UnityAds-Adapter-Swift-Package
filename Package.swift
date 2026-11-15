// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-UnityAds-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAdsAdapter", targets: ["UnityAdsAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.22.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/unityads-adapter/5.14.0/ISUnityAdsAdapter5.14.0.zip",
      checksum: "624adfecb0fc7a86c395ce95ac495aa610fe616258920cd9be1418d5d2576b86"
    )
  ]
)

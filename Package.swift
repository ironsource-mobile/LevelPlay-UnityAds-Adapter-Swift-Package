// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-UnityAds-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAdsAdapter", targets: ["UnityAdsAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package", exact: "4.18.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/unityads-adapter/5.7.0/ISUnityAdsAdapter5.7.0.zip",
      checksum: "830d5cd95ce4596408ed7d700f24008a1d6935bb01cf538d88b13f4bac3e535b"
    )
  ]
)

# YouKey Security SDK — Swift Package

Closed-source binary distribution of the **YouKey Security SDK** for iOS, as a
Swift Package Manager `binaryTarget`. This repo contains **only** the package
manifest — the SDK ships as a signed `YoukeySDK.xcframework`. No source here.

## Install

In Xcode: **File ▸ Add Package Dependencies…** → paste this repo's URL → choose a
version → add the **YoukeySDK** product to your target. Then:

```swift
import YoukeySDK
Youkey.install(try Youkey.Configuration.builder()
    .pin(domain: "api.example.com") { $0.publicKeyHash("sha256/…") }
    .build())
```

`Package.swift` (the `binaryTarget` `url` + `checksum`) is published automatically
by the SDK's release pipeline on each `vX.Y.Z` tag.

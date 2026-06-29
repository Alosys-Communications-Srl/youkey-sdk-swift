# YouKey Security SDK — iOS

On-device HTTPS hardening for your iOS app: SPKI **certificate pinning**, **TLS
version & cipher** enforcement, and **cleartext blocking** — applied to every
outbound request with a few lines of setup.

> Requires **Xcode 15+**, **iOS 14+**, and a YouKey **access token** (provided by
> Alosys).

## Install

**1. Add your access token** to `~/.netrc` (once per machine; in CI, write it from a
secret):

```
machine dl.cloudsmith.io login token password YOUR_ACCESS_TOKEN
```

**2. Add the package** in Xcode — **File ▸ Add Package Dependencies…** → enter this
URL → choose **Up to Next Major Version** from `1.2.3` → add the **YoukeySDK** product
to your app target:

```
https://github.com/Alosys-Communications-Srl/youkey-sdk-swift.git
```

## Use

Install once, at launch, before any networking:

```swift
import YoukeySDK

Youkey.install(
    try Youkey.Configuration.builder()
        .pin(domain: "api.example.com") { pin in
            pin.publicKeyHash("sha256/AAAA…")   // primary
            pin.publicKeyHash("sha256/BBBB…")   // backup
        }
        .onViolation { print($0.debugDescription) }
        .build()
)

let session = URLSession(configuration: Youkey.sessionConfiguration(),
                         delegate: Youkey.urlSessionDelegate(), delegateQueue: nil)
```

## Support

Integration guide, pin generation, and help: contact Alosys.

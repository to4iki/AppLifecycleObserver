# AppLifecycleObserver

![SwiftVersion][swift-version]
[![License][license-image]][license-url]
[![Carthage compatible][carthage-image]][carthage-url]

The manage the lifecycle of ViewController in Application

## Description
Simple Application lifecycle notification.

## Requirements
- Swift 3.0 or later
- iOS 8.0 or later

## Installation
#### [swift-package-manager](https://github.com/apple/swift-package-manager)
You can easily integrate AppLifecycleObserver.swift in your app with SPM. Just add AppLifecycleObserver.swift as a dependency:

```swift
import PackageDescription

let package = Package(
    name: "MyAwesomeApp",
    dependencies: [
        .Package(url: "https://github.com/to4iki/AppLifecycleObserver.git", majorVersion: 0, minor: 1)
    ]
)
```

#### [Carthage](https://github.com/Carthage/Carthage)
- Insert `github "to4iki/AppLifecycleObserver"` to your Cartfile.
- Run `carthage bootstrap --platform iOS`.
- Link your app with `AppLifecycleObserver.framework` in `Carthage/Checkouts`.


## Usage
Implement [AppLifecycleObserver](https://github.com/to4iki/AppLifecycleObserver/blob/master/Sources/AppLifecycleObserver.swift) protocol.

Please refer [Example](https://github.com/to4iki/AppLifecycleObserver/tree/master/Example).

## Author

[to4iki](https://github.com/to4iki)

## Licence

[MIT](http://to4iki.mit-license.org/)

[swift-version]: https://img.shields.io/badge/Swift-3.0-orange.svg

[license-url]: http://to4iki.mit-license.org/
[license-image]: http://img.shields.io/badge/license-MIT-brightgreen.svg

[carthage-url]: https://github.com/Carthage/Carthage
[carthage-image]: https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat

# ScrollViewLayout

![Platform iOS](https://img.shields.io/badge/platform-iOS-333333.svg)
![Swift v4.1](https://img.shields.io/badge/swift-v4.1-orange.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/ScrollViewLayout.svg)](https://cocoapods.org/pods/ScrollViewLayout)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Install

Minimum deployment target: **iOS 11.0**

### CocoaPods

You can integrate `ScrollViewLayout` with your project using [CocoaPods](https://cocoapods.org). Just add this line to your `Podfile`:

```ruby
pod 'ScrollViewLayout', '~> 1.0'
```

### Carthage

You can also use [Carthage](https://github.com/Carthage/Carthage) if you prefer by adding following line to your `Cartfile`:

```
github "darrarski/ScrollViewLayout" ~> 1.0
```

## Use

Example can be found in [ExampleApp](ExampleApp).

## Develop

Requirements: 

- [Carthage](https://github.com/Carthage/Carthage)
- Ruby with [Bundler](http://bundler.io)
- Xcode 9

To setup the project run:

```sh
bundle install
bundle exec fastlane setup
```

Then open `ScrollViewLayout.xcodeproj` in Xcode.

Use `ExampleApp` build scheme for building and runing example app.

Use `Tests` build scheme for runing tests.

To run tests from command line execute:

```sh
bundle exec fastlane test
```

To generate code coverage report in HTML format execute:

```swift
bundle exec fastlane coverage_html
```

The report will be saved to `code_coverage` directory.

## License

MIT License - check out [LICENSE](LICENSE) file.

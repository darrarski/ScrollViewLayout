# ScrollViewLayout

![Swift v4.2](https://img.shields.io/badge/swift-v4.2-orange.svg)
![Platform iOS](https://img.shields.io/badge/platform-iOS-333333.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/ScrollViewLayout.svg)](https://cocoapods.org/pods/ScrollViewLayout)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Customize layout of `UIScrollView`'s subviews using simple API.

![example_app_1.gif](Misc/example_app_1.gif)
![example_app_2.gif](Misc/example_app_2.gif)

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

**TL;DR:**

```swift
let layoutController = ScrollViewLayoutController(
    for: subview,
    in: scrollView,
    using: ScrollViewLayoutUpdater { subview, scrollView in
        // update subview's frame or constraints here
    }
)
```

Use `ScrollViewTopBackgroundLayout` or `ScrollViewBottomBackgroundLayout` updaters instead of generic `ScrollViewLayoutUpdater` to replicate behaviour from example app. Keep strong reference to the controller as long as the layout should be applied.

## Develop

Requirements: 

- [Carthage](https://github.com/Carthage/Carthage)
- Ruby with [Bundler](http://bundler.io)
- Xcode 10.1

To setup the project run:

```sh
bundle install
bundle exec fastlane setup
```

Then open `ScrollViewLayout.xcodeproj` in Xcode.

Use `ExampleApp` build scheme for building and runing example app.

Use `ScrollViewLayout` build scheme for building and testing the framework.

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

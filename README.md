[![Version](https://img.shields.io/cocoapods/v/MYPMarkdown.svg?style=flat)](https://cocoapods.org/pods/MYPMarkdown)
[![License](https://img.shields.io/cocoapods/l/MYPMarkdown.svg?style=flat)](https://cocoapods.org/pods/MYPMarkdown)
[![Platform](https://img.shields.io/cocoapods/p/MYPMarkdown.svg?style=flat)](https://cocoapods.org/pods/MYPMarkdown)

MYPMarkdown is not just to parse and show markdown text in native ways. It could used for many cases needed to analyse the inputed text and adding custom actions for some modules. We do not use a UITextView or UIWebView or WebKit for the text showing or rendering. We analyse everything in the text, and translate it into native module such as UIImage, UIButton, or any custom view. Thus users could have a nice experience via the UI with all gestures supported.

Simple text input, but rich or custom and interactive output. Users could made their own rules for input and output. It's fully customizable.

Here is part of the prototype:

![prototype](https://github.com/wakaryry/MYPMarkdown/blob/master/screens/prototype.png)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
I just test it in 10.0 and above.
```
platform :ios, '10.0'
```

## Installation

MYPMarkdown is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MYPMarkdown'
```

## Author

wakary, redoume@163.com

## License

MYPMarkdown is available under the MIT license. See the LICENSE file for more info.

The base code was copied from [Marky-Mark](https://github.com/M2Mobi/Marky-Mark).
I'm always looking for a markdown editor and native render.
[Marky-Mark](https://github.com/M2Mobi/Marky-Mark) is really good. Thanks for it.

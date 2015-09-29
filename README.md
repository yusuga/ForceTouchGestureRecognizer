# ForceTouchGestureRecognizer

**ForceTouchGestureRecognizer** is tap gesture recognizer of [3D touch](https://developer.apple.com/library/prerelease/ios/documentation/UserExperience/Conceptual/Adopting3DTouchOniPhone/index.html#//apple_ref/doc/uid/TP40016543-CH1-SW1).

![preview](RESOURCES/preview.gif)

## Usage

```
ForceTouchGestureRecognizer *forceGesture = [[ForceTouchGestureRecognizer alloc] initWithTarget:self 
                                                                                     action:@selector(forceTouched:)];
[self.tapView addGestureRecognizer:forceGesture];
```

## Installation

Simply add the following to your Podfile if you're using CocoaPods:

```
pod 'ForceTouchGestureRecognizer'
```
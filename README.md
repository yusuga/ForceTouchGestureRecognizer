# ForceTapGestureRecognizer

**ForceTapGestureRecognizer** is tap gesture recognizer of [3D touch](https://developer.apple.com/library/prerelease/ios/documentation/UserExperience/Conceptual/Adopting3DTouchOniPhone/index.html#//apple_ref/doc/uid/TP40016543-CH1-SW1).

![preview](RESOURCES/preview.gif)

## Usage

```
ForceTapGestureRecognizer *forceGesture = [[ForceTapGestureRecognizer alloc] initWithTarget:self 
                                                                                     action:@selector(forceTapped:)];
[self.tapView addGestureRecognizer:forceGesture];
```
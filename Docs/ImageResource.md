# [ImageResource](https://developer.apple.com/documentation/swiftui/image/init(_:))

## What is ImageResource?

Xcode 15 introduces a new type ImageResouce (Xcode feature with internal access), which could create the corresponding auto-completion keys for images from asset catalog automatically, and then we could create an Image using the init `init(_ resource: [ImageResource])` with an auto-completion icon key instead of the init `init(_ name: String, bundle: ..., ...)` with a raw string as the icon key.

Referencing images using a raw string icon key is error-prone, if you mistype or change the resource name, it might break your resources, so this is an advantage of the auto-completion icon key and ImageResource.

Typically:

1. Xcode 15 auto generates the auto-completion icon keys as ImageReource type in the current bundle, then you could use it in your code like `Image(.customIconKey)` to get images.
2. You could also create custom ImageResource with an image name and bundle, one of the use cases could be, your images are in a Swift package, and which have to be exposed to the other packages or main app, then you could expose your package bundle and also the image names then the consumer could construct the ImageResource outside, or you could refer to the ImageResouce which generated by the Xcode automatically inside the package and expose an Image var to the consumer directly.

## Demo App

Source: [ImageResourceContentView.swift](../HelloSwiftUIImage/ImageResourceContentView.swift)

Demo:

<img src="../Images/ImageResource%20Demo.png" alt="ImageResource Demo" width="25%" />

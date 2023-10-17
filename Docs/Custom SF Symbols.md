# Custom SF Symbols

## Spike of [Creating custom symbol images for your app](https://developer.apple.com/documentation/uikit/uiimage/creating_custom_symbol_images_for_your_app)

### What is the article for?

This is an article that we could treat SF symbols as a library of images resource (more than 5,000 Symbols), based on which build our own custom symbols using the [SF Symbols](https://developer.apple.com/sf-symbols/) app on Mac, and use it in Xcode asset catalog:

1. **[Designers]** Export a symbol (SVG file) from the [SF Symbols](https://developer.apple.com/sf-symbols/) app.
2. **[Designers]** Edit the symbol in a vector-drawing app or just update the xml source manually.
3. **[Designers]** Import the updated symbol file into the [SF Symbols](https://developer.apple.com/sf-symbols/) app to validate the format.
4. **[Engineers]** Import the symbol into Xcode asset catalog and use it, or -
5. **[Engineers]** Export a single scale SVG file from the [SF Symbols](https://developer.apple.com/sf-symbols/) app and import the file into Xcode asset catalog.

The difference between step 4 and 5 is:
A symbol as a SVG file supports a full 27 variants, while a single scale SVG file only supports part of them.
![symbol 27 variants](../Images/Symbol%2027%20variants.png)

### Benefits from the article

1. SF symbols offer lots of (more than 5,000 Symbols) consistent, highly configurable symbol images, we could use it directly or based on which build our own custom symbols.

2. SF symbols support 27 variants, and we could also configure our own variant as per requirements, a single path SVG file is much smaller after all, i.e.:
   
   | 27 paths                                                    | single path                                                  |
   | ----------------------------------------------------------- | ------------------------------------------------------------ |
   | ![27 paths SVG file](../Images/27%20paths%20SVG%20file.png) | ![Single path SVG file](../Images/Single%20path%20SVG%20file.png) |

### Suggestions

1. If we already have a suite of icons with our own design for a brand, then we don't need to recreate all of them using the SF Symbols way, which is a new way to generate SVG files after all.
2. SF symbols are powful, but if the brand requirements only needs to cover sizing and coloring, then we don't need to rebuild all of the existing brand icons using the SF Symbols way.
3. If we are going to build some icons for our brand from zero, then we could use the SF symbols, regard which as a icons libray and also which offers lots of powerful functionalities.

### Demo App

Source: [CustomSFSymbolsContentView.swift](../HelloSwiftUIImage/CustomSFSymbolsContentView.swift)

Demo:

<img src="../Images/Custom%20SF%20Symbols%20Demo.png" alt="Custom SF Symbols Demo" width="25%" />

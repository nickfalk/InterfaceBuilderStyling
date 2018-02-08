# InterfaceBuilderStyling

### What is this?

Small example of a strategy to maintain styling across storyboards and nibs.

### Why is this a thing?

One of the main challenges when using InterfaceBuilder properly* is styling elements universally across all nibs & storyboards. 

This experiment is not attempting to reinvent the wheel, but demonstrates how this can be achieved through some slight sub-classing and usage of @IBInspectable & @IBDesignable. This is in _no way_ meant to be a complete solution. It is meant simply as an example for inspiration, or one that can be changed/built upon if you feel like it.

This example consists of the following 4 subclasses

`StylableLabel` (UILabel)
`StylableTextView` (UITextView)
`StylableTextField` (UITextField)
`StylableButton` (UIButton)

The first three of these each has a `textTypeIdentifier` (String) property available in InterfaceBuilder. If this property is set to the rawValue of the enum TextStyleType the style of the item will change. If the string does not match either of these it will change to the style already defined in the InterfaceBuilder.

The available styles are "heading", "subheading", "body", and "detail". The input will be converted to lowercase under the hood to lessen the chance of typos messing things up.

The `StylableButton` has a similar `buttonTypeIdentifier` (String) property, also available in InterfaceBuilder. This will be matched to the rawValue of ButtonStyleType. As with the text-elements, setting the string to one _not_ matching any of the rawValues will change the styling to the one defined in the InterfaceBuilder.

The available styles are "action", "basic", and "simple". As with the textTypeIdentifier the input will be converted to lowercase.


*not creating a gigantic monolith storyboard 

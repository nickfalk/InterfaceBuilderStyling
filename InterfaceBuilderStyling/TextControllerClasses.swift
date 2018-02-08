import UIKit
// Unfortunately the font and textColor properties for the below classes are not exposed as part of
// neither a protocol or a common parent. Each of the classes will therefore need to implement the same snippet.

@IBDesignable class StylableLabel: UILabel {
    private(set) var textStyleType: TextStyleType?

    @IBInspectable var textTypeIdentifier: String? {
        set {
            guard let textTypeIdentifier = newValue else { return }
            if let textStyleType = TextStyleType(rawValue: textTypeIdentifier.lowercased()) {
                self.textStyleType = textStyleType
                let style = FontStyle(textStyleType: textStyleType)
                self.font = style.fontAndColor.font
                self.textColor = style.fontAndColor.color
            }
        }
        get {
            return textStyleType?.rawValue
        }
    }
}



@IBDesignable class StylableTextView: UITextView {
    private(set) var textStyleType: TextStyleType?

    @IBInspectable var textTypeIdentifier: String? {
        set {
            guard let textTypeIdentifier = newValue else { return }
            if let textStyleType = TextStyleType(rawValue: textTypeIdentifier.lowercased()) {
                self.textStyleType = textStyleType
                let style = FontStyle(textStyleType: textStyleType)
                self.font = style.fontAndColor.font
                self.textColor = style.fontAndColor.color
            }
        }
        get {
            return textStyleType?.rawValue
        }
    }
}



@IBDesignable class StylableTextField: UITextField {
    private(set) var textStyleType: TextStyleType?

    @IBInspectable var textTypeIdentifier: String? {
        set {
            guard let textTypeIdentifier = newValue else { return }
            if let textStyleType = TextStyleType(rawValue: textTypeIdentifier.lowercased()) {
                self.textStyleType = textStyleType
                let style = FontStyle(textStyleType: textStyleType)
                self.font = style.fontAndColor.font
                self.textColor = style.fontAndColor.color
            }
        }
        get {
            return textStyleType?.rawValue
        }
    }
}


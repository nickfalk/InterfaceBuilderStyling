import UIKit
// Unfortunately the font and textColor properties for the below classes are not exposed as part of
// neither a protocol or a common parent. Each of the classes will therefore need to implement the same snippet.

@IBDesignable class Label: UILabel {
    private(set) var textType: TextType?

    @IBInspectable var textTypeIdentifier: String? {
        set {
            guard let textTypeIdentifier = newValue else { return }
            if let textType = TextType(rawValue: textTypeIdentifier.lowercased()) {
                self.textType = textType
                let style = FontStyle(textType: textType)
                self.font = style.fontAndColor.font
                self.textColor = style.fontAndColor.color
            }
        }
        get {
            return textType?.rawValue
        }
    }
}



@IBDesignable class TextView: UITextView {
    private(set) var textType: TextType?

    @IBInspectable var textTypeIdentifier: String? {
        set {
            guard let textTypeIdentifier = newValue else { return }
            if let textType = TextType(rawValue: textTypeIdentifier.lowercased()) {
                self.textType = textType
                let style = FontStyle(textType: textType)
                self.font = style.fontAndColor.font
                self.textColor = style.fontAndColor.color
            }
        }
        get {
            return textType?.rawValue
        }
    }
}



@IBDesignable class TextField: UITextField {
    private(set) var textType: TextType?

    @IBInspectable var textTypeIdentifier: String? {
        set {
            guard let textTypeIdentifier = newValue else { return }
            if let textType = TextType(rawValue: textTypeIdentifier.lowercased()) {
                self.textType = textType
                let style = FontStyle(textType: textType)
                self.font = style.fontAndColor.font
                self.textColor = style.fontAndColor.color
            }
        }
        get {
            return textType?.rawValue
        }
    }
}


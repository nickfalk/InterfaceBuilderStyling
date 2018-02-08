import UIKit

@IBDesignable class Button: UIButton {
    private var buttonStyleType: ButtonStyleType?

    @IBInspectable var buttonTypeIdentifier: String? {
        set {
            guard let buttonTypeIdentifier = newValue else { return }
            if let buttonType = ButtonStyleType(rawValue: buttonTypeIdentifier.lowercased()) {
                self.buttonStyleType = buttonType
                let style = ButtonStyle(buttonType: buttonType)
                self.setTitleColor(style.specifications.fontColor, for: .normal)
                self.backgroundColor = style.specifications.backgroundColor
                self.layer.borderColor = style.specifications.borderColor
                self.layer.borderWidth = style.specifications.borderWidth
                self.layer.cornerRadius = style.specifications.cornerRadius
            }
        }
        get {
            return buttonStyleType?.rawValue
        }
    }
}

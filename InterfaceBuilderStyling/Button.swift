import UIKit

@IBDesignable class Button: UIButton {
    private var _buttonTypeIdentifier: String?

    @IBInspectable var buttonTypeIdentifier: String? {
        set {
            guard let buttonTypeIdentifier = newValue else { return }
            if let buttonType = ButtonType(rawValue: buttonTypeIdentifier.lowercased()) {
                _buttonTypeIdentifier = buttonTypeIdentifier
                let style = ButtonStyle(buttonType: buttonType)
                self.setTitleColor(style.specifications.fontColor, for: .normal)
                self.backgroundColor = style.specifications.backgroundColor
                self.layer.borderColor = style.specifications.borderColor
                self.layer.borderWidth = style.specifications.borderWidth
                self.layer.cornerRadius = style.specifications.cornerRadius
            }
        }
        get {
            return _buttonTypeIdentifier
        }
    }
}

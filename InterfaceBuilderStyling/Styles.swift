import UIKit

struct TextRenderingSpecifications {
    var font: UIFont
    var color: UIColor
}

enum TextStyleType: String {
    case heading = "heading"
    case subHeading = "subheading"
    case body = "body"
    case detail = "detail"
}

struct FontStyle {
    var textStyleType = TextStyleType.body

    private let headingFont = UIFont(name: "HelveticaNeue-Bold", size: 32)!
    private let subHeadingFont = UIFont(name: "HelveticaNeue-Medium", size: 24)!
    private let bodyFont = UIFont(name: "HelveticaNeue", size:16)!
    private let detailFont = UIFont(name: "HelveticaNeue-Light", size: 12)!

    private let headingColor = UIColor.blue
    private let subHeadingColor = UIColor(displayP3Red: 0.7, green: 0.7, blue: 1, alpha: 1)
    private let bodyColor = UIColor.black
    private let detailColor = UIColor.gray

    var fontAndColor: TextRenderingSpecifications {
        switch self.textStyleType {
        case .heading:
            return TextRenderingSpecifications(font: headingFont, color: headingColor)
        case .subHeading:
            return TextRenderingSpecifications(font: subHeadingFont, color: subHeadingColor)
        case .body:
            return TextRenderingSpecifications(font: bodyFont, color: bodyColor)
        case .detail:
            return TextRenderingSpecifications(font: detailFont, color: detailColor)
        }
    }

    init(textStyleType: TextStyleType) {
        self.textStyleType = textStyleType
    }
}

struct ButtonSpecifications {
    var fontColor: UIColor
    var backgroundColor: UIColor
    var borderColor: CGColor?
    var borderWidth: CGFloat
    var cornerRadius: CGFloat
}


enum ButtonStyleType: String {
    case action = "action"
    case basic = "basic"
    case simple = "simple"
}

struct ButtonStyle {
    var buttonType = ButtonStyleType.basic

    private let actionSpecifications = ButtonSpecifications(fontColor: .white, backgroundColor: .blue, borderColor: UIColor.blue.cgColor, borderWidth: 2, cornerRadius: 5)
    private let basicSpecifications = ButtonSpecifications(fontColor: .blue, backgroundColor: .white, borderColor: UIColor.blue.cgColor, borderWidth: 2, cornerRadius: 5)
    private let simpleSpecifications = ButtonSpecifications(fontColor: .blue, backgroundColor: .clear, borderColor: nil, borderWidth: 0,    cornerRadius: 0)

    init(buttonType: ButtonStyleType) {
        self.buttonType = buttonType
    }

    var specifications: ButtonSpecifications {
        switch buttonType {
        case .action:
            return actionSpecifications
        case .basic:
            return basicSpecifications
        case .simple:
            return simpleSpecifications
        }
    }
}

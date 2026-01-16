//
//  FontName.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 03/01/26.
//


import UIKit
#if canImport(SwiftUI)
import SwiftUI
#endif


enum FontNameSora: String {

    case thin = "Sora-Thin"
    case extraLight = "Sora-ExtraLight"
    case light = "Sora-Light"
    case regular = "Sora-Regular"
    case medium = "Sora-Medium"
    case semiBold = "Sora-SemiBold"
    case bold = "Sora-Bold"
    case extraBold = "Sora-ExtraBold"

    // MARK: - UIKit
    func uiFont(size: CGFloat) -> UIFont {
        UIFont(name: rawValue, size: size) ?? .systemFont(ofSize: size)
    }

    // MARK: - SwiftUI
    @available(iOS 13.0, *)
    func swiftUIFont(size: CGFloat) -> Font {
        Font.custom(rawValue, size: size)
    }
}

// MARK: - Typography Tokens (Figma-like)

enum TypographyStyle {
    case title
    case heading
    case subheading
    case body
    case caption
    case button
    case carouselButton
}

struct TypographyToken {
    let font: FontNameSora
    let size: CGFloat
}

extension TypographyStyle {
    var token: TypographyToken {
        switch self {
        case .heading:
            return .init(font: .bold, size: 24)

        case .subheading:
            return .init(font: .semiBold, size: 18)

        case .body:
            return .init(font: .regular, size: 14)

        case .caption:
            return .init(font: .regular, size: 12)

        case .button:
            return .init(font: .semiBold, size: 16)
        case .carouselButton:
            return .init(font: .semiBold, size: 14)
        case .title:
            return .init(font: .semiBold, size: 32)
        }
    }
}

#if canImport(SwiftUI)
extension Font {
    static func brand(_ style: TypographyStyle) -> Font {
        let token = style.token
        return token.font.swiftUIFont(size: token.size)
    }
}
#endif

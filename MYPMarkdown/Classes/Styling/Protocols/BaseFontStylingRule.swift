//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public protocol BaseFontStylingRule : ItemStyling {

    var baseFont: UIFont? { get }
}

extension ItemStyling {

    func neededBaseFont() -> UIFont? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? BaseFontStylingRule, styling.baseFont != nil {
                return styling.baseFont
            }
        }
        return nil
    }

    func neededFont() -> UIFont? {
        
        var font: UIFont? = neededBaseFont()

        if shouldFontBeBold() && shouldFontBeItalic() {
            font = font?.makeItalicBold()
        } else if shouldFontBeBold() {
            font = font?.makeBold()
        } else if shouldFontBeItalic() {
            font = font?.makeItalic()
        }

        if let textSize = neededTextSize() {
            font = font?.changeSize(textSize)
        }

        return font
    }
}

private extension UIFont {

    func makeBold() -> UIFont? {
        if let descriptor = fontDescriptor.withSymbolicTraits(.traitBold) {
            return UIFont(descriptor: descriptor, size: pointSize)
        }

        return nil
    }

    func makeItalic() -> UIFont? {
        if let descriptor = fontDescriptor.withSymbolicTraits(.traitItalic) {
            return UIFont(descriptor: descriptor, size: pointSize)
        }

        return nil
    }

    func makeItalicBold() -> UIFont? {
        if let descriptor = fontDescriptor.withSymbolicTraits([.traitItalic, .traitBold]) {
            return UIFont(descriptor: descriptor, size: pointSize)
        }

        return nil
    }

    func changeSize(_ size : CGFloat) -> UIFont {
        return UIFont(descriptor: self.fontDescriptor.withSize(size), size: size)
    }
}

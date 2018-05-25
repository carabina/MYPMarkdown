//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public class HeadingStyling: ItemStyling, TextColorStylingRule, BaseFontStylingRule, ContentInsetStylingRule, BoldStylingRule, ItalicStylingRule, UnderlineStylingRule, TextAlignmentStylingRule, CapitalizationStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {
        return markDownItem is HeaderMarkDownItem
    }

    var level:Int = 0

    func configureForLevel(_ level:Int) {
        self.level = level
    }

    public var fontsForLevels = [
        UIFont.systemFont(ofSize: 30),
        UIFont.systemFont(ofSize: 26),
        UIFont.systemFont(ofSize: 21),
        UIFont.systemFont(ofSize: 18),
        UIFont.systemFont(ofSize: 16),
        UIFont.systemFont(ofSize: 16)
    ]

    public var baseFont: UIFont? {
        return fontsForLevels.elementForLevel(level)
    }
    
    // H1: rgb(0, 119, 187)
    // H2-6: rgb(44, 62, 80);
    public var textColorsForLevels:[UIColor] = [
        UIColor(red: 0.0 / 255.0, green: 119.0 / 255.0, blue: 187.0 / 255.0, alpha: 1.0),
        UIColor(red: 44.0 / 255.0, green: 62.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)
    ]

    public var textColor: UIColor? {
        return textColorsForLevels.elementForLevel(level)
    }

    public var contentInsetsForLevels: [UIEdgeInsets] = [
        UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 10)
    ]

    public var contentInsets: UIEdgeInsets {
        return contentInsetsForLevels.elementForLevel(level) ?? UIEdgeInsets()
    }
    
    public var isBold = false
    public var isItalic = false
    public var isUnderlined : Bool = false

    public var textAlignment:TextAlignment = .left

    public var capitalizationForLevels: [Capitalization?] = []

    public var capitalization: Capitalization? {
        return capitalizationForLevels.elementForLevel(level) ?? nil
    }

    public init(){}
}

private extension Array {

    func elementForLevel(_ level:Int) -> Element? {
        if level <= 0 {
            return self[0]
        }

        if level > count {
            return last
        }

        return self[level - 1]
    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

import UIKit

public class InlineCodeStyling: ItemStyling, BoldStylingRule, TextColorStylingRule, ItalicStylingRule, BackgroundStylingRule, BaseFontStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is InlineCodeMarkDownItem
    }
    // rgb(44, 62, 80)
    public var textColor: UIColor? = UIColor(red: 44.0 / 255.0, green: 62.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)
    public var baseFont : UIFont? = nil
    // rgb(214, 219, 223)
    public var backgroundColor: UIColor? = UIColor(red: 214.0 / 255.0, green: 219.0 / 255.0, blue: 223.0 / 255.0, alpha: 1.0)
    public var isBold = false
    public var isItalic = false

    public init(){}

}

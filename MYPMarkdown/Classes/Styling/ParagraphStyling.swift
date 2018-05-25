//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public struct ParagraphStyling: ItemStyling, TextColorStylingRule, LineHeightStylingRule, BaseFontStylingRule, ContentInsetStylingRule, BoldStylingRule, ItalicStylingRule, TextAlignmentStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is ParagraphMarkDownItem
    }

    public var baseFont: UIFont? = UIFont.systemFont(ofSize: 16)
    // rgb(44, 62, 80);
    public var textColor: UIColor? = UIColor(red: 44.0 / 255, green: 62.0 / 255, blue: 80.0 / 255, alpha: 1.0)

    public var contentInsets:UIEdgeInsets = UIEdgeInsets(top:0, left: 0, bottom: 5, right: 0)
    
    public var lineHeight:CGFloat? = 4
    
    public var isBold = false
    public var isItalic = false

    public var textAlignment:TextAlignment = .left

    public init(){}
}

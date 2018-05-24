//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

open class QuoteStyling: ItemStyling, ContentInsetStylingRule, TextColorStylingRule, BaseFontStylingRule, ItalicStylingRule {
    open var parent : ItemStyling? = nil

    open func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is QuoteMarkDownItem
    }

    open var baseFont: UIFont? = .systemFont(ofSize: UIFont.systemFontSize)
    open var textColor: UIColor? = .gray
    open var isItalic: Bool = true

    open var contentInsets = UIEdgeInsets(top: 0, left:  20, bottom: 0, right: 0)

    public init(){}

}

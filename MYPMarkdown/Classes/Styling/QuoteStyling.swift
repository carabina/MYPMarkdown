//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

open class QuoteStyling: ItemStyling, ContentInsetStylingRule, TextColorStylingRule, BackgroundStylingRule, BaseFontStylingRule, ItalicStylingRule {
    
    open var parent : ItemStyling? = nil

    open func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is QuoteMarkDownItem
    }
    // rgba(102, 128, 153, 0.05)
    open var backgroundColor: UIColor? = UIColor(red: 102.0 / 255.0, green: 128.0 / 255.0, blue: 153.0 / 255.0, alpha: 0.05)
    open var baseFont: UIFont? = .systemFont(ofSize: 16)
    // rgb(44, 62, 80)
    open var textColor: UIColor? = UIColor(red: 44.0 / 255.0, green: 62.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)
    open var isItalic: Bool = false

    open var contentInsets = UIEdgeInsets(top: 10, left:  20, bottom: 10, right: 0)

    public init(){}
    
    func neededBackgroundColor() -> UIColor? {
        // not allow the text's line background. We set background for the container UIView
        return nil
    }

}

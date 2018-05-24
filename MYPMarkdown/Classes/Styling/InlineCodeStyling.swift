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

    public var textColor: UIColor? = .black
    public var baseFont : UIFont? = nil
    public var backgroundColor: UIColor? = UIColor.lightGray.withAlphaComponent(0.25)
    public var isBold = false
    public var isItalic = true

    public init(){}

}

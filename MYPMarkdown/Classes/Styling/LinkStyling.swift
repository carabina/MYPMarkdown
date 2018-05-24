//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public struct LinkStyling: ItemStyling, TextColorStylingRule, UnderlineStylingRule, BoldStylingRule, ItalicStylingRule, BaseFontStylingRule {
    
    public var parent : ItemStyling? = nil
    
    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {
        
        return markDownItem is LinkMarkDownItem
    }

    public var textColor: UIColor? = .brown
    public var baseFont : UIFont? = nil

    public var isBold = false
    public var isItalic = false
    public var isUnderlined = true

    public init(){}

}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public struct StrikeThroughStyling: StrikeThroughStylingRule, TextColorStylingRule, BaseFontStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is StrikeMarkDownItem
    }

    public var isStrikeThrough: Bool = true
    public var baseFont : UIFont? = nil

    public var textColor: UIColor? = nil

    public init(){}

}

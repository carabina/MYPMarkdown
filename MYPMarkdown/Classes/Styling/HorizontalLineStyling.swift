//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public struct HorizontalLineStyling: ItemStyling, LineWidthStylingRule, BackgroundStylingRule, ContentInsetStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is HorizontalLineMarkDownItem
    }

    public var backgroundColor: UIColor? = UIColor.gray
    public var lineWidth: CGFloat = 0.5

    public var contentInsets = UIEdgeInsets(top:   5, left:  0, bottom: 5, right: 0)

    public init(){}

}

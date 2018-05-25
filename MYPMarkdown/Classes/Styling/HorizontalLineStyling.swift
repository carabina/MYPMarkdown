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
    // rgb(128, 128, 128);
    public var backgroundColor: UIColor? = UIColor(red: 128.0/255.0, green: 128.0/255.0, blue: 128.0/255.0, alpha: 1.0) //UIColor.gray
    // One Pixal
    public var lineWidth: CGFloat = 1.0 / UIScreen.main.scale

    public var contentInsets = UIEdgeInsets(top:   5, left:  0, bottom: 5, right: 0)

    public init(){}

}

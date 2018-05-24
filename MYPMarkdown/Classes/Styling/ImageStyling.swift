//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public struct ImageStyling: ItemStyling, ContentInsetStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is ImageMarkDownItem
    }

    public var contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)

    public init(){}

}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public protocol Styling {

    var itemStylingRules: [ItemStyling] { get }
}

extension Styling {

    func stylingForMarkownItem(_ item : MarkDownItem) -> ItemStyling {
        for styling in itemStylingRules {
            if styling.isApplicableOn(item) {
                return styling
            }
        }

        return EmptyItemStyling()
    }
}

struct EmptyItemStyling: ItemStyling {

    var parent: ItemStyling? = nil

    func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {
        return true
    }
}

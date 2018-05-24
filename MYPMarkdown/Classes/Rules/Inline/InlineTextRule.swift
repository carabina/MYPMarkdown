//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class InlineTextRule : InlineRule {
    
    public init() {}

    //MARK: Rule

    open func recognizesLines(_ lines:[String]) -> Bool {
        /// Always return true since this is used as default rule
        return true
    }

    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        let line = lines.first ?? ""

        return InlineTextMarkDownItem(lines: lines, content: line)
    }

    //MARK: InlineRule

    open func getAllMatches(_ lines:[String]) -> [NSRange] {
        return []
    }

}

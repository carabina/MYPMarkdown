//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class HorizontalLineRule: RegExRule {

    public init() {}

    /// Example: ---

    open var expression = NSRegularExpression.expressionWithPattern("(^\\-{3,})$")

    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines: [String]) -> MarkDownItem {
        return HorizontalLineMarkDownItem(lines: lines, content: "")
    }
}

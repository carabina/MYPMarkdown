//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class BlockQuoteRule: RegExRule {

    public init() {}

    /// Example: > Quote
    // It's block. Could have many lines not just one.
    open var expression = NSRegularExpression.expressionWithPattern("(^>{1,}) (.*?)$")

    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        let content = lines.first?.subStringWithExpression(expression, ofGroup: 2)
        return QuoteMarkDownItem(lines: lines, content: content ?? "")
    }
}

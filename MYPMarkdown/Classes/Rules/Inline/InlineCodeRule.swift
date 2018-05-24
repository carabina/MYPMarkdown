//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class InlineCodeRule : InlineRegexRule {
    
    public init() {}

    /// Example: `text`
    open var expression = NSRegularExpression.expressionWithPattern("\\`{1}(.+?)\\`{1}")

    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        let content = lines.first?.subStringWithExpression(expression, ofGroup: 1)
        return InlineCodeMarkDownItem(lines: lines, content: content ?? "")
    }
}

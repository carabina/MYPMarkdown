//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class BoldRule: InlineRegexRule {
    
    public init() {}

    open var expression = NSRegularExpression.expressionWithPattern("(\\*{2}|\\_{2})(.+?)(\\*{2}|\\_{2})(?!\\*|\\_)")
    
    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        let content = lines.first?.subStringWithExpression(expression, ofGroup: 2)
        return BoldMarkDownItem(lines: lines, content: content ?? "")
    }
}

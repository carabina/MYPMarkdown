//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

open class ItalicRule: InlineRegexRule {
    
    public init() {}

    /// Example: *text* or _text_
    open var expression = NSRegularExpression.expressionWithPattern("(?<!\\_|\\*)(\\_{1}|\\*{1})(?!\\_|\\*)(.+?)(?<!\\_|\\*)(\\_{1}|\\*{1})(?!\\_|\\*)")

    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        let content = lines.first?.subStringWithExpression(expression, ofGroup: 2)
        return ItalicMarkDownItem(lines: lines, content: content ?? "")
    }

}

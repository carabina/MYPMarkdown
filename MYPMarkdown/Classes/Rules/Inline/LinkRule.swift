//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class LinkRule: InlineRegexRule {
    
    public init() {}

    /// Example: [Google](http://www.google.com)
    open var expression = NSRegularExpression.expressionWithPattern("(?<!!\\p{Z}{0,1})\\[{1}(.+?)\\]\\({1}(.+?)\\)")

    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        
        let url:String? =  lines.first?.subStringWithExpression(expression, ofGroup: 2)
        let content:String? =  lines.first?.subStringWithExpression(expression, ofGroup: 1)

        return LinkMarkDownItem(lines: lines, content: content ?? "", url: url ?? "")
    }
}

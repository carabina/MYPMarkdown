//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class ImageRule : InlineRegexRule {
    
    public init() {}

    /// Example: ![Alt text](image.png)
    public var expression = NSRegularExpression.expressionWithPattern("!\\[([^]]*)\\]\\(([^]]+?)\\)")


    public func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {

        let file:String? =  lines.first?.subStringWithExpression(expression, ofGroup: 2)
        let altText:String? =  lines.first?.subStringWithExpression(expression, ofGroup: 1)
        
        return ImageMarkDownItem(lines: lines, file: file ?? "", altText: altText ?? "")
    }
}

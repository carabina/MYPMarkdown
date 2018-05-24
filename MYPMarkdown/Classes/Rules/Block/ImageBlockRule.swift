//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class ImageBlockRule: RegExRule {

    public init() {}

    /// Example: ![Alt text](image.png)

    open var expression = NSRegularExpression.expressionWithPattern("^(!\\p{Z}{0,1})\\[{0,1}(.+?)\\]\\({1}(.+?)\\)$")

    //MARK: Rule

    open func createMarkDownItemWithLines(_ lines: [String]) -> MarkDownItem {

        let file:String? =  lines.first?.subStringWithExpression(expression, ofGroup: 3)
        let altText:String? =  lines.first?.subStringWithExpression(expression, ofGroup: 2)

        return ImageBlockMarkDownItem(lines: lines, file: file ?? "", altText: altText ?? "")
    }
}

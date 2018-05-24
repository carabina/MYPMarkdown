//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class ParagraphRule: Rule {

    public init() {}

    //MARK: Rule

    open func recognizesLines(_ lines:[String]) -> Bool {
        return true
    }

    open  func createMarkDownItemWithLines(_ lines:[String]) -> MarkDownItem {
        return ParagraphMarkDownItem(lines:lines, content: lines.first ?? "")
    }
}

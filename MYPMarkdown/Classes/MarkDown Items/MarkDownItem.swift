//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class MarkDownItem {

    var lines:[String]
    var markDownItems:[MarkDownItem]?

    open var content:String

    public required init(lines:[String], content:String) {
        self.content = content
        self.lines = lines
    }

    func allowsChildMarkDownItems() -> Bool {
        return true
    }
}

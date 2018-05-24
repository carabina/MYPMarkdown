//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class CodeBlockMarkDownItem : MarkDownItem {

    override func allowsChildMarkDownItems() -> Bool {
        return false
    }
}

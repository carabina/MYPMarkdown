//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class HeaderMarkDownItem : MarkDownItem {

    open let level:Int

    init(lines: [String], content: String, level:Int) {
        self.level = level
        super.init(lines: lines, content: content)
    }
    
    required public init(lines: [String], content: String) {
        fatalError("init(lines:content:) has not been implemented")
    }

}

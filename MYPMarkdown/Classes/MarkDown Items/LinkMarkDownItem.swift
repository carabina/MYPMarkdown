//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class LinkMarkDownItem: MarkDownItem {
    
    let url: String
    
    init(lines: [String], content: String, url: String) {
        self.url = url
        super.init(lines: lines, content: content)
    }
    
    required public init(lines: [String], content: String) {
        fatalError("init(lines:content:) has not been implemented")
    }
}

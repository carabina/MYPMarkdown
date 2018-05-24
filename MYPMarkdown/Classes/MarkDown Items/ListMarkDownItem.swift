//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class ListMarkDownItem: MarkDownItem, HasListItems, HasIndex {
    var listItems: [ListMarkDownItem]?

    let level: Int
    let index: Int?

    required public init(lines: [String], content: String, level: Int, index: Int? = nil) {
        self.level = level
        self.index = index
        super.init(lines: lines, content: content)
    }

    var indexCharacter: String? {
        guard let index = index else { return nil }
        return "\(index)"
    }
    
    public required init(lines: [String], content: String) {
        fatalError("init(lines:content:) has not been implemented")
    }
}

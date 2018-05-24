//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class UnOrderedListType: ListType {
    
    public init() {}

    public var pattern: String {
        return "\\-|\\+|\\*"
    }

    public var relatedListMarkDownType: ListMarkDownItem.Type {
        return UnorderedListMarkDownItem.self
    }

    open func getIndex(_ stringIndex: String) -> Int? {
        return nil
    }
}

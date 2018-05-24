//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class OrderedListType: ListType {

    public init() {}

    public var pattern: String {
        return "\\d\\."
    }

    public var relatedListMarkDownType: ListMarkDownItem.Type {
        return OrderedListMarkDownItem.self
    }

    open func getIndex(_ stringIndex: String) -> Int? {
        var stringIndex = stringIndex
        stringIndex = stringIndex.replacingOccurrences(of: ".", with: "")

        return Int(stringIndex)
    }
}

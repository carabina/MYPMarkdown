//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class AlphabeticListType: ListType {
    
    public init() {}

    public var pattern:String {
        return "[a-zA-Z]\\."
    }

    public var relatedListMarkDownType: ListMarkDownItem.Type {
        return AlphabeticallyOrderedMarkDownItem.self
    }

    open func getIndex(_ stringIndex: String) -> Int? {
        let alphabeticIndexCharacters = "abcdefghijklmnopqrstuvwxyz"

        var stringIndex = stringIndex
        stringIndex = stringIndex.replacingOccurrences(of: ".", with: "")

        if let index = alphabeticIndexCharacters.range(of: stringIndex.lowercased())?.lowerBound {
            return alphabeticIndexCharacters.distance(from: alphabeticIndexCharacters.startIndex, to: index)
        }

        return nil
    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

extension String {

    func subString(_ start:Int, _ end:Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: start)
        let endIndex = self.index(self.startIndex, offsetBy: end)
        return String(self[startIndex..<endIndex])
    }

    func subString(_ range:NSRange) -> String {
        guard let range = Range(range, in: self) else { return "" }
        let startIndex = self.distance(from: self.startIndex, to: range.lowerBound)
        let endIndex = self.distance(from: self.startIndex, to: range.upperBound)
        return subString(startIndex, endIndex)
    }

    func subStringWithExpression(_ expression:NSRegularExpression, ofGroup group:Int) -> String {
        var subString = ""
        let range = NSRange(location: 0, length: self.length())
        let results = expression.matches(in: self, options:[], range: range)

        if let result = results.first {
            subString = self.subString(result.range(at: group))
        }

        return subString
    }

    /**
     A faster way of counting Swift strings by using the Objective C implementation

     - returns: Number of characters in the String
     */
    func length() -> Int {
        return (self as NSString).length
    }
}

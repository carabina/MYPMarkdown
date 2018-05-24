//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol InlineRegexRule : InlineRule {
    var expression:NSRegularExpression { get }
}

extension InlineRegexRule {

    public func getAllMatches(_ lines:[String]) -> [NSRange] {
        guard let line = lines.first else { return [] }
        return expression.rangesForString(line)
    }
    
    //MARK: Rule

    public func recognizesLines(_ lines:[String]) -> Bool {
        guard let line = lines.first else { return false }
        let range = NSRange(location: 0, length: line.length())
        let results = expression.matches(in: line, options:[], range: range)
        return results.count > 0
    }
}

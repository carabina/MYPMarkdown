//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol RegExRule: Rule {
    var expression: NSRegularExpression { get }
}

extension RegExRule {
    public func recognizesLines(_ lines: [String]) -> Bool {
        return expression.hasMatchesInString(lines.first)
    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol StrikeThroughStylingRule : ItemStyling {

    var isStrikeThrough : Bool { get }
}

extension StrikeThroughStylingRule {
    var isStrikeThrough:Bool {
        return true
    }
}

extension ItemStyling {

    func shouldBeStrikeThrough() -> Bool {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? StrikeThroughStylingRule {
                return styling.isStrikeThrough
            }
        }

        return false
    }
}

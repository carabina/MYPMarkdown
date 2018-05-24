//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol BoldStylingRule : ItemStyling {
    var isBold : Bool { get }
}

extension ItemStyling {

    func shouldFontBeBold() -> Bool {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? BoldStylingRule {
                return styling.isBold
            }
        }

        return false
    }
}

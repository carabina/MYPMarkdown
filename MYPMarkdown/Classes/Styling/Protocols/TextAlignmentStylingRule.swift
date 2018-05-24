//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public enum TextAlignment {
    case left
    case right
    case center
}

public protocol TextAlignmentStylingRule: ItemStyling {
    var textAlignment : TextAlignment { get }
}

extension ItemStyling {

    func neededTextAlignment() -> TextAlignment? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? TextAlignmentStylingRule {
                return styling.textAlignment
            }
        }

        return nil
    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public protocol TextColorStylingRule: ItemStyling {

    var textColor : UIColor? { get }
}

extension ItemStyling {

    func neededTextColor() -> UIColor? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? TextColorStylingRule, styling.textColor != nil {
                return styling.textColor
            }
        }

        return nil
    }
}

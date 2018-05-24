//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public protocol TextSizeStylingRule : ItemStyling {

    var textSize : CGFloat { get }
}

extension ItemStyling {

    func neededTextSize() -> CGFloat? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? TextSizeStylingRule {
                return styling.textSize
            }
        }

        return nil
    }
}

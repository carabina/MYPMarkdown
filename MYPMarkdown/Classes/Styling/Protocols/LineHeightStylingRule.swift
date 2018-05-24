//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public protocol LineHeightStylingRule : ItemStyling {

    /// Spacing between lines
    var lineHeight : CGFloat? { get }
}

extension ItemStyling {
    
    func neededLineHeight() -> CGFloat? {
        
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? LineHeightStylingRule, styling.lineHeight != nil {
                return styling.lineHeight
            }
        }
        
        return nil
    }
}

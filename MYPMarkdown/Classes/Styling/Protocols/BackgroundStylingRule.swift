//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public protocol BackgroundStylingRule : ItemStyling {
    var backgroundColor : UIColor? { get }
}

extension ItemStyling {
    
    func neededBackgroundColor() -> UIColor? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? BackgroundStylingRule, styling.backgroundColor != nil {
                return styling.backgroundColor
            }
        }
        
        return nil
    }
}

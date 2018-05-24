//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol UnderlineStylingRule : ItemStyling {
    var isUnderlined : Bool { get }
}

extension ItemStyling {
    
    func shouldFontBeUnderlined() -> Bool {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? UnderlineStylingRule {
                return styling.isUnderlined
            }
        }
        
        return false
    }
}

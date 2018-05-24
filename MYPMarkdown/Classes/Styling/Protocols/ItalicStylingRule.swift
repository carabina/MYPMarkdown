//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol ItalicStylingRule : ItemStyling {
    
    var isItalic : Bool { get }
}

extension ItemStyling {

    func shouldFontBeItalic() -> Bool {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? ItalicStylingRule {
                return styling.isItalic
            }
        }

        return false
    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

class InlineAttributedStringComposer: ElementComposer<NSMutableAttributedString> {

    override func compose(_ elements: [NSMutableAttributedString]) -> NSMutableAttributedString {

        let result = NSMutableAttributedString()

        for element in elements {

            result.append(element)
        }
        
        return result
    }
}

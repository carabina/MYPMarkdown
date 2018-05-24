//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

class StringComposer: ElementComposer<String> {

    override func compose(_ elements: [String]) -> String {

        var result = ""

        for element in elements {

            result += element
        }

        return result
    }
}

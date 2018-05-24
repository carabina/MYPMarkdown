//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

class ViewAppenderComposer: ElementComposer<UIView> {

    override func compose(_ elements: [UIView]) -> UIView {

        let container = UIView()
        let viewAppender = AutoLayoutViewAppender(container:container)

        for element in elements {
            viewAppender.appendView(element, verticalMargin: 0, horizontalMargin: 0)
        }
        
        viewAppender.finishAppendingWithPadding(0)
        
        return container
    }
}

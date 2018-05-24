//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

class LayoutBuilder<T> {

    func build(_ layoutBlocks:[MarkDownItem]) -> T {
        fatalError("\(String(describing: self)): Implement build")
    }

}

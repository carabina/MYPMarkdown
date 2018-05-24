//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

class AlphabeticListViewLayoutBlockBuilder : ListViewLayoutBlockBuilder {

    //MARK: LayoutBuilder
    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return AlphabeticallyOrderedMarkDownItem.self
    }
}

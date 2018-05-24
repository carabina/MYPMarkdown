//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

class ContainerAttributedStringBlockBuilder: LayoutBlockBuilder<NSMutableAttributedString> {

    // MARK: LayoutBlockBuilder

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<NSMutableAttributedString>, styling : ItemStyling?) -> NSMutableAttributedString {
        let string = NSMutableAttributedString()

        if let markDownItems = markDownItem.markDownItems {

            for subString in converter.convertToElements(markDownItems, applicableStyling: styling) {

                string.append(subString)
            }
        }

        return string
    }
}

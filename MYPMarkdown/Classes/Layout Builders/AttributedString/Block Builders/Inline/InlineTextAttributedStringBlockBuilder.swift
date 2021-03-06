//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

class InlineTextAttributedStringBlockBuilder: LayoutBlockBuilder<NSMutableAttributedString> {

    //MARK: LayoutBuilder

    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return InlineTextMarkDownItem.self
    }

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<NSMutableAttributedString>, styling : ItemStyling) -> NSMutableAttributedString {

        let content: String = applyCapitalization(content: markDownItem.content, capitalization: styling.neededCapitalization())
        return NSMutableAttributedString(string: content, attributes: StringAttributesBuilder().attributesForStyling(styling))
    }
}

private extension InlineTextAttributedStringBlockBuilder {
    func applyCapitalization(content: String, capitalization: Capitalization?) -> String {
        if let capitalization =  capitalization {
            switch capitalization {
            case .uppercased:
                return content.uppercased()
            case .lowercased:
                return content.lowercased()
            case .capitalized:
                return content.capitalized
            }
        }

        return content
    }
}

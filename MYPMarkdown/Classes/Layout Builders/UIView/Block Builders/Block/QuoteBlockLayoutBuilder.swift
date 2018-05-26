//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

class QuoteBlockLayoutBuilder: InlineAttributedStringViewLayoutBlockBuilder {

    //MARK: LayoutBuilder

    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return QuoteMarkDownItem.self
    }

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<UIView>, styling : ItemStyling) -> UIView {
        let label = AttributedInteractiveLabel()
        label.setAttributedString(attributedStringForMarkDownItem(markDownItem, styling: styling))

        let spacing:UIEdgeInsets? = (styling as? ContentInsetStylingRule)?.contentInsets
        let containerView = ContainerView(view: label, spacing: spacing)
        containerView.backgroundColor = (styling as? BackgroundStylingRule)?.backgroundColor
        return containerView
    }
}

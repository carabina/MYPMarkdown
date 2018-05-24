//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

class CodeViewLayoutBlockBuilder : InlineAttributedStringViewLayoutBlockBuilder {

    //MARK: LayoutBuilder

    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return CodeBlockMarkDownItem.self
    }

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<UIView>, styling : ItemStyling) -> UIView {
        let codeBlockMarkDownItem = markDownItem as! CodeBlockMarkDownItem

        let label = AttributedInteractiveLabel()
        label.numberOfLines = 0
        label.text = codeBlockMarkDownItem.content
        label.font = (styling as? BaseFontStylingRule)?.baseFont
        label.textColor = (styling as? TextColorStylingRule)?.textColor
        
        let spacing:UIEdgeInsets? = (styling as? ContentInsetStylingRule)?.contentInsets

        let containerView = ContainerView(view: label, spacing: spacing)
        containerView.backgroundColor = (styling as? BackgroundStylingRule)?.backgroundColor

        return containerView
    }
}

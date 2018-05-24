//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

class HorizontalLineLayoutBlockBuilder : LayoutBlockBuilder<UIView> {
    
    //MARK: LayoutBuilder

    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return HorizontalLineMarkDownItem.self
    }

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<UIView>, styling : ItemStyling) -> UIView {

        let lineView = LineView()
        lineView.backgroundColor = (styling as? BackgroundStylingRule)?.backgroundColor
        lineView.height = (styling as? LineWidthStylingRule)?.lineWidth ?? 0

        let spacing:UIEdgeInsets? = (styling as? ContentInsetStylingRule)?.contentInsets
        return ContainerView(view: lineView, spacing: spacing)
    }
}

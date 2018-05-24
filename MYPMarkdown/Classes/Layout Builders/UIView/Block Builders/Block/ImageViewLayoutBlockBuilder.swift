//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

class ImageViewLayoutBlockBuilder : LayoutBlockBuilder<UIView> {

    //MARK: LayoutBuilder

    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return ImageBlockMarkDownItem.self
    }

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<UIView>, styling : ItemStyling) -> UIView {
        let imageBlockMarkDownItem = markDownItem as! ImageBlockMarkDownItem

        let imageView = RemoteImageView(file: imageBlockMarkDownItem.file, altText: imageBlockMarkDownItem.altText)
        
        let spacing:UIEdgeInsets? = (styling as? ContentInsetStylingRule)?.contentInsets
        return ContainerView(view: imageView, spacing: spacing)
    }
}

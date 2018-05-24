//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

class LinkViewLayoutBlockBuilder: ContainerAttributedStringBlockBuilder {
    
    //MARK: LayoutBuilder
    
    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return LinkMarkDownItem.self
    }
    
    override func build(_ markDownItem: MarkDownItem, asPartOfConverter converter: MarkDownConverter<NSMutableAttributedString>, styling : ItemStyling?) -> NSMutableAttributedString {
        let linkMarkDownItem = markDownItem as! LinkMarkDownItem
        
        let attributedString = super.build(markDownItem, asPartOfConverter: converter, styling: styling)
        
        let url = URL(string: linkMarkDownItem.url)
        
        if let url = url {
            attributedString.addAttributes([.link : url ], range: attributedString.fullRange())
        }

        return attributedString
    }
}

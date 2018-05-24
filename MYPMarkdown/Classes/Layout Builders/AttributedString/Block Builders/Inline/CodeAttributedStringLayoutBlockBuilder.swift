//
//  CodeAttributedStringLayoutBlockBuilder.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

class CodeAttributedStringLayoutBlockBuilder: InlineAttributedStringLayoutBlockBuilder {
    
    //MARK: LayoutBuilder
    
    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return CodeBlockMarkDownItem.self
    }
    
    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<NSMutableAttributedString>, styling : ItemStyling) -> NSMutableAttributedString {
        let attributedString = NSMutableAttributedString(string: markDownItem.content)
        let attributes = StringAttributesBuilder().attributesForStyling(styling)
        attributedString.addAttributes(attributes, range: attributedString.fullRange())
        
        return attributedString
    }
}

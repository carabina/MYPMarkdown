//
//  ParagraphAttributedStringLayoutBlockBuilder.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

class ParagraphAttributedStringLayoutBlockBuilder: InlineAttributedStringLayoutBlockBuilder {

    //MARK: LayoutBuilder

    override func relatedMarkDownItemType() -> MarkDownItem.Type {
        return ParagraphMarkDownItem.self
    }

    override func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<NSMutableAttributedString>, styling : ItemStyling) -> NSMutableAttributedString {
        let paragraphStyling = styling as? ParagraphStyling
        let attributedString = attributedStringForMarkDownItem(markDownItem, styling: styling)
        
        return attributedStringWithContentInset(attributedString, contentInset: paragraphStyling?.contentInsets ?? UIEdgeInsets())
    }
}

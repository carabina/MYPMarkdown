//
//  MarkDownToAttributedStringConverterConfiguration.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

class MarkDownToInlineAttributedStringConverterConfiguration: MarkDownConverterConfiguration<NSMutableAttributedString> {

    override init(elementComposer: ElementComposer<NSMutableAttributedString>, styling : Styling) {
        super.init(elementComposer: elementComposer, styling : styling)
        addLayoutBlockBuilder(InlineTextAttributedStringBlockBuilder())
        addLayoutBlockBuilder(BoldAttributedStringBlockBuilder())
        addLayoutBlockBuilder(StrikeThroughAttributedStringBlockBuilder())
        addLayoutBlockBuilder(ItalicAttributedStringBlockBuilder())
        addLayoutBlockBuilder(InlineImageAttributedStringBlockBuilder())
        addLayoutBlockBuilder(LinkViewLayoutBlockBuilder())
        addLayoutBlockBuilder(InlineCodeAttributedStringBlockBuilder())
    }

    convenience init(styling : Styling){
        self.init(elementComposer: InlineAttributedStringComposer(), styling: styling)
    }
}

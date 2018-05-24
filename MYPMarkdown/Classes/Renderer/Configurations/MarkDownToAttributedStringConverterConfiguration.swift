//
//  MarkDownToAttributedStringConverterConfiguration.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

open class MarkDownToAttributedStringConverterConfiguration: MarkDownConverterConfiguration<NSMutableAttributedString> {
    
    public override init(elementComposer: ElementComposer<NSMutableAttributedString>, styling : Styling) {
        
        super.init(elementComposer: elementComposer, styling : styling)
        
        let converter = MarkDownConverter(configuration: MarkDownToInlineAttributedStringConverterConfiguration(styling : styling))
        
        addLayoutBlockBuilder(HeaderAttributedStringLayoutBlockBuilder(converter: converter))
        addLayoutBlockBuilder(ParagraphAttributedStringLayoutBlockBuilder(converter: converter))
        addLayoutBlockBuilder(ListAttributedStringLayoutBlockBuilder(converter:converter))
        addLayoutBlockBuilder(OrderedListAttributedStringLayoutBlockBuilder(converter:converter))
        addLayoutBlockBuilder(AlphabeticListAttributedStringLayoutBlockBuilder(converter:converter))
        addLayoutBlockBuilder(CodeAttributedStringLayoutBlockBuilder(converter:converter))
        addLayoutBlockBuilder(QuoteAttributedStringLayoutBlockBuilder(converter:converter))
        addLayoutBlockBuilder(ImageAttributedStringBlockBuilder())
    }
    
    public convenience init(styling : Styling){
        self.init(elementComposer: AttributedStringComposer(), styling : styling)
    }
}

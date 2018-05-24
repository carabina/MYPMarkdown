//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class ContentfulFlavor : Flavor {
    
    open var rules:[Rule] = [
        HeaderRule(),
        ListRule(listTypes:[
            AlphabeticListType(),
            OrderedListType()
        ]),
        BlockQuoteRule(),
        HorizontalLineRule(),
        CodeBlockRule(),
        ImageBlockRule()
    ]
    
    open var defaultRule:Rule = ParagraphRule()

    open var inlineRules:[InlineRule] = [
        BoldRule(),
        ItalicRule(),
        StrikeRule(),
        ImageRule(),
        LinkRule(),
        InlineCodeRule()
    ]

    open var defaultInlineRule: InlineRule = InlineTextRule()

    public init() {

    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class ImageMarkDownItem : MarkDownItem {

    public let file:String
    public let altText:String
    
    init(lines: [String], file: String, altText:String) {
        self.file = file
        self.altText = altText
        super.init(lines: lines, content: altText)
    }
    
    required public init(lines: [String], content: String) {
        fatalError("init(lines:content:) has not been implemented")
    }
}

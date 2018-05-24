//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class MarkDownConverterConfiguration<T> {

    /// Dictionary that contains the connection between MarkDownItems and LayoutBlockBuilder's
    var markDownItemToLayoutBuilderMap: [String:LayoutBlockBuilder<T>] = [:]
    
    /// Any kind of element composer that can combine converted MarkDownItem's
    let elementComposer : ElementComposer<T>
    
    /// Styling to use
    let styling : Styling

    public init(elementComposer : ElementComposer<T>, styling : Styling) {

        self.elementComposer = elementComposer
        self.styling = styling
    }

    func layoutBlockBuilderForMarkDownItemType(_ markDownItemType: MarkDownItem.Type) -> LayoutBlockBuilder<T>? {
        return markDownItemToLayoutBuilderMap[String(describing: markDownItemType)]
    }

    open func addLayoutBlockBuilder(_ layoutBlockBuilder: LayoutBlockBuilder<T>) {
        markDownItemToLayoutBuilderMap[String(describing: layoutBlockBuilder.relatedMarkDownItemType())] = layoutBlockBuilder
    }
}

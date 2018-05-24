//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

open class LayoutBlockBuilder<T> {

    /**
     - Public init to be able to create custom layout block builders from outside MarkyMark
     - returns: Instance of LayoutBlockBuilder
     */

    public init(){}

    /**
     - Builds a displayable object of type T. For example UIView or String
     - Uses information from type the MarkDownItem
     - Must be overwritten by a subclass

     - parameter markDownItem: Markdown item that needs display

     - returns: T
     */

    open func build(_ markDownItem:MarkDownItem, asPartOfConverter converter : MarkDownConverter<T>, styling : ItemStyling) -> T {
        fatalError("\(String(describing: self)): Implement build")
    }

    /**
     Returns the kind of MarkDownItem the LayoutBlockBuilder supports

     - returns: Any MarkDownItem Class
     */

    open func relatedMarkDownItemType() -> MarkDownItem.Type {
        fatalError("\(String(describing: self)): Implement relatedMarkDownItemType")
    }
}

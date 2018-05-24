//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

open class ElementComposer<T> {

    /**
     Method that can merge elements of type T into one
     
     - parameter elements: elements to merge
     
     - returns: merged elements
     */
    func compose(_ elements : [T]) -> T {
        fatalError("\(String(describing: self)): Implement \(#function)")
    }
}

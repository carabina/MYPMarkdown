//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

public protocol ItemStyling {

    var parent : ItemStyling? { get set }
    func isApplicableOn(_ markDownItem : MarkDownItem) -> Bool
}

extension ItemStyling {

    /**
    Provides all ancestors, youngest first
    */
    func stylingWithPrecedingStyling() -> [ItemStyling] {

        return anstors(self)
    }

    /**
     Recursive method that collects all styling by looping through the parent

     - returns: A list of all ItemStyling found
     */
    func anstors(_ current : ItemStyling? = nil,  soFar : [ItemStyling] = []) -> [ItemStyling] {
        let current = current ?? self
        var soFar = soFar

        soFar.append(current)

        if let parent = current.parent {

            return anstors(parent, soFar: soFar)
        } else {

            return soFar
        }
    }
}

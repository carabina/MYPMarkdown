//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public protocol ListItemStylingRule : ItemStyling {

    /// Margin between list items
    var bottomListItemSpacing:CGFloat { get }
    /// Amount of left margin for each level of a nested list
    var listIdentSpace:CGFloat { get }

}

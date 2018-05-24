//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol Flavor {

    /// List of Rules that this flavor has
    var rules:[Rule] { get }
    var defaultRule:Rule { get }

    /// List of Inline rules that this flavor has
    var inlineRules:[InlineRule] { get }
    var defaultInlineRule:InlineRule { get }
}

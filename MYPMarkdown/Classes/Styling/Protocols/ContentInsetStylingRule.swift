//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public protocol ContentInsetStylingRule : ItemStyling {

    /// Margin from surrounding elements
    var contentInsets : UIEdgeInsets { get }
}

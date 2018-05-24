//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

protocol HasIndex {
    /// Index as number
    var index:Int? { get }

    /// Index as String. For example: 1. 2. 3. or A. B. C.
    var indexCharacter:String? { get }
}

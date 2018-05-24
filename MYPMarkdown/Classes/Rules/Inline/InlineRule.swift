//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public protocol InlineRule : Rule {

    /**
     Finds all matches in the given String

     - parameter lines: Lines to find the match in

     - returns: Array of ranges where the matches were found
     */
    
    func getAllMatches(_ lines:[String]) -> [NSRange]
}

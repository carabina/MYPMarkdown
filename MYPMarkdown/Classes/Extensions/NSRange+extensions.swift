//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

extension NSRange {

    func getLocationEnd() -> Int {
        return self.location + self.length
    }

    func isDirectlyConnectTo(_ range:NSRange) -> Bool {
        return (self.getLocationEnd() + 1) == range.location
    }
}

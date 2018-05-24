//
//  NSAttributedString+FullRange.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import UIKit

internal extension NSAttributedString {

    func fullRange() -> NSRange {

        return NSMakeRange(0, self.length)
    }
}

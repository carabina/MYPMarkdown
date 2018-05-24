//
//  CapitalizationStylingRule.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation

public enum Capitalization {
    case uppercased
    case lowercased
    case capitalized
}

public protocol CapitalizationStylingRule {
    var capitalization: Capitalization? { get }
}

extension ItemStyling {

    func neededCapitalization() -> Capitalization? {
        for styling in stylingWithPrecedingStyling() {
            if let styling = styling as? CapitalizationStylingRule {
                return styling.capitalization
            }
        }

        return nil
    }
}

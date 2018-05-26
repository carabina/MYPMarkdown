//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

open class CodeBlockStyling : ItemStyling, BackgroundStylingRule, TextColorStylingRule, ContentInsetStylingRule, BaseFontStylingRule {
    open var parent : ItemStyling? = nil

    open func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is CodeBlockMarkDownItem
    }
    // rgba(102, 128, 153, 0.05)
    open var backgroundColor: UIColor? = UIColor(red: 102.0 / 255.0, green: 128.0 / 255.0, blue: 153.0 / 255.0, alpha: 0.05) //UIColor.lightGray.withAlphaComponent(0.25)
    open var baseFont: UIFont? = .systemFont(ofSize: 14)
    // rgb(51, 51, 51);
    open var textColor: UIColor? = UIColor(red: 51.0 / 255.0, green: 51.0 / 255.0, blue: 51.0 / 255.0, alpha: 1.0)  //.gray

    open var contentInsets = UIEdgeInsets(top: 10, left:  20, bottom: 10, right: 10)

    public init(){}

}

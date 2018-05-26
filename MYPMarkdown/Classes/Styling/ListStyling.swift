//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public struct ListStyling: ItemStyling, BulletStylingRule, BaseFontStylingRule, ContentInsetStylingRule, ListItemStylingRule, TextColorStylingRule {

    public var parent : ItemStyling? = nil

    public func isApplicableOn(_ markDownItem: MarkDownItem) -> Bool {

        return markDownItem is ListMarkDownItem
    }

    public var bulletFont:UIFont? = .systemFont(ofSize: 16)
    // rgb(44, 62, 80)
    public var bulletColor:UIColor? = UIColor(red: 44.0 / 255.0, green: 62.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)
    public var bulletImage: UIImage? = nil
    public var bulletImages: [UIImage?]? = nil
    public var bulletViewSize: CGSize = CGSize(width: 16, height: 16)

    public var baseFont: UIFont? = UIFont.systemFont(ofSize: 16)

    public var contentInsets = UIEdgeInsets(top: 0, left:  0, bottom: 10, right: 10)

    public var bottomListItemSpacing:CGFloat = 5
    public var listIdentSpace:CGFloat = 15
    
    // rgb(44, 62, 80)
    public var textColor: UIColor? = UIColor(red: 44.0 / 255.0, green: 62.0 / 255.0, blue: 80.0 / 255.0, alpha: 1.0)

    public init(){}

}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public protocol BulletStylingRule : ItemStyling {

    /// Font to use for the bullet
    var bulletFont : UIFont? { get }
    /// Color to use for the bullet
    var bulletColor : UIColor? { get }
    /// Optional image as bullet instead of a font
    var bulletImage : UIImage? { get }
    /// Array of bullet images, each item in the array is used for deeper level nesting
    var bulletImages : [UIImage?]? { get }
    /// Size of the view used for the bullet
    var bulletViewSize : CGSize { get }
}

extension BulletStylingRule {

    public var bulletImage : UIImage? { return nil }

    public var bulletImages: [UIImage]? {
        if let bulletImage = bulletImage {
            return [bulletImage]
        } else {
            return []
        }
    }
}

//
//  TextAttachment.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

public class TextAttachment: NSTextAttachment {

    override public func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect {

        var imageSize = CGSize()

        let originalImageSize = image?.size ?? CGSize()
        let imageRatio = originalImageSize.height / originalImageSize.width

        let desiredWidth = originalImageSize.height/imageRatio
        if desiredWidth > lineFrag.width {
            imageSize.width = lineFrag.width
            imageSize.height = imageSize.width * imageRatio
        } else {
            imageSize.height = originalImageSize.height
            imageSize.width = desiredWidth
        }

        return CGRect(origin: CGPoint(), size: imageSize)
    }
}

//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//

import Foundation
import UIKit

/*
 * Image view that can retrieve images from a remote http location
 */

class RemoteImageView: UIImageView {
    
    let file:String
    let altText:String
    
    init(file:String, altText:String) {
        self.file = file
        self.altText = altText
        
        super.init(frame: CGRect.zero)
        
        contentMode = .scaleAspectFit
        
        if let image = UIImage(named: file) {
            self.image = image
            self.addAspectConstraint()
        } else if let url = URL(string: file) {
            loadImageFromURL(url)
        } else {
            print("Should display alt text instead: \(altText)")
        }
    }

    //MARK: Private
    
    fileprivate func loadImageFromURL(_ url:URL) {

        DispatchQueue.global(qos: .default).async {

            let data = try? Data(contentsOf: url)
            
            DispatchQueue.main.async(execute: {
                if let data = data, let image = UIImage(data: data) {
                    self.image = image

                    self.addAspectConstraint()
                }
            });
        }
    }
    
    fileprivate func addAspectConstraint(){
        if let image = image {
            let constraint = NSLayoutConstraint(
                item: self,
                attribute: .height,
                relatedBy: .equal,
                toItem: self,
                attribute: .width,
                multiplier: image.size.height / image.size.width,
                constant: 0
            )
            
            self.addConstraint(constraint)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

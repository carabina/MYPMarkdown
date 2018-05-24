//
//  ViewController.swift
//  MYPMarkdown
//
//  Created by mayuping321@163.com on 05/23/2018.
//  Copyright (c) 2018 mayuping321@163.com. All rights reserved.
//
import UIKit
import MYPMarkdown

enum ConverterConfiguration {
    case view
    case attributedString
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        self.view = UIScrollView()
        self.view.backgroundColor = .white
        //Change this constant to try different configurations
        let converterConfiguration = ConverterConfiguration.view
        
        //MarkyMark
        let mark = MYPMark(build: {
            $0.setFlavor(ContentfulFlavor())
        })
        
        let markDownItems = mark.parseMarkDown(getMarkDownString())
        
        let markDownView: UIView
        switch converterConfiguration {
        case .view:
            markDownView = getViewWithViewConverter(markDownItems)
        case .attributedString:
            markDownView = getViewWithAttributedStringConverter(markDownItems)
        }
        
        // Layout
        view.addSubview(markDownView)
        
        let views: [String: Any] = [
            "view" : view,
            "markDownView" : markDownView
        ]
        
        markDownView.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints:[NSLayoutConstraint] = []
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[markDownView(==view)]|", options: [], metrics: [:], views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|[markDownView]|", options: [], metrics: [:], views: views)
        view.addConstraints(constraints)
        
        super.viewDidLoad()
    }
}

private extension ViewController {
    
    func getViewWithViewConverter(_ markDownItems: [MarkDownItem]) -> UIView {
        let styling = DefaultStyling()
        styling.listStyling.bulletImages = [
            UIImage(named: "circle"),
            UIImage(named: "emptyCircle"),
            UIImage(named: "line"),
            UIImage(named: "square")
        ]
        
        styling.headingStyling.contentInsetsForLevels = [
            UIEdgeInsets(top: 5, left: 0, bottom: 15, right: 10), // H1
            UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 10) // H2, ...
        ]
        
        // Only uppercase H1 headers
        styling.headingStyling.capitalizationForLevels = [
            .uppercased, // H1
            nil //H2, ...
        ]
        
        let configuration = MarkdownToViewConverterConfiguration(styling: styling)
        let converter = MarkDownConverter(configuration: configuration)
        
        return converter.convert(markDownItems)
    }
    
    func getViewWithAttributedStringConverter(_ markDownItems: [MarkDownItem]) -> UIView {
        let styling = DefaultStyling()
        let configuration = MarkDownToAttributedStringConverterConfiguration(styling: styling)
        let converter = MarkDownConverter(configuration: configuration)
        
        let textView = UITextView()
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.dataDetectorTypes = .link
        textView.attributedText = converter.convert(markDownItems)
        textView.tintColor = styling.linkStyling.textColor
        textView.contentInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        
        return textView
    }
    
    func getMarkDownString() -> String {
        var markdownString:String = ""
        if let filepath = Bundle.main.path(forResource: "markdown", ofType: "txt") {
            markdownString = try! String(contentsOfFile: filepath)
        }
        
        return markdownString
    }
}

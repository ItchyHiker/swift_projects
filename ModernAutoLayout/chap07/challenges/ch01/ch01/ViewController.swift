//
//  ViewController.swift
//  ch01
//
//  Created by yuhua.cheng on 2019/11/28.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let authorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "William Shakespeare"
        label.font = UIFont.systemFont(ofSize: 24)
        label.numberOfLines = 0
        label.backgroundColor = .yellow
//        label.setContentHuggingPriority(.defaultLow+1, for: .horizontal)
        return label
    } ()
    
    private let quoteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "To be, or not to be, that is the question"
        label.font = UIFont.systemFont(ofSize: 24)
        label.numberOfLines = 0
        label.backgroundColor = .purple
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        
    }
    
    private func setupView() {
        view.addSubview(authorLabel)
        view.addSubview(quoteLabel)
        
        
        let margins = view.layoutMarginsGuide
        let quoteWidthConstraint = quoteLabel.widthAnchor.constraint(equalTo: authorLabel.widthAnchor, multiplier: 2.0)
        quoteWidthConstraint.priority = .defaultLow
        NSLayoutConstraint.activate([
            authorLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            authorLabel.topAnchor.constraint(equalTo: margins.topAnchor),
                       
            quoteLabel.topAnchor.constraint(equalTo: margins.topAnchor),
            quoteLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            quoteLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: authorLabel.trailingAnchor, multiplier: 1.0),
            
            authorLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 160),
            
            quoteWidthConstraint
            
        
        ])
    }


}


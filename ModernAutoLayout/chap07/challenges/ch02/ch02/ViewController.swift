//
//  ViewController.swift
//  ch02
//
//  Created by yuhua.cheng on 2019/11/28.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Share", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        button.backgroundColor = .yellow
        return button
    } ()
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "To be, or not to be, that is the question"
        label.font = UIFont.systemFont(ofSize: 24)
        label.numberOfLines = 0
        label.backgroundColor = .purple
        label.setContentHuggingPriority(.defaultLow-1, for: .horizontal)
        label.setContentCompressionResistancePriority(.defaultHigh-1, for: .horizontal)
        return label
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.addSubview(button)
        view.addSubview(label)
        
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            button.topAnchor.constraint(equalTo: margins.topAnchor),
            
            label.topAnchor.constraint(equalTo: margins.topAnchor),
            label.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            label.leadingAnchor.constraint(equalToSystemSpacingAfter: button.trailingAnchor, multiplier: 2.0)
        ])
        
    }

}


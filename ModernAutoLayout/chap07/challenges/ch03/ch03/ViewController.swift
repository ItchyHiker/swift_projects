//
//  ViewController.swift
//  ch03
//
//  Created by yuhua.cheng on 2019/11/28.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let greenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.addSubview(greenView)
        
        let greenViewSizeConstraint = greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor)
        // greenViewSizeConstraint.priority
        let optionConstraint = greenView.widthAnchor.constraint(equalTo: view.widthAnchor)
        optionConstraint.priority = .defaultLow
        
        
        NSLayoutConstraint.activate([
            greenView.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor),
            greenView.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor),
            
            greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenViewSizeConstraint,
            
            optionConstraint
        ])
        
    }
}


//
//  ViewController.swift
//  Margins-v3
//
//  Created by yuhua.cheng on 2019/11/26.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let margin: CGFloat = 50.0
    private let nestedView: NestedView = {
        let view = NestedView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    } ()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(nestedView)
        changeNestedMargins(inset: margin)
        
        NSLayoutConstraint.activate([
            nestedView.topAnchor.constraint(equalTo: safeTopAnchor),
            nestedView.bottomAnchor.constraint(equalTo: safeBottomAnchor),
            nestedView.leadingAnchor.constraint(equalTo: safeLeadingAnchor),
            nestedView.trailingAnchor.constraint(equalTo: safeTrailingAnchor),
        ])
    }
    
    private func changeNestedMargins(inset: CGFloat) {
        if #available(iOS 11, *) {
            nestedView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
        }
        else {
            nestedView.layoutMargins = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        }
    }

}


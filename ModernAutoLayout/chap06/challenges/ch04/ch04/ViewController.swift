//
//  ViewController.swift
//  ch04
//
//  Created by yuhua.cheng on 2019/11/27.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let spacing: CGFloat = 50.0
    private let internalSpacing: CGFloat = 25.0
    
    private let tileView: TileView = {
        let view = TileView()
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
        view.backgroundColor = .yellow
        view.addSubview(tileView)
        
        if #available(iOS 11, *) {
            tileView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: internalSpacing, leading: internalSpacing, bottom: internalSpacing, trailing: internalSpacing)
        }
        else {
            tileView.layoutMargins = UIEdgeInsets(top: internalSpacing, left: internalSpacing, bottom: internalSpacing, right: internalSpacing)
        }
        
        NSLayoutConstraint.activate([
            tileView.leadingAnchor.constraint(equalTo: safeLeadingAnchor, constant: spacing),
            tileView.topAnchor.constraint(equalTo: safeTopAnchor, constant: spacing),
            tileView.trailingAnchor.constraint(equalTo: safeTrailingAnchor, constant: -spacing),
            tileView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }
}


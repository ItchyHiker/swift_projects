//
//  ViewController.swift
//  ch02
//
//  Created by Yuhua Cheng on 11/24/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let tileView = TileView()
    private let padding: CGFloat = 50.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(tileView)
        NSLayoutConstraint.activate([
            tileView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            view.trailingAnchor.constraint(equalTo: tileView.trailingAnchor, constant: padding),
            tileView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            // view.bottomAnchor.constraint(equalTo: tileView.bottomAnchor, constant: padding)
            tileView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }


}


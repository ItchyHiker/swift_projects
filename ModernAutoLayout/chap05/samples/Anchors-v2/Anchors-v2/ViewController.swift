//
//  ViewController.swift
//  Anchors-v2
//
//  Created by Yuhua Cheng on 11/23/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let stopGoView: StopGoView = {
        let view = StopGoView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(stopGoView)
        NSLayoutConstraint.activate(
            [stopGoView.leadingAnchor.constraint(equalTo:view.leadingAnchor),
            stopGoView.topAnchor.constraint(equalTo:view.topAnchor),
            stopGoView.trailingAnchor.constraint(equalTo:view.trailingAnchor),
            stopGoView.bottomAnchor.constraint(equalTo:view.bottomAnchor)])
    }


}


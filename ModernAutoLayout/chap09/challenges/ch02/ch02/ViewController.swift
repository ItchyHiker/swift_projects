//
//  ViewController.swift
//  ch02
//
//  Created by yuhua.cheng on 2019/12/5.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let panelView: PanelView = {
        let view = PanelView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(panelView)
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            panelView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            panelView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            panelView.centerYAnchor.constraint(equalTo: margins.centerYAnchor)
        ])
    }
    
}


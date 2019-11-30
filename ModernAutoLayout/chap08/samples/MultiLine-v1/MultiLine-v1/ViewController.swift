//
//  ViewController.swift
//  MultiLine-v1
//
//  Created by Yuhua Cheng on 11/30/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        label.text = "A label that wraps as many lines as possible"
        label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.setContentCompressionResistancePriority(.defaultLow-1, for: .horizontal)
        return label
    } ()
    private let onSwitch: UISwitch = {
        let onSwitch = UISwitch()
        return onSwitch
    } ()
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [label, onSwitch])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.alignment = .top
        return stackView
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .purple
        view.addSubview(stackView)
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: margins.topAnchor),
            
        ])
    }

}


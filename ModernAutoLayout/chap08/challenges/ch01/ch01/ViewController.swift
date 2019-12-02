//
//  ViewController.swift
//  ch01
//
//  Created by Yuhua Cheng on 11/30/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        // label.backgroundColor =
        label.text  = "Engine Power"
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textAlignment = .center
        return label
    } ()
    private let lowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Low", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18.0)
        return button
    } ()
    private let middleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Middle", for: .normal)
        button.backgroundColor = .yellow
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18.0)
        return button
    } ()
    private let highButton: UIButton = {
        let button = UIButton()
        button.setTitle("High", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18.0)
        return button
    } ()
    private lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [label, lowButton, middleButton, highButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = UIStackView.spacingUseSystem
        return stackView
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    private func setupView() {
        view.addSubview(containerStackView)
        
        NSLayoutConstraint.activate([
            view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: containerStackView.trailingAnchor),
            view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: containerStackView.topAnchor)
        ])
    }
    

}


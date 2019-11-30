//
//  ViewController.swift
//  ch03
//
//  Created by Yuhua Cheng on 11/30/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let switchView: UISwitch = {
        let switchView = UISwitch()
        switchView.addTarget(self, action: #selector(showCode(_:)), for: .valueChanged)
        return switchView
    } ()
    private let leftButton = UIButton.customButton(title: "1A", titleColor: .black, fontSize: 40.0, backColor: .yellow)
    private let middleButton = UIButton.customButton(title: "2BX", titleColor: .black, fontSize: 40.0, backColor: .yellow)
    private let rightButton = UIButton.customButton(title: "3Z", titleColor: .black, fontSize: 40.0, backColor: .yellow)
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [leftButton, middleButton, rightButton])
        // stackView.translatesAutoresizingMaskIntoConstraints  = false
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 16.0
        return stackView
    } ()
    private var coverView: UIView?
    private lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [switchView, buttonStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16.0
        stackView.alignment = .center
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16.0, leading: 16.0, bottom: 16.0, trailing: 16.0)
        return stackView
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.addSubview(containerStackView)
        switchView.isOn = false
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 16.0),
            containerStackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -16.0),
            containerStackView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 16.0),
        ])
        containerStackView.addBackground(color: .purple)
        coverView = buttonStackView.addForeground(color: .yellow)
    }
    
    @objc private func showCode(_ sender: UISwitch) {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2.0, delay: 0, options: [], animations: {self.configureView()}, completion: nil)
    }
    private func configureView() {
        coverView?.isHidden = switchView.isOn ? true : false
    }

}

private extension UIButton {
    static func customButton(title: String, titleColor: UIColor, fontSize: CGFloat, backColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        button.backgroundColor = backColor
        return button
    }
}

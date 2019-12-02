//
//  ViewController.swift
//  AnimatingStack-v3
//
//  Created by Yuhua Cheng on 11/30/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let diamondImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Diamond")
        return imageView
    } ()
    private let heartImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Heart")
        return imageView
    } ()
    private let starImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Star")
        return imageView
    } ()
    private lazy var imageStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [diamondImageView, heartImageView, starImageView])
        stackView.axis = .vertical
        // stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = UIStackView.spacingUseSystem
        return stackView
    } ()
    private lazy var switchView: UISwitch = {
        let switchView = UISwitch()
        switchView.isOn = true
        switchView.setOn(true, animated: false)
        switchView.addTarget(self, action: #selector(axisChanged(_:)), for: .valueChanged)
        return switchView
    } ()
    private lazy var rootStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [switchView, imageStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 16.0
        stackView.alignment = .center
        return stackView
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        configureAxis()
    }
    
    private func setupView() {
        view.addSubview(rootStackView)
        rootStackView.addBackground(color: .purple, radius: 10.0)
//        let backgroundView = UIView()
//        backgroundView.translatesAutoresizingMaskIntoConstraints = false
//        backgroundView.backgroundColor = .purple
//        backgroundView.layer.cornerRadius = 10.0
//        rootStackView.insertSubview(backgroundView, at: 0)
        NSLayoutConstraint.activate([
            rootStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            rootStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16)
        ])
//        NSLayoutConstraint.activate([
//            backgroundView.leadingAnchor.constraint(equalTo: rootStackView.leadingAnchor),
//            backgroundView.trailingAnchor.constraint(equalTo: rootStackView.trailingAnchor),
//            backgroundView.topAnchor.constraint(equalTo: rootStackView.topAnchor),
//            backgroundView.bottomAnchor.constraint(equalTo: rootStackView.bottomAnchor)
//
//        ])
    }
    
    @objc private func axisChanged(_ sender: UISwitch) {
        if #available(iOS 10, *) {
            let animator = UIViewPropertyAnimator(duration: 2.0, dampingRatio: 0.2, animations: {
                self.configureAxis()
            })
            animator.startAnimation()
        }
        else {
            UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: [],
                           animations: {
                            self.configureAxis()
            }, completion: nil)
        }
    }
    
    private func configureAxis() {
        imageStackView.axis = switchView.isOn ? .vertical : .horizontal
        if let lastImageView = imageStackView.arrangedSubviews.last {
            lastImageView.isHidden = !switchView.isOn
        }
    }
    

}


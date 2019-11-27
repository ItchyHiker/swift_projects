//
//  ViewController.swift
//  EqualSpacing-v2
//
//  Created by Yuhua Cheng on 11/26/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private lazy var cancelButton: UIButton = {
        let title = NSLocalizedString("Cancel", comment: "Cancel button")
        let button = UIButton.customButton(title: title, titleColor: .white, tintColor: .red, background: nil)
        button.addTarget(self, action: #selector(cancelAction(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var okButton: UIButton = {
        let title = NSLocalizedString("OK", comment: "OK buton")
        let button = UIButton.customButton(title: title, titleColor: .white, tintColor: .green, background: nil)
        button.addTarget(self, action: #selector(okAction(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.addSubview(cancelButton)
        view.addSubview(okButton)
        
        let leadingGuide = UILayoutGuide()
        let middleGuide = UILayoutGuide()
        let trailingGuide = UILayoutGuide()
        
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            
            cancelButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            
            okButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            cancelButton.widthAnchor.constraint(equalTo: okButton.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),

            cancelButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            
        ])
    }


}

extension ViewController {
    @objc private func cancelAction(_ sender: UIButton) {
        print("Cancel")
    }

    @objc private func okAction(_ sender: UIButton) {
        print("OK")
    }
}

extension UIButton {
    static func customButton(title: String, titleColor: UIColor, tintColor: UIColor, background: UIImage?) -> UIButton {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.tintColor = tintColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        // button.setBackgroundImage(background, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        return button
    }
}

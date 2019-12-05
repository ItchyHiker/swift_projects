//
//  ViewController.swift
//  ch01
//
//  Created by yuhua.cheng on 2019/12/5.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var redButtonHeightConstraint: NSLayoutConstraint = NSLayoutConstraint()
    private var greenButtonHeightConstraint: NSLayoutConstraint = NSLayoutConstraint()
    
    private let redButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Slow", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        return button
    } ()
    private let greenButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.setTitle("Fast", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.tag = 1
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        
    }
    
    private func setupView() {
        self.view.backgroundColor = .yellow
        view.addSubview(redButton)
        view.addSubview(greenButton)
        let margins = view.layoutMarginsGuide
        redButtonHeightConstraint = redButton.heightAnchor.constraint(equalTo: greenButton.heightAnchor, multiplier: 4.0);
        greenButtonHeightConstraint = greenButton.heightAnchor.constraint(equalTo: redButton.heightAnchor, multiplier: 4.0);
        NSLayoutConstraint.activate([
            redButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            redButton.centerYAnchor.constraint(equalTo: margins.centerYAnchor),
            redButton.widthAnchor.constraint(equalTo: greenButton.widthAnchor),
            redButtonHeightConstraint,
            greenButton.leadingAnchor.constraint(equalToSystemSpacingAfter: redButton.trailingAnchor, multiplier: 1.0),
            greenButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            greenButton.centerYAnchor.constraint(equalTo: margins.centerYAnchor)
        ])
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        if (sender.tag == 0) {
            // NSLayoutConstraint.deactivate([greenButtonHeightConstraint])
            // NSLayoutConstraint.activate([redButtonHeightConstraint]);
            self.greenButtonHeightConstraint.isActive = false
            self.redButtonHeightConstraint.isActive = true
            let animator = UIViewPropertyAnimator(duration: 2.0, dampingRatio: 0.4, animations: {
                self.view.layoutIfNeeded()
            })
            animator.startAnimation()
        }
        else {
            NSLayoutConstraint.deactivate([redButtonHeightConstraint]);
            NSLayoutConstraint.activate([greenButtonHeightConstraint])
        }
    }
}



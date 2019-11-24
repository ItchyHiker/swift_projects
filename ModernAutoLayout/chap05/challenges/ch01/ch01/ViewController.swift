//
//  ViewController.swift
//  ch01
//
//  Created by Yuhua Cheng on 11/24/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let greenView: UIView = UIView.makeView(color: .green)
    private let redView: UIView = UIView.makeView(color: .red)
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            view.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            view.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding),
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor, constant: 0),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2),
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: spacing),
            greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: spacing)
        ])
    }


}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}


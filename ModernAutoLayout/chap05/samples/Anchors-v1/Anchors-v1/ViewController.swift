//
//  ViewController.swift
//  Anchors-v1
//
//  Created by Yuhua Cheng on 11/23/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    private let blueView: UIView = .makeView(color: .blue)
    private let greenView: UIView = .makeView(color: .green)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(blueView)
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
//            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
//            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
//            view.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: padding),
//            view.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
//            blueView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
//            greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: spacing),
//            view.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding),
//            blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
            blueView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2.0),
            greenView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2.0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: blueView.trailingAnchor, multiplier: 2.0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: greenView.trailingAnchor, multiplier: 2.0),
            blueView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 1.0),
            greenView.topAnchor.constraint(equalToSystemSpacingBelow: blueView.bottomAnchor, multiplier: 1.0),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: greenView.bottomAnchor, multiplier: 1.0),
            blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 1.0)
            
        ])
    }

}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = color
        return view
    }
}

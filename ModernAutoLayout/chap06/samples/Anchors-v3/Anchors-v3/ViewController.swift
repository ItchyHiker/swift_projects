//
//  ViewController.swift
//  Anchors-v3
//
//  Created by Yuhua Cheng on 11/25/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(redView)
        view.addSubview(greenView)
        let guide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: padding),
            guide.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: padding),
            redView.topAnchor.constraint(equalTo: guide.topAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
            greenView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            greenView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: padding),
            guide.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
            guide.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding)
        ])
        
    }

}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}

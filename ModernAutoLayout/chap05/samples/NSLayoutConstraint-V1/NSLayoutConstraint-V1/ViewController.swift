//
//  ViewController.swift
//  NSLayoutConstraint-V1
//
//  Created by Yuhua Cheng on 11/23/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    private let redView: UIView  = {
//        let view = UIView()
//        view.backgroundColor = .red
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    } ()
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    private let padding: CGFloat = 50.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(redView)
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
            // redView.leading == view.leading + padding
            NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: padding),
            // redview.trailing == view.trailing - padding
            NSLayoutConstraint(item: redView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -padding),
            // reView.top == view.top + padding
            NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: padding),
            // redView.bottom == view.bottom - padding
            NSLayoutConstraint(item: redView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -padding)
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

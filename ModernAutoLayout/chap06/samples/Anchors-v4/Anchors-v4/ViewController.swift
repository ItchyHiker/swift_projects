//
//  ViewController.swift
//  Anchors-v4
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
        
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: safeLeadingAnchor, constant: padding),
            safeTrailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: padding),
            redView.topAnchor.constraint(equalTo: safeTopAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
            greenView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            greenView.leadingAnchor.constraint(equalTo: safeLeadingAnchor, constant: padding),
            safeTrailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
            safeBottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding)
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

extension UIViewController {
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.topAnchor
        }
        else {
            return bottomLayoutGuide.topAnchor
        }
    }
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.bottomAnchor
        }
        else {
            return bottomLayoutGuide.bottomAnchor
        }
    }
    
    var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.leadingAnchor
        }
        else {
            return view.leadingAnchor
        }
    }
    
    var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.trailingAnchor
        }
        else {
            return view.trailingAnchor
        }
    }
}

//
//  ViewController.swift
//  CHCR-v2
//
//  Created by yuhua.cheng on 2019/11/28.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "A Sunny Day, A Sunny Day"
        label.font = UIFont.systemFont(ofSize: 30)
        label.numberOfLines = 0
        label.backgroundColor = .yellow
        return label
    } ()
    
    private let sunImage: UIImageView = {
        let view = UIImageView(image: UIImage(named: "Sun"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setContentHuggingPriority(.defaultLow+1, for: .horizontal)
        view.setContentCompressionResistancePriority(.defaultHigh+1, for: .horizontal)
        view.backgroundColor = .orange
        return view
        
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupView() {
        view.addSubview(label)
        view.addSubview(sunImage)
        
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            sunImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            sunImage.topAnchor.constraint(equalTo: margins.topAnchor),
            
            label.topAnchor.constraint(equalTo: margins.topAnchor),
            label.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            label.leadingAnchor.constraint(equalToSystemSpacingAfter: sunImage.trailingAnchor, multiplier: 1.0)
        ])
    }

}


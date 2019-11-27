//
//  NestedView.swift
//  Margins-v3
//
//  Created by yuhua.cheng on 2019/11/26.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class NestedView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    private lazy var nestedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = nestedColor
        return view
    } ()
    
    var nestedColor: UIColor = .green {
        didSet {
            nestedView.backgroundColor = nestedColor
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(nestedView)
        NSLayoutConstraint.activate([
            nestedView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            nestedView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            nestedView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            nestedView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }

}

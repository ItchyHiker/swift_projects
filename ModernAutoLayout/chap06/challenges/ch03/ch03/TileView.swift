//
//  TileView.swift
//  ch03
//
//  Created by yuhua.cheng on 2019/11/27.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class TileView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    private let internalSpacing: CGFloat = 25.0
    private let blueView = makeView(color: .blue)
    private let redView = makeView(color: .red)
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    private func setupView() {

        addSubview(blueView)
        addSubview(redView)
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            blueView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            blueView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            redView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            redView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            redView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            blueView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -internalSpacing),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor)
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

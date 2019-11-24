//
//  TileView.swift
//  ch02
//
//  Created by Yuhua Cheng on 11/24/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
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
    private let spacing: CGFloat = 25.0
    private let blueView: UIView = makeView(color: .blue)
    private let redView: UIView = makeView(color: .red)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    private func setupView() {
        self.backgroundColor = .green
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(blueView)
        addSubview(redView)
        NSLayoutConstraint.activate([
            // horizontal
            blueView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: spacing),
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: spacing),
            self.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: spacing),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            // height
            blueView.topAnchor.constraint(equalTo: self.topAnchor, constant: spacing),
            redView.topAnchor.constraint(equalTo: self.topAnchor, constant: spacing),
            self.bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: spacing),
            self.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing)
        ])
    }
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false;
        return view
    }
}

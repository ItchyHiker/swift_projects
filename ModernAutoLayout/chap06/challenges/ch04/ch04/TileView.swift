//
//  TileView.swift
//  ch04
//
//  Created by yuhua.cheng on 2019/11/27.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//


import UIKit

final class TileView: UIView {

    private let internalSpacing: CGFloat = 25.0
    private let blueView = UIView.coloredView(.blue)
    private let redView = UIView.coloredView(.red)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
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

            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: internalSpacing),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor)
            ])
    }
}

private extension UIView {
    static func coloredView(_ color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}


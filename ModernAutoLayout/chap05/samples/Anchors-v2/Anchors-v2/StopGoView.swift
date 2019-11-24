//
//  StopGoView.swift
//  Anchors-v2
//
//  Created by Yuhua Cheng on 11/23/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class StopGoView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    private let padding: CGFloat = 50.0
       private let spacing: CGFloat = 25.0
       private let blueView: UIView = .makeView(color: .blue)
       private let greenView: UIView = .makeView(color: .green)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    func setupView() {
//        self.backgroundColor = .yellow
        self.addSubview(blueView)
        self.addSubview(greenView)
                NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            greenView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            self.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: padding),
            self.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
            blueView.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: spacing),
            self.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding),
            blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
//            blueView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2.0),
//            greenView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2.0),
//            self.trailingAnchor.constraint(equalToSystemSpacingAfter: blueView.trailingAnchor, multiplier: 2.0),
//            self.trailingAnchor.constraint(equalToSystemSpacingAfter: greenView.trailingAnchor, multiplier: 2.0),
//            blueView.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1.0),
//            greenView.topAnchor.constraint(equalToSystemSpacingBelow: blueView.bottomAnchor, multiplier: 1.0),
//            self.bottomAnchor.constraint(equalToSystemSpacingBelow: greenView.bottomAnchor, multiplier: 1.0),
//            blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 1.0)
//
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

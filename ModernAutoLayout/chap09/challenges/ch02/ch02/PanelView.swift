//
//  PanelView.swift
//  ch02
//
//  Created by yuhua.cheng on 2019/12/5.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

final class PanelView: UIView {
    private enum ViewMetrics {
        static let buttonContentInset: CGFloat = 10.0
        static let stackViewMargin: CGFloat = 8.0
        static let stackViewSpacing: CGFloat = 16.0
    }
    let greenButton: UIButton = UIButton.makeButton(backgroundColor: .green, fontSize: 24.0, title: "Don't panic Don't panic")
    let redButton: UIButton = UIButton.makeButton(backgroundColor: .red, fontSize: 24.0, title: "Panic Panic")
    private lazy var containerView: UIStackView = {
        let backView = UIView()
        backView.translatesAutoresizingMaskIntoConstraints = false
        backView.backgroundColor = .blue
        let view = UIStackView(arrangedSubviews: [greenButton, redButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(backView, at: 0)
        backView.pin(to: view)
        view.spacing = ViewMetrics.stackViewSpacing
        view.distribution = .fillEqually
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: ViewMetrics.stackViewMargin, leading: ViewMetrics.stackViewMargin, bottom: ViewMetrics.stackViewMargin, trailing: ViewMetrics.stackViewMargin);
        view.isLayoutMarginsRelativeArrangement = true
        return view
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        let marginWith = containerView.layoutMarginsGuide.layoutFrame.width
        let minButtonWidth = max(greenButton.intrinsicContentSize.width, redButton.intrinsicContentSize.width)
        if (2*(minButtonWidth + ViewMetrics.stackViewSpacing) > marginWith ) {
            containerView.axis = .vertical
            // layoutSubviews()
           
        } else {
            containerView.axis = .horizontal
            // layoutSubviews()
            
        }
    }
    private func setupView() {
        self.addSubview(containerView)
        let margins = self.layoutMarginsGuide
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            containerView.topAnchor.constraint(equalTo: margins.topAnchor)
        ])
    }
}

private extension UIButton {
    static func makeButton(backgroundColor: UIColor, fontSize: CGFloat, title: String) -> UIButton {
        let button = UIButton()
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        button.setTitleColor(.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return button
    }
}

private extension UIView {
    func pin(to view: UIView) {
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

//
//  PreviewPanel.swift
//  Layout-v1
//
//  Created by Yuhua Cheng on 12/4/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class PreviewPanel: UIView {
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = spacing
        stackView.alignment = .center
        return stackView
    } ()
    var spacing: CGFloat = 16.0 {
        didSet {
            stackView.spacing = spacing
        }
    }
    private var overflow = [UIView]()
    
    func show(_ items: [UIView]) {
        stackView.arrangedSubviews.forEach {$0.removeFromSuperview()}
        items.forEach {stackView.addArrangedSubview($0)}
        overflow.removeAll()
    }
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
        while let nextItem = overflow.first,
            stackView.bounds.width + spacing + nextItem.intrinsicContentSize.width <= bounds.width {
                stackView.addArrangedSubview(nextItem)
                overflow.remove(at: 0)
                updateConstraintsIfNeeded()
                super.layoutSubviews()
        }

        while stackView.bounds.width > bounds.width,
            let extraView = stackView.arrangedSubviews.last {
                extraView.removeFromSuperview()
                overflow.insert(extraView, at: 0)
                updateConstraintsIfNeeded()
                super.layoutSubviews()
        }
    }
    private func setupView() {
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    
    
}

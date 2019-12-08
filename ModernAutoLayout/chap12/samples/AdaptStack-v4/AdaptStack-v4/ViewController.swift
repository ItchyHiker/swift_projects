//
//  ViewController.swift
//  AdaptStack-v4
//
//  Created by Yuhua Cheng on 12/8/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private enum AnimationMetrics {
        static let duration: TimeInterval = 0.3
        static let transformScale: CGFloat = 1.25
    }
    
    private let heart = UIImageView(image: UIImage(named: "Heart"))
    private let star = UIImageView(image: UIImage(named: "Star"))
    private let diamond = UIImageView(image: UIImage(named: "Diamond"))
    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [heart, star, diamond])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = UIStackView.spacingUseSystem
        return view
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.addSubview(stackView)
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: margins.topAnchor),
            stackView.centerXAnchor.constraint(equalTo: margins.centerXAnchor)
        ])
    }
    private func animateStack(with coordinate: UIViewControllerTransitionCoordinator) {
        coordinate.animate(alongsideTransition: { context in
            self.stackView.transform = CGAffineTransform(scaleX:
            AnimationMetrics.transformScale, y: AnimationMetrics.transformScale)
        }, completion: { context in
            // completion handler
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: AnimationMetrics.duration,
                                                           delay: 0, options: [], animations: {
                                                            self.stackView.transform = .identity
            })
        })
    }
    private func configureView(for traitCollection: UITraitCollection) {
        switch traitCollection.verticalSizeClass {
        case .compact:
            stackView.axis = .horizontal
        default:
            stackView.axis = .vertical
        }
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        if (traitCollection.verticalSizeClass != previousTraitCollection?.verticalSizeClass) {
            configureView(for: traitCollection)
        }
    }
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        if traitCollection.verticalSizeClass != newCollection.verticalSizeClass {
            animateStack(with: coordinator)
        }
    }
}


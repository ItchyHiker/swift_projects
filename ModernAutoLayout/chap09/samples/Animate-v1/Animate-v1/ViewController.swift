//
//  ViewController.swift
//  Animate-v1
//
//  Created by Yuhua Cheng on 12/4/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centerConstraint: NSLayoutConstraint!
    private enum AnimationMetric {
        static let offset: CGFloat = -400
        static let duration: TimeInterval = 1.0
        static let delay: TimeInterval = 1.0
        static let damping: CGFloat = 0.4
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        centerConstraint.constant = AnimationMetric.offset
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateButton(withDuration: AnimationMetric.duration, damping: AnimationMetric.damping)
        
    }
    
    private func animateButton(withDuration duration: TimeInterval, damping:CGFloat, delay:TimeInterval = 0) {
        centerConstraint.constant = 0
        let animator = UIViewPropertyAnimator(duration: duration, dampingRatio: damping, animations: {
            self.view.layoutIfNeeded()
            // self.view.setNeedsLayout()
        })
        animator.startAnimation(afterDelay: delay)
    }

}


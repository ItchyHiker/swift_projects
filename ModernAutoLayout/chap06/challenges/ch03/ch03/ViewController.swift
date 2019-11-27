//
//  ViewController.swift
//  ch03
//
//  Created by yuhua.cheng on 2019/11/27.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let spacing: CGFloat = 50.0
    private let internalSpacing: CGFloat =  25.0
    private let tileView: TileView = {
        let view = TileView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(tileView)
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: spacing, leading: spacing, bottom: spacing, trailing: spacing)
        tileView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: internalSpacing, leading: internalSpacing, bottom: internalSpacing, trailing: internalSpacing)
        
        let guide = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            tileView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            tileView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            tileView.topAnchor.constraint(equalTo: guide.topAnchor),
            tileView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
        ])
    }
    

}

//
//private extension UIView {
//    static func makeView(color: UIColor) -> UIView {
//        let
//    }
//}

//
//  ViewController.swift
//  ScrollView-v3
//
//  Created by yuhua.cheng on 2019/12/6.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let activityView: ActivityView = {
        let view = ActivityView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    } ()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints =  false
        scrollView.addSubview(activityView)
        return scrollView
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .yellow
        view.tintColor = .black
        self.title = NSLocalizedString("Activity", comment: "")
        setupView()
    }
    
    private func setupView () {
        view.addSubview(scrollView)
        let frameGuide = scrollView.frameLayoutGuide
        let contentGuide = scrollView.contentLayoutGuide
        
        NSLayoutConstraint.activate([
            frameGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            frameGuide.topAnchor.constraint(equalTo: view.topAnchor),
            frameGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            frameGuide.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            contentGuide.leadingAnchor.constraint(equalTo: activityView.leadingAnchor),
            contentGuide.topAnchor.constraint(equalTo: activityView.topAnchor),
            contentGuide.trailingAnchor.constraint(equalTo: activityView.trailingAnchor),
            contentGuide.bottomAnchor.constraint(equalTo: activityView.bottomAnchor),

            frameGuide.widthAnchor.constraint(equalTo: contentGuide.widthAnchor)
        ])
        
    }

}


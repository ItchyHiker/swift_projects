//
//  ViewController.swift
//  ScrollView-v2
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
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            scrollView.leadingAnchor.constraint(equalTo: activityView.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: activityView.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: activityView.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: activityView.bottomAnchor),

            scrollView.widthAnchor.constraint(equalTo: activityView.widthAnchor)
        ])
        
    }

}


//
//  ViewController.swift
//  Layout-v1
//
//  Created by Yuhua Cheng on 12/4/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let itemCount = 10
    private lazy var previewPanel: PreviewPanel = {
        let view = PreviewPanel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    private lazy var refreshButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Refresh", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(refresh(_:)), for: .touchUpInside)
        return button
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        refreshRandomViews()
    }
    
    @objc private func refresh(_ sender: UIButton) {
        refreshRandomViews()
    }
    private func refreshRandomViews() {
        var views = [UIView] ()
        for count in 0..<itemCount {
            let view = UILabel()
            view.text = "\(count)"
            let size = CGFloat(arc4random_uniform(64)) + 64.0
            view.font = UIFont.systemFont(ofSize: size)
            view.backgroundColor = ((count % 2) == 0) ? .red : .green
            views.append(view)
        }
        previewPanel.show(views)
    }
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(refreshButton)
        view.addSubview(previewPanel)
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            refreshButton.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            refreshButton.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0),

            previewPanel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            previewPanel.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            previewPanel.trailingAnchor.constraint(equalTo: guide.trailingAnchor)
        ])
    }

}


//
//  ViewController.swift
//  DynamicType-v5
//
//  Created by yuhua.cheng on 2019/12/7.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let headString: String = "adadasfdsafjsdfj;asfj;safjs;afjlas;jfl;safj;asfa;lfksdalfl;asd"
    let bodyString: String = "Aidiahdidhfiasfdidsafsaoufoipasfupoasdfuposdfuasdfpdsafiopsafiudsa"
    let footNoteString: String = "adasdasdas"
    let head: UILabel = UILabel.makeLabel(style: .headline)
    let body = UILabel.makeLabel(style: .body)
    let footNote = UILabel.makeLabel(style: .footnote)
    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [head, body, footNote])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = UIStackView.spacingUseSystem
        return view
    } ()
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20.0, leading: 20.0, bottom: 20.0, trailing: 20.0)
        view.addSubview(stackView)
        let readableGuide = view.readableContentGuide
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: readableGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: readableGuide.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: readableGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: readableGuide.bottomAnchor),
        ])
        return view
    } ()
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        return view
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        head.text = headString
        body.text = bodyString
        footNote.text = footNoteString
        
        view.addSubview(scrollView)
        let frameGuide = scrollView.frameLayoutGuide
        let contentGuide = scrollView.contentLayoutGuide
        
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: contentGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentGuide.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: contentGuide.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentGuide.bottomAnchor),

            frameGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            frameGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            frameGuide.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            frameGuide.topAnchor.constraint(equalTo: view.topAnchor),
            
            frameGuide.widthAnchor.constraint(equalTo: contentGuide.widthAnchor)
        ])
    }
}



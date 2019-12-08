//
//  ViewController.swift
//  DynamicType-v2
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
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20.0, leading: 20.0, bottom: 20.0, trailing: 20.0)
        view.isLayoutMarginsRelativeArrangement = true
        return view
    } ()
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
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
             stackView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
             stackView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
             stackView.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
             stackView.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor),
            
//            stackView.leadingAnchor.constraint(equalTo: contentGuide.leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: contentGuide.trailingAnchor),
//            stackView.topAnchor.constraint(equalTo: contentGuide.topAnchor),
//            stackView.bottomAnchor.constraint(equalTo: contentGuide.bottomAnchor),
//
            frameGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            frameGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            frameGuide.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            frameGuide.topAnchor.constraint(equalTo: view.topAnchor),
            
            frameGuide.widthAnchor.constraint(equalTo: contentGuide.widthAnchor)
        ])
    }
}


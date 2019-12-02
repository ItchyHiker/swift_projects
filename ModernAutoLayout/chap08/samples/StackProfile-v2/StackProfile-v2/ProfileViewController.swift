//
//  ViewController.swift
//  StackProfile-v2
//
//  Created by Yuhua Cheng on 11/29/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private enum ViewMetrics {
        static let margin: CGFloat = 20.0
        static let nameFontSize: CGFloat = 18.0
        static let bioFontSize: CGFloat = 17.0
    }
    
    var profile: Profile? {
        didSet {
            configureView()
        }
    }
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: ViewMetrics.nameFontSize)
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultLow+1, for: .vertical)
        return label
    } ()
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: ViewMetrics.bioFontSize)
        label.numberOfLines = 0
        return label
    } ()
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, bioLabel])
        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        return stackView
    } ()
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .top
        imageView.setContentHuggingPriority(.defaultLow+1, for: .horizontal)
        return imageView
        
    } ()
    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileImageView, labelStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = UIStackView.spacingUseSystem
        return stackView
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        profile = Profile(name: "aaaaaaadasdasdasdasdasdasdasda", bio: "aaaaidasduaisduiasdai", avatar: nil)
        setupView()
        configureView()
    }
    
    
    private func setupView() {
        view.backgroundColor = UIColor(named: "sky")
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: ViewMetrics.margin, leading: ViewMetrics.margin, bottom: ViewMetrics.margin, trailing: ViewMetrics.margin)
        view.addSubview(profileStackView)
        
        let margin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            profileStackView.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            profileStackView.trailingAnchor.constraint(equalTo: margin.trailingAnchor),
            profileStackView.topAnchor.constraint(equalTo: margin.topAnchor)
        ])
        
    }
    
    private func configureView() {
        if let image = profile?.avatar {
            profileImageView.image = image
        }
        else {
            profileImageView.image = UIImage(named: "placeholder")
        }
        title = profile?.name
        nameLabel.text = profile?.name
        bioLabel.text = profile?.bio
    }

}


//
//  DetailViewController.swift
//  Project1
//
//  Created by Yuhua Cheng on 10/11/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailedImageView: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let imageView = self.detailedImageView {
//                label.text = detail.description
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    /*
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
      super.viewWillDisappear(animated)
      navigationController?.hidesBarsOnTap = false
    }
    */
    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    @objc func shareTapped() {
        guard let image = detailedImageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }

        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}


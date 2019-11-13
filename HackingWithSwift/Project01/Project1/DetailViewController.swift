//
//  DetailViewController.swift
//  Project1
//
//  Created by Yuhua Cheng on 10/11/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedImage: String?
    
    @IBOutlet weak var detailedImageView: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let imageView = self.detailedImageView {
//                label.text = detail.description
                title = detail
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configureView()
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
}


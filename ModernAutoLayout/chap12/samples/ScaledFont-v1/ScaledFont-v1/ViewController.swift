//
//  ViewController.swift
//  ScaledFont-v1
//
//  Created by yuhua.cheng on 2019/12/7.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scaleFactor: CGFloat = 5.0 {
        didSet {
            configureView()
        }
    }
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var footnote: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
        NotificationCenter.default.addObserver(self, selector: #selector(didChangePreferredFont(_:)), name: UIContentSizeCategory.didChangeNotification, object: nil)
        
    }
    private func configureView() {
        headline?.font = UIFont.preferredFont(forTextStyle: .headline, scaleFactor: scaleFactor)
        body?.font = UIFont.preferredFont(forTextStyle: .body, scaleFactor: scaleFactor)
        footnote?.font = UIFont.preferredFont(forTextStyle: .footnote, scaleFactor: scaleFactor)
    }
    
    @objc private func didChangePreferredFont(_ notification: Notification) {
        configureView()
    }
    
}


//
//  ViewController.swift
//  ch04
//
//  Created by yuhua.cheng on 2019/11/20.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centerYConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func startButton(_ sender: Any) {
        self.centerYConstraint.constant = 0;
    }
    
    
}


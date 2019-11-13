//
//  ViewController.swift
//  Project18
//
//  Created by Yuhua Cheng on 11/12/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(1, 2, 3, 4, 5, terminator: "/")
        print(1, 2, 3, 4, 5, separator: "-")
        for i in 0..<10 {
            print(i);
        }
    }


}


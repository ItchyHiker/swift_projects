//
//  ViewController.swift
//  DynamicType-v1
//
//  Created by yuhua.cheng on 2019/12/7.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.textContainer.lineFragmentPadding = 0.0
    }


}


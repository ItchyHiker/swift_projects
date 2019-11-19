//
//  RootViewController.swift
//  CodeLayout-v4
//
//  Created by yuhua.cheng on 2019/11/19.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let padding: CGFloat  = 50.0
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // let rootView = UIView()
        // rootView.backgroundColor = .yellow
        // view = rootView
        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        if greenView.superview == nil {
            view.addSubview(greenView)
            let width = view.bounds.width - 2*padding
            greenView.frame = CGRect(x:padding, y:padding, width: width, height: 3*padding)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

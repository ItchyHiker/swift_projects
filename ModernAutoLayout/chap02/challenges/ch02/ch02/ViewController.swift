//
//  ViewController.swift
//  ch02
//
//  Created by yuhua.cheng on 2019/11/15.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var greenPadding: CGFloat = 50.0
    var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        return view
    } ()
    
    var redPadding:CGFloat = 25;
    var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin, .flexibleWidth]
        return view
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    override func viewWillLayoutSubviews() {
        
        if greenView.superview == nil {
            let width = self.view.bounds.size.width - 2*greenPadding;
            let height = self.view.bounds.size.height - 2*greenPadding;
            greenView.frame = CGRect(x: 50, y: 50, width: width, height: height);
            view.addSubview(greenView)
        }
        
        if redView.superview == nil {
            let width = self.greenView.bounds.size.width - 2*redPadding;
            let y = (self.greenView.bounds.size.height - 100)/2
            redView.frame = CGRect(x: 25, y: y, width: width, height: 100);
            greenView.addSubview(redView)
        }
    }


}


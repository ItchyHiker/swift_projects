//
//  AdativeScrollView.swift
//  ch03
//
//  Created by yuhua.cheng on 2019/12/6.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

class AdaptiveScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    private func setupView() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardDidShow(_ notification: Notification) {
        guard let userInfo = notification.userInfo, let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
        let keyboardSize = frame.cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        adjustContentInsets(contentInsets)
        
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        adjustContentInsets(.zero)
    }
    
    private func adjustContentInsets(_ contentInsets: UIEdgeInsets) {
        contentInset = contentInsets;
        scrollIndicatorInsets = contentInsets
    }
}

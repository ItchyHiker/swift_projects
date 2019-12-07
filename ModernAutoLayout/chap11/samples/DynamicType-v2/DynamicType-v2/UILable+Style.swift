//
//  UILable+Style.swift
//  DynamicType-v2
//
//  Created by yuhua.cheng on 2019/12/7.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit


extension UILabel {
    static func makeLabel(style: UIFont.TextStyle) -> UILabel {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: style)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        // label.text = text;
        return label
    }
}

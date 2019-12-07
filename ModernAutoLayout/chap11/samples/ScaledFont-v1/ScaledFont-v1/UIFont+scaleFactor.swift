//
//  UIFont+scaleFactor.swift
//  ScaledFont-v1
//
//  Created by yuhua.cheng on 2019/12/7.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

public extension UIFont {
    static func preferredFont(forTextStyle style: UIFont.TextStyle, scaleFactor: CGFloat) -> UIFont {
        let font = UIFont.preferredFont(forTextStyle: style)
        return font.withSize(font.pointSize * scaleFactor)
    }
}

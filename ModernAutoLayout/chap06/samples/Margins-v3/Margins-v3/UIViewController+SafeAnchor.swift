//
//  UIViewController+SafeAnchor.swift
//  Margins-v3
//
//  Created by yuhua.cheng on 2019/11/26.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

@available(iOS 7.0, tvOS 9.0, *)
public extension UIViewController
{
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.topAnchor
        } else {
            return topLayoutGuide.bottomAnchor
        }
    }

    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.bottomAnchor
        } else {
            return bottomLayoutGuide.topAnchor
        }
    }

    var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.leadingAnchor
        } else {
            return view.leadingAnchor
        }
    }

    var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.trailingAnchor
        } else {
            return view.trailingAnchor
        }
    }
}

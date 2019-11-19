//
//  TileView.swift
//  FirstLayout-v3
//
//  Created by yuhua.cheng on 2019/11/19.
//  Copyright © 2019 yuhua.cheng. All rights reserved.
//

import UIKit

@IBDesignable
class TileView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    } ()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    } ()
    
    @IBInspectable var padding: CGFloat = 25.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override init(frame: CGRect) {
        // called when we create the view in code
        super.init(frame: frame)
          setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // called when loading the view from a nib file or storyboard
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        // add view setup code here
        addSubview(blueView)
        addSubview(redView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // Adjust subviews here
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        let numberOfItems: CGFloat = 2
        let itemWidth = (containerWidth - (numberOfItems+1)*padding) / numberOfItems
        let itemHeight = (containerHeight - 2*padding)
        blueView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
        redView.frame = CGRect(x: 2*padding+itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
    
    


}

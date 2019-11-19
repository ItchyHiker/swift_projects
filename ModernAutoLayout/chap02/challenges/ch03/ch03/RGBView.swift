//
//  TileView.swift
//  ch03
//
//  Created by Yuhua Cheng on 11/19/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

@IBDesignable
class RGBView: UIView {
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    } ()
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    } ()
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    } ()
    
    @IBInspectable var padding: CGFloat = 20.0 {
        didSet {
            setNeedsLayout()
        }
    }
    override init(frame: CGRect) {
        // called when we create the view in code
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(redView)
        addSubview(greenView)
        addSubview(blueView)
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let containerWidth = self.bounds.width
        let containerHeight = self.bounds.height
        let numberOfItems: CGFloat = 3
        let itemWidth = containerWidth
        let itemHeight = (containerHeight - ((numberOfItems-1)*padding)) / numberOfItems
        redView.frame = CGRect(x: 0, y: 0, width: itemWidth, height: itemHeight)
        greenView.frame = CGRect(x: 0, y: itemHeight + padding, width: itemWidth, height: itemHeight)
        blueView.frame = CGRect(x: 0, y: 2*(itemHeight + padding), width: itemWidth, height: itemHeight)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    

}

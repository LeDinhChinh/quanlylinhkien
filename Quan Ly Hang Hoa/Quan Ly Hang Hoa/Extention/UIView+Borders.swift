//
//  UIView+Borders.swift
//
//  Created by Aaron Ng on 11/15/15.
//  Copyright © 2015 Aaron Ng. All rights reserved.
//

import UIKit

public extension UIView {
    
    public enum ViewSide {
        case top
        case right
        case bottom
        case left
    }
    
    public func addBorder(side: ViewSide, thickness: CGFloat, color: UIColor, leftOffset: CGFloat = 0, rightOffset: CGFloat = 0, topOffset: CGFloat = 0, bottomOffset: CGFloat = 0) {
        
        switch side {
        case .top:
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: 0 + leftOffset,
                                             y: 0 + topOffset,
                                             width: self.frame.size.width - leftOffset - rightOffset,
                                             height: thickness), color: color)
            self.layer.addSublayer(border)
        case .right:
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: self.frame.size.width-thickness-rightOffset,
                                             y: 0 + topOffset, width: thickness,
                                             height: self.frame.size.height - topOffset - bottomOffset), color: color)
            self.layer.addSublayer(border)
        case .bottom:
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: 0 + leftOffset,
                                             y: self.frame.size.height-thickness-bottomOffset,
                                             width: self.frame.size.width - leftOffset - rightOffset, height: thickness), color: color)
            self.layer.addSublayer(border)
        case .left:
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: 0 + leftOffset,
                                             y: 0 + topOffset,
                                             width: thickness,
                                             height: self.frame.size.height - topOffset - bottomOffset), color: color)
            self.layer.addSublayer(border)
        }
    }
    
    fileprivate func _getOneSidedBorder(frame: CGRect, color: UIColor) -> CALayer {
        let border:CALayer = CALayer()
        border.frame = frame
        border.backgroundColor = color.cgColor
        return border
    }
}

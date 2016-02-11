//
//  BorderButton.swift
//  Calculator
//
//  Created by Bronson Dupaix on 2/10/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import QuartzCore

import UIKit

@IBDesignable

class BorderButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    
}



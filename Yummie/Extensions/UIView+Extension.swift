//
//  UIView+Extension.swift
//  Yummie
//
//  Created by vas mar on 06/04/2021.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

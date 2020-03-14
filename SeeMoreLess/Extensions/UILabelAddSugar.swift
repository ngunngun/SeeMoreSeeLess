//
//  UILabelAddSugar.swift
//  SeeMoreLess
//
//  Created by Kirameki on 14/3/2563 BE.
//  Copyright © 2563 ngunngun. All rights reserved.
//

import UIKit

extension UILabel {
    var numberOfVisibleLines: Float {
        let textSize = CGSize(width: CGFloat(self.frame.size.width), height: CGFloat(MAXFLOAT))
        let rHeight = Float(self.sizeThatFits(textSize).height)
        let charSize = Float(self.font.pointSize)
        return rHeight / charSize
    }
}

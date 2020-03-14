//
//  UIStackViewAddSugar.swift
//  SeeMoreLess
//
//  Created by Kirameki on 14/3/2563 BE.
//  Copyright © 2563 ngunngun. All rights reserved.
//

import UIKit

extension UIStackView {
    func removeAllArrangedSubviews() {
        for view in self.arrangedSubviews {
            self.removeArrangedSubview(view)
            view.removeFromSuperview()
        }
    }
}

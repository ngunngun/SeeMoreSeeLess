//
//  ViewController.swift
//  SeeMoreLess
//
//  Created by Kirameki on 14/3/2563 BE.
//  Copyright © 2563 ngunngun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }

    func setUpUI() {
        self.stackView.removeAllArrangedSubviews()
        let subView = DynamicHeightView.instanciateFromNib()
        subView.setUpView("First TITLE", detail: "Lorem", maxLines: 4)
        self.stackView.addArrangedSubview(subView)
        
        let subView2 = DynamicHeightView.instanciateFromNib()
        subView2.setUpView("Second TITLE", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", maxLines: 4)
        self.stackView.addArrangedSubview(subView2)
        
        let subView3 = DynamicHeightView.instanciateFromNib()
        subView3.setUpView("Third TITLE", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud", maxLines: 4)
        self.stackView.addArrangedSubview(subView3)
        
        let subView4 = DynamicHeightView.instanciateFromNib()
        subView4.setUpView("Forth TITLE", detail: "", maxLines: 4)
        self.stackView.addArrangedSubview(subView4)
        
        let subView5 = DynamicHeightView.instanciateFromNib()
        subView5.setUpView("Fifth TITLE", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", maxLines: 4)
        self.stackView.addArrangedSubview(subView5)
        
        let subView6 = DynamicHeightView.instanciateFromNib()
        subView6.setUpView("Sixth TITLE", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", maxLines: 4)
        self.stackView.addArrangedSubview(subView6)
    }

}


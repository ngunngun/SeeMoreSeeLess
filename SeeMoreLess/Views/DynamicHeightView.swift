//
//  DynamicHeightView.swift
//  SeeMoreLess
//
//  Created by Kirameki on 14/3/2563 BE.
//  Copyright © 2563 ngunngun. All rights reserved.
//

import UIKit

class DynamicHeightView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var seeDetailButton: UIButton!
    @IBOutlet weak var seeDetailView: UIView!
    
    var isShowAllDetail = false
    var numberOfLine = 0
    
    class func instanciateFromNib() -> DynamicHeightView {
        return Bundle.main.loadNibNamed("DynamicHeightView", owner: nil, options: nil)![0] as! DynamicHeightView
    }
    
    func setUpView(_ title: String, detail:String, maxLines:Float ) {
        let maxLinesRoundUp = Int(maxLines.rounded(.down))
        self.titleLabel.text = title
        self.detailLabel.text = detail
        
        if maxLinesRoundUp == 0 {
            self.isHiddenSeeDetail = true
        } else {
            if let detailLabel = self.detailLabel {
                let totalLines = Int(detailLabel.numberOfVisibleLines.rounded(.down))
                
                if totalLines <= maxLinesRoundUp {
                    self.detailLabel?.numberOfLines = totalLines
                    self.isHiddenSeeDetail = true
                    
                } else {
                    self.detailLabel?.numberOfLines = maxLinesRoundUp
                    self.isHiddenSeeDetail = false
                    self.numberOfLine = maxLinesRoundUp
                }
            }
        }
    }
    
    var isHiddenSeeDetail = false {
        didSet {
            self.seeDetailButton?.isHidden = self.isHiddenSeeDetail
            self.seeDetailView?.isHidden = self.isHiddenSeeDetail
        }
    }
    
    @IBAction func seeDetailPressed(_ sender: UIButton) {
        self.isShowAllDetail = !self.isShowAllDetail
        if !self.isHiddenSeeDetail {
            self.detailLabel?.numberOfLines = self.isShowAllDetail ? 0 : self.numberOfLine
            self.seeDetailButton?.setTitle(self.isShowAllDetail ? "See Less" : "See More", for: UIControl.State())
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.seeDetailButton.setTitle("See More", for: UIControl.State())
    }

}

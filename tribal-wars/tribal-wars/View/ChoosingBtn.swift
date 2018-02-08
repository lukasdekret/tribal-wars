//
//  ChoosingBtn.swift
//  tribal-wars
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import UIKit

@IBDesignable

class ChoosingBtn: UIButton {
    
    override func prepareForInterfaceBuilder() {
        customiseBtn()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseBtn()
        
    }
    
    func customiseBtn() {
        backgroundColor = #colorLiteral(red: 0.6862745098, green: 0.05098039216, blue: 0.05490196078, alpha: 1)
        layer.cornerRadius = 10.0
        layer.borderWidth = 3
        layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        
        clipsToBounds = true
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

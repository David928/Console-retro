//
//  MaVue.swift
//  Console rétro
//
//  Created by GONZALES David on 29/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class MaVue:UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        miseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        miseEnPlace()
    }
    
    func miseEnPlace() {
        layer.cornerRadius = 20
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.75
        layer.shadowOffset = CGSize(width: 5,height: 5)
        layer.shadowColor = UIColor.black.cgColor
    }
}



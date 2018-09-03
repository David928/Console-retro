//
//  Extensions.swift
//  Console rétro
//
//  Created by GONZALES David on 29/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

extension UILabel {
    
    func miseAJour(_ questionActuelle: Int, _ score: Int) {
        let attributed = NSMutableAttributedString(string: "Question actuelle: \(questionActuelle) \n", attributes: [.foregroundColor: UIColor.black, .font: UIFont.boldSystemFont(ofSize: 17)])
        attributed.append(NSMutableAttributedString(string: "Score \(score)/20", attributes: [.foregroundColor: UIColor.darkGray, .font: UIFont.italicSystemFont(ofSize: 17)]))
        self.attributedText = attributed
    }
}

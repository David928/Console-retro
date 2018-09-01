//
//  labelArrondi.swift
//  Console rétro
//
//  Created by GONZALES David on 31/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class labelArrondi: UILabel {

    //Intialiseur
    required init?(coder aDecoder: NSCoder) {
        //Initialiseur de la classe parente
        super.init(coder: aDecoder)
        
        //Coins arrondis
        layer.cornerRadius = 15
        
        //Couleur de fond
        layer.backgroundColor = UIColor.white.cgColor
        
        //Couleur de la bordure
        //layer.borderColor = UIColor.black.cgColor
        
        //Epaisseur de la bordure
        //layer.borderWidth = 1
        
        //Ombre
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 3
        
        //Couleur du texte
        //setTitleColor(UIColor.black, for: .normal)
        tintColor = UIColor.white

        
        //Padding a gauche et a droite
        //contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        
    }

}

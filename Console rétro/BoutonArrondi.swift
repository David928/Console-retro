//
//  BoutonArrondi.swift
//  Console rétro
//
//  Created by GONZALES David on 21/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class BoutonArrondi: UIButton {
    
    //Intialiseur
    required init?(coder aDecoder: NSCoder) {
        //Initialiseur de la classe parente
        super.init(coder: aDecoder)
        
        //Coins arrondis
        layer.cornerRadius = 15
        
        //Couleur de la bordure
        layer.borderColor = UIColor.black.cgColor
        
        //Epaisseur de la bordure
        layer.borderWidth = 2
        
        //Couleur du texte
        //setTitleColor(UIColor.white, for: .normal)
        
        //Padding a gauche et a droite
        contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        
    }
}

//
//  Console.swift
//  Console rétro
//
//  Created by GONZALES David on 15/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class Console {
    private var _nom: String
    private var _image: UIImage?
    private var _couleur: UIColor
    private var _debut: Int
    private var _fin: Int
    private var _desc: String
    private var _logoImage: UIImage?
    private var _logo: String
    private var _unite: Float
    private var _hit: String
    private var _histoire: String
    private var _histoire2: String
    private var _modele2: String
    private var _logomodele2: UIImage?
    
    var nom: String {
        return _nom
    }
    
    var logo: String {
        return _logo
    }
    
    var modele2: String {
        return _modele2
    }
    
    var image: UIImage? {
        return _image
    }
    
    var logoImage: UIImage? {
        return _logoImage
    }
    
    var logomodele2: UIImage? {
        return _logomodele2
    }
    
    var couleur: UIColor {
        return _couleur
    }
    
    var hit: String {
        return _hit
    }
    
    var desc: String {
        return _desc
    }
    
    var histoire: String {
        return _histoire
    }
    
    var histoire2: String {
        return _histoire2
    }
    
    init(nom: String, logo: String, modele2: String, debut: Int, fin: Int, unite: Float, hit: String, rgb: [CGFloat], desc: String, histoire: String, histoire2: String) {
        _nom = nom
        _logo = logo
        _modele2 = modele2
        _image = UIImage(named: nom + ".png")
        _logoImage = UIImage(named: logo + ".png")
        _logomodele2 = UIImage(named: modele2 + ".png")
        _debut = debut
        _fin = fin
        _unite = unite
        _hit = hit
        _desc = desc
        _histoire = histoire
        _histoire2 = histoire
        _couleur = UIColor.lightGray
        if rgb.count == 3 {
            _couleur = colorFrom(red: rgb[0], green: rgb[1], blue: rgb[2])
        }
    }
    
    func colorFrom(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
    func cycleDeVie() -> String {
        return "Debut: \(_debut) - fin: \(_fin)"
    }
    func uniteVendu() -> String {
        return "Unites vendues: \(_unite) millions"
    }
    
    func hitVendu() -> String {
        return "Jeu le plus vendu:\n\(_hit)"
    }
}

//
//  DetailController.swift
//  Console rétro
//
//  Created by GONZALES David on 15/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var TitleLogo: UIImageView!
    @IBOutlet weak var RetroIV: UIImageView!
    @IBOutlet weak var dureeLabel: UILabel!
    @IBOutlet weak var UniteLabel: UILabel!
    @IBOutlet weak var descTextField: UITextView!
    
    var consoles: [Console] = []
    var console: Console?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if console != nil {
        title = console!.nom
        TitleLogo.image = console!.logoImage
        RetroIV.image = console!.image
        dureeLabel.text = console!.cycleDeVie()
        UniteLabel.text = console!.uniteVendu()
        descTextField.text = console!.desc
        view.backgroundColor = console!.couleur
        }
    }
}

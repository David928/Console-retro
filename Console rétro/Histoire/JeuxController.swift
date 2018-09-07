//
//  JeuxController.swift
//  Console rétro
//
//  Created by GONZALES David on 05/09/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class JeuxController: UIViewController {
    
    @IBOutlet weak var TitleLogo: UIImageView!
    @IBOutlet weak var HitLabel: UILabel!
    @IBOutlet weak var JeuxTextView: UITextView!
    
    var console: Console?
    var consoles: [Console] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard console != nil else { return }
        title = console!.nom
        TitleLogo.image = console!.logoImage
        HitLabel.text = console!.hitVendu()
        JeuxTextView.text = console!.histoire2
        view.backgroundColor = console!.couleur
    }
}

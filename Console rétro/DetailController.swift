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
    @IBOutlet weak var HitLabel: UILabel!
    @IBOutlet weak var descTextField: UITextView!
    
    var consoles: [Console] = []
    var console: Console?
    var index = 0
    var segueID = "History"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        consoles = ConsoleCollection().obtenirListe()
        let tap = UITapGestureRecognizer(target: self, action: #selector(toHistory))
        RetroIV.addGestureRecognizer(tap)
        
        guard console != nil else { return }
        title = "Les consoles rétro"
        TitleLogo.image = console!.logoImage
        RetroIV.image = console!.image
        dureeLabel.text = console!.cycleDeVie()
        UniteLabel.text = console!.uniteVendu()
        HitLabel.text = console!.hitVendu()
        descTextField.text = console!.desc
        view.backgroundColor = console!.couleur
    }
    
    @objc func toHistory() {
        performSegue(withIdentifier: segueID, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let controller = segue.destination as? HistoryController {
                controller.console = consoles[index]
            }
        }
    }
    
}

//
//  HistoryController.swift
//  Console rétro
//
//  Created by GONZALES David on 20/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class HistoryController: UIViewController {
    
    @IBOutlet weak var HistoryTextView: UITextView!
    @IBOutlet weak var TitleLogo: UIImageView!
    @IBOutlet weak var jeuxIV: UIImageView!
    
    var console: Console?
    var consoles: [Console] = []
    var segueID = "Jeux"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        consoles = ConsoleCollection().obtenirListe()
        let tap = UITapGestureRecognizer(target: self, action: #selector(toJeux))
        jeuxIV.addGestureRecognizer(tap)
       
        guard console != nil else { return }
        title = console!.nom
        TitleLogo.image = console!.logoImage
        HistoryTextView.text = console!.histoire
        view.backgroundColor = console!.couleur
    }
    
    @objc func toJeux() {
        performSegue(withIdentifier: segueID, sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let consoleChoisie = console else { return }
        if segue.identifier == segueID {
            if let controller = segue.destination as? JeuxController {
                controller.console = consoleChoisie
            }
        }
    }
    
}

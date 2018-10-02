//
//  RetroController.swift
//  Console rétro
//
//  Created by GONZALES David on 19/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class RetroController: UIViewController {
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var RetroIV: UIImageView!
    
    var consoles: [Console] = []
    var console: Console?
    var index = 0
    var segueID = "Tab"

    override func viewDidLoad() {
        super.viewDidLoad()
        consoles = ConsoleCollection().obtenirListe()
        let tap = UITapGestureRecognizer(target: self, action: #selector(toTab))
        RetroIV.addGestureRecognizer(tap)
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @objc func toTab() {
        performSegue(withIdentifier: "Tab", sender: consoles)
    }
    
    func setup() {
        let console = consoles[index]
        TitleLabel.text = "Les consoles retro"
        LogoImage.image = console.logoImage
        RetroIV.image = console.image
        view.backgroundColor = console.couleur
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tab" {
            if let controller = segue.destination as? DetailController {
                controller.console = consoles[index]
            }
        }
    }
    
    @IBAction func PreviewPressed(_ sender: Any) {
        if index == 0 {
            index = consoles.count - 1
        } else {
            index -= 1
        }
        setup()
    }
    
    @IBAction func NextPressed(_ sender: Any) {
        if index == consoles.count - 1 {
            index = 0
        } else {
            index += 1
        }
        setup()
    }
    
    @IBAction func RandomPressed(_ sender: Any) {
        index = Int.random(in: 0..<consoles.count)
        setup()
    }
}

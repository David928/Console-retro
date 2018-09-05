//
//  HistoryController.swift
//  Console rétro
//
//  Created by GONZALES David on 20/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class HistoryController: UIViewController {
    
    @IBOutlet weak var HistoryLabel: UILabel!
    @IBOutlet weak var HistoryTextView: UITextView!
    
    var console: Console?
    var consoles: [Console] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard console != nil else { return }
        title = console!.nom
        HistoryLabel.text = "L'histoire de la console " + console!.nom
        HistoryTextView.text = console!.histoire + "\n" + console!.histoire2
        
        
        view.backgroundColor = console!.couleur
    }
}

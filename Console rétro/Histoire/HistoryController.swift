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
    
    var console: Console?
    var consoles: [Console] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard console != nil else { return }
        title = console!.nom
        TitleLogo.image = console!.logoImage
        HistoryTextView.text = console!.histoire
        view.backgroundColor = console!.couleur
    }
}

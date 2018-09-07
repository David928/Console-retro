//
//  AccueilController.swift
//  Console rétro
//
//  Created by GONZALES David on 28/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class AccueilController: UIViewController {
    
    @IBOutlet weak var MeilleurScoreLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Quizz console rétro"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let meilleurScore = UserDefaults.standard.integer(forKey: "Score")
        let scoreString = "Meilleur score : \(meilleurScore)/20"
        MeilleurScoreLabel.text = scoreString
    }
}

//
//  QuizzController.swift
//  Console rétro
//
//  Created by GONZALES David on 28/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class QuizzController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var bouton1: MonBouton!
    @IBOutlet weak var bouton2: MonBouton!
    @IBOutlet weak var bouton3: MonBouton!
    @IBOutlet weak var bouton4: MonBouton!
    
    var questions = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func peuplerQuestions() -> [Question] {
        var mesQuestions = [Question]()
        
        let question1 = Question(question: "En quel année est sorti la Playstation 1?", rep1: "1992", rep2: "1994", rep3: "1989", rep4: "1997", tag: 2)
        mesQuestions.append(question1)
        let question2 = Question(question: "En quel année est sorti la Xbox 360?", rep1: "2005", rep2: "2002", rep3: "2006", rep4: "2000", tag: 1)
        mesQuestions.append(question2)
        let question3 = Question(question: "En quel année est sorti la Game Gear?", rep1: "1989", rep2: "1994", rep3: "1993", rep4: "1991", tag: 4)
        mesQuestions.append(question3)
        let question4 = Question(question: "En quel année est sorti l'Atari 2600?", rep1: "1975", rep2: "1977", rep3: "1980", rep4: "1978", tag: 2)
        mesQuestions.append(question4)
        let question5 = Question(question: "En quel année est sorti la Game Boy SP?", rep1: "2000", rep2: "2003", rep3: "1999", rep4: "2004", tag: 2)
        mesQuestions.append(question5)
        let question6 = Question(question: "En quel année est sorti la Saturn?", rep1: "1991", rep2: "1993", rep3: "1994", rep4: "1997", tag: 3)
        mesQuestions.append(question6)
        let question7 = Question(question: "En quel année est sorti la WII?", rep1: "2006", rep2: "2003", rep3: "2007", rep4: "2002", tag: 1)
        mesQuestions.append(question7)
        let question8 = Question(question: "En quel année est sorti la PSP?", rep1: "2004", rep2: "2000", rep3: "2006", rep4: "2005", tag: 1)
        mesQuestions.append(question8)
        
        
        
        return mesQuestions
    }
    
    
    
    
    
    
    
    
    @IBAction func boutonAppuye(_ sender: Any) {
    }
    
    
}

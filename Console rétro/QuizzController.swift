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
    @IBOutlet weak var imageQuestion: UIImageView!
    @IBOutlet weak var bouton1: MonBouton!
    @IBOutlet weak var bouton2: MonBouton!
    @IBOutlet weak var bouton3: MonBouton!
    @IBOutlet weak var bouton4: MonBouton!
    
    @IBOutlet weak var blur: UIVisualEffectView!
    @IBOutlet weak var popup: MaVue!
    @IBOutlet weak var popResultat: UILabel!
    @IBOutlet weak var popReponse: UILabel!
    @IBOutlet weak var popBouton: BoutonArrondi!
    
    
    var questions = [Question]()
    var questionPosee: Question?
    var questionActuelle = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = peuplerQuestions()
        obtenirQuestion()
    }
    
    func peuplerQuestions() -> [Question] {
        var mesQuestions = [Question]()
        
        let question1 = Question(nom: "Playstation 1", question: "En quel année est sorti la Playstation 1?", rep1: "1992", rep2: "1994", rep3: "1989", rep4: "1997", tag: 2)
        mesQuestions.append(question1)
        let question2 = Question(nom: "Xbox 360", question: "En quel année est sorti la Xbox 360?", rep1: "2005", rep2: "2002", rep3: "2006", rep4: "2000", tag: 1)
        mesQuestions.append(question2)
        let question3 = Question(nom: "Sega Gamegear", question: "En quel année est sorti la Game Gear?", rep1: "1989", rep2: "1994", rep3: "1993", rep4: "1991", tag: 4)
        mesQuestions.append(question3)
        let question4 = Question(nom: "Atari 2600", question: "En quel année est sorti l'Atari 2600?", rep1: "1975", rep2: "1977", rep3: "1980", rep4: "1978", tag: 2)
        mesQuestions.append(question4)
        let question5 = Question(nom: "Game Boy Advance SP", question: "En quel année est sorti la Game Boy SP?", rep1: "2000", rep2: "2003", rep3: "1999", rep4: "2004", tag: 2)
        mesQuestions.append(question5)
        let question6 = Question(nom: "Sega Saturn", question: "En quel année est sorti la Saturn?", rep1: "1991", rep2: "1993", rep3: "1994", rep4: "1997", tag: 3)
        mesQuestions.append(question6)
        let question7 = Question(nom: "WII", question: "En quel année est sorti la WII?", rep1: "2006", rep2: "2003", rep3: "2007", rep4: "2002", tag: 1)
        mesQuestions.append(question7)
        let question8 = Question(nom: "Playstation Portable", question: "En quel année est sorti la PSP?", rep1: "2004", rep2: "2000", rep3: "2006", rep4: "2005", tag: 1)
        mesQuestions.append(question8)
        let question9 = Question(nom: "NES", question: "En quel année est sorti la NES?", rep1: "1982", rep2: "1985", rep3: "1983", rep4: "1980", tag: 3)
        mesQuestions.append(question9)
        let question10 = Question(nom: "Sega Mega Drive", question: "En quel année est sorti la Magadrive?", rep1: "1984", rep2: "1986", rep3: "1990", rep4: "1988", tag: 4)
        mesQuestions.append(question10)
        return mesQuestions
    }
    
    func obtenirQuestion() {
        if questionActuelle < 10 {
            questionActuelle += 1
            scoreLabel.miseAJour(questionActuelle, score)
            questionPosee = questions[questionActuelle - 1]
            if let question = questionPosee {
                questionLabel.text = question.question
                imageQuestion.image = question.imageQuestion
                bouton1.setTitle(question.reponse1, for: .normal)
                bouton2.setTitle(question.reponse2, for: .normal)
                bouton3.setTitle(question.reponse3, for: .normal)
                bouton4.setTitle(question.reponse4, for: .normal)
            } else {
                self.navigationController?.popViewController(animated: true)
            }

        } else {
            let meilleurScore = UserDefaults.standard.integer(forKey: "Score")
            if score > meilleurScore {
                UserDefaults.standard.set(score, forKey: "Score")
                UserDefaults.standard.synchronize()
            }
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func montrerPopUp(gagne: Bool, reponse: String) {
        if gagne {
            popResultat.text = "Félicitations"
            popReponse.text = "La bonne réponse était bien:\n " + reponse
        } else {
            popResultat.text = "Mauvaise réponse"
            popReponse.text = "La bonne réponse était:\n " + reponse
        }
        UIView.animate(withDuration: 0.3, animations: {
            self.blur.alpha = 1
            self.popup.alpha = 1
        }) { (success) in
            //
        }
    }
    
    @IBAction func popBoutonAppuye(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.blur.alpha = 0
            self.popup.alpha = 0
        }) { (success) in
            self.obtenirQuestion()
        }
    }
    
    @IBAction func boutonAppuye(_ sender: Any) {
    if let question = questionPosee, let bouton = sender as? UIButton {
            if question.tagCorrect == bouton.tag {
                score += 1
                montrerPopUp(gagne: true, reponse: bouton.titleLabel?.text  ?? "")
            } else {
                var reponse: String?
                switch question.tagCorrect {
                case 1: reponse = bouton1.titleLabel?.text
                case 2: reponse = bouton2.titleLabel?.text
                case 3: reponse = bouton3.titleLabel?.text
                case 4: reponse = bouton4.titleLabel?.text
                default: break
                }
                montrerPopUp(gagne: false, reponse: reponse ?? "")
            }
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
}

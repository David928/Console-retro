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
    @IBOutlet weak var popBouton: MonBouton!
    
    
    var questions = [Question]()
    var questionPosee: Question?
    var questionActuelle = 0
    var score = 0
    var emptyArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = QuizCollection().peuplerQuestions()
        obtenirQuestion()
    }
    
    
    func obtenirQuestion() {
        if questionActuelle < 20 {
            questionActuelle += 1
            scoreLabel.miseAJour(questionActuelle, score)
            questionPosee = questions[questionActuelle - 1]
            //for _ in questions {
                //questionActuelle = Int(arc4random_uniform(UInt32(questions.count - 1)))
                //emptyArray.append(questionActuelle)
                //questions.remove(at: questionActuelle)
            //}
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

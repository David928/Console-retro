//
//  Question.swift
//  Console rétro
//
//  Created by GONZALES David on 29/08/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class Question {
    
    private var _nom: String
    private var _question: String
    private var _reponse1: String
    private var _reponse2: String
    private var _reponse3: String
    private var _reponse4: String
    private var _tagCorrect: Int
    private var _imageQuestion: UIImage?
    
    var nom: String {
        return _nom
    }
    
    var question: String {
        return _question
    }
    
    var reponse1: String {
        return _reponse1
    }
    
    var reponse2: String {
        return _reponse2
    }
    
    var reponse3: String {
        return _reponse3
    }
    
    var reponse4: String {
        return _reponse4
    }
    
    var tagCorrect: Int {
        return _tagCorrect
    }
    
    var imageQuestion: UIImage? {
        return _imageQuestion
    }
    
    init(nom: String, question: String, rep1: String, rep2: String, rep3: String, rep4: String, tag: Int) {
        self._nom = nom
        self._question = question
        self._reponse1 = rep1
        self._reponse2 = rep2
        self._reponse3 = rep3
        self._reponse4 = rep4
        self._tagCorrect = tag
        self._imageQuestion = UIImage(named: nom + ".png")
    }
}

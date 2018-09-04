//
//  QuestionCollection.swift
//  Console rétro
//
//  Created by GONZALES David on 03/09/2018.
//  Copyright © 2018 GONZALES David. All rights reserved.
//

import UIKit

class QuizCollection {
    
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
        let question11 = Question(nom: "Sega Master System", question: "En quel année est sorti la Master System?", rep1: "1985", rep2: "1987", rep3: "1982", rep4: "1989", tag: 1)
        mesQuestions.append(question11)
        let question12 = Question(nom: "Atari 7800", question: "En quel année est sorti l'Atari 7800?", rep1: "1980", rep2: "1988", rep3: "1986", rep4: "1983", tag: 3)
        mesQuestions.append(question12)
        let question13 = Question(nom: "Nintendo Gameboy", question: "En quel année est sorti la Gameboy?", rep1: "1989", rep2: "1991", rep3: "1987", rep4: "1984", tag: 1 )
        mesQuestions.append(question13)
        let question14 = Question(nom: "Amstrad GX4000", question: "En quel année est sorti l'Amstrad GX4000?", rep1: "1985", rep2: "1992", rep3: "1988", rep4: "1990", tag: 4)
        mesQuestions.append(question14)
        let question15 = Question(nom: "Super Nintendo", question: "En quel année est sorti la Super Nintendo?", rep1: "1992", rep2: "1990", rep3: "1985", rep4: "1987", tag: 2)
        mesQuestions.append(question15)
        let question16 = Question(nom: "NEO GEO", question: "En quel année est sorti la Néo Géo?", rep1: "1990", rep2: "1994", rep3: "1987", rep4: "1989", tag: 1)
        mesQuestions.append(question16)
        let question17 = Question(nom: "Jaguar", question: "En quel année est sorti la Jaguar?", rep1: "1990", rep2: "1993", rep3: "1989", rep4: "1992", tag: 2)
        mesQuestions.append(question17)
        let question18 = Question(nom: "32X", question: "En quel année est sorti la Mégadrive 32X?", rep1: "1995", rep2: "1993", rep3: "1992", rep4: "1994", tag: 4)
        mesQuestions.append(question18)
        let question19 = Question(nom: "Sega Dreamcast", question: "En quel année est sorti la Dreamcast?", rep1: "1998", rep2: "2000", rep3: "1997", rep4: "1995", tag: 1)
        mesQuestions.append(question19)
        let question20 = Question(nom: "Nintendo 64", question: "En quel année est sorti la Nintendo 64?", rep1: "1996", rep2: "1998", rep3: "1997", rep4: "1999", tag: 1)
        mesQuestions.append(question20)
        let question21 = Question(nom: "Gameboy Color", question: "En quel année est sorti la Gameboy color", rep1: "2000", rep2: "1998", rep3: "1996", rep4: "2001", tag: 2)
        mesQuestions.append(question21)
        let question22 = Question(nom: "Playstation 2", question: "En quel année est sorti la Playstation 2", rep1: "2000", rep2: "2002", rep3: "1999", rep4: "1998", tag: 1)
        mesQuestions.append(question22)
        let question23 = Question(nom: "Game Boy Advance", question: "En quel année est sorti la Gameboy advance", rep1: "2000", rep2: "2003", rep3: "2001", rep4: "1999", tag: 3)
        mesQuestions.append(question23)
        let question24 = Question(nom: "Gamecube", question: "En quel année est sorti la Nintendo Gamecube", rep1: "1999", rep2: "2000", rep3: "2003", rep4: "2001", tag: 4)
        mesQuestions.append(question24)
        let question25 = Question(nom: "XBOX", question: "En quel année est sorti la XBOX", rep1: "2001", rep2: "1999", rep3: "2002", rep4: "1997", tag: 1)
        mesQuestions.append(question25)
        let question26 = Question(nom: "Game Boy Advance SP", question: "En quel année est sorti la Game Boy Advance SP", rep1: "2000", rep2: "2003", rep3: "2002", rep4: "2005", tag: 2)
        mesQuestions.append(question26)
        let question27 = Question(nom: "Playstation Portable", question: "En quel année est sorti la Playstation Portable", rep1: "2001", rep2: "2000", rep3: "2004", rep4: "2002", tag: 3)
        mesQuestions.append(question27)
        let question28 = Question(nom: "Game Boy Micro", question: "En quel année est sorti la Game Boy Micro", rep1: "2006", rep2: "2004", rep3: "2002", rep4: "2005", tag: 4)
        mesQuestions.append(question28)
        let question29 = Question(nom: "Xbox 360", question: "En quel année est sorti la Xbox 360", rep1: "2005", rep2: "2003", rep3: "2004", rep4: "2006", tag: 1)
        mesQuestions.append(question29)
        let question30 = Question(nom: "Playstation 3", question: "En quel année est sorti la Playstation 3", rep1: "2004", rep2: "2006", rep3: "2007", rep4: "2003", tag: 2)
        mesQuestions.append(question30)
        let question31 = Question(nom: "WII", question: "En quel année est sorti la WII", rep1: "2002", rep2: "2004", rep3: "2005", rep4: "2006", tag: 4)
        mesQuestions.append(question31)
        return mesQuestions.shuffled()
    }
    
    
}



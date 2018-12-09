//
//  Question.swift
//  bad words dictionary
//
//  Created by A. Yes on 11/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}

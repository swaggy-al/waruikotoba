//
//  QuestionBank.swift
//  bad words dictionary
//
//  Created by A. Yes on 11/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "someone calls you a チンカス?", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "someone says ありがとうございます！", correctAnswer: false))
        
        list.append(Question(text: "you hear someone say キチガイ?", correctAnswer: true))
        
        list.append(Question(text: "you\'re told 日本語上手ですね！", correctAnswer: false))
        
        list.append(Question(text: "you see someone slurping their noodles?", correctAnswer: false))
        
        list.append(Question(text: "someone says うっせえんだよ！", correctAnswer: true))
        
        list.append(Question(text: "your parents call you a disappointment", correctAnswer: false))
        
        list.append(Question(text: "someone says 使えねえ奴だな", correctAnswer: true))
        
        list.append(Question(text: "someone says to you お前の母ちゃんでべそ！", correctAnswer: true))
        
        list.append(Question(text: "you\'re called an イケメン/美人", correctAnswer: false))
        
        list.append(Question(text: "someone calls you a 能無し", correctAnswer: true))
        
        list.append(Question(text: "enter a store and they yell いらっしゃいませ at you", correctAnswer: false))
        
        list.append(Question(text: "someone looks a you and says ダサっ", correctAnswer: true))
    }
}


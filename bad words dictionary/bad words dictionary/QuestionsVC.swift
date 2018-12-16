//
//  QuestionsVC.swift
//  bad words dictionary
//
//  Created by A. Yes on 11/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class QuestionsVC: UIViewController {
    
    @IBOutlet weak var ad1: GADBannerView!
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber = 0
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var progressBar: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-8647706174375832~4304469143")
        
        self.ad1.adUnitID = "ca-app-pub-8647706174375832/2985152611"
        self.ad1.rootViewController = self
        
        ad1.load(GADRequest())
        
        nextQuestion()
        
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        
    }
    
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
            
        } else {
            
            let alert = UIAlertController(title: "Now you know when to be offended in Japan. You\'re ready for the streets", message: "", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct! いいじゃん！")
            score += 1
        }
        else {
            ProgressHUD.showError("Wrong! アホか！")
        }
    }
    
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        nextQuestion()
        
    }
    
    
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



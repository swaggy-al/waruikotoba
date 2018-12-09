//
//  BrowsedWordVC.swift
//  bad words dictionary
//
//  Created by A. Yes on 11/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class BrowsedWordVC: UIViewController {

    @IBOutlet weak var ad2: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-3940256099942544/2934735716")
        
        self.ad2.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        self.ad2.rootViewController = self
        
        ad2.load(GADRequest())

        updateUI()
        
    }
    
    @IBOutlet weak var browsedWordLabel: UILabel!
    
    @IBOutlet weak var browsedPronunciationLabel: UILabel!
    
    @IBOutlet weak var browsedTranslationLabel: UILabel!
    
    @IBOutlet weak var browsedSentenceLabel: UILabel!
    
    @IBOutlet weak var back: UIButton!
    
    @IBOutlet var nextButton: UIButton!
    
    func updateUI () {
        
        browsedWordLabel.text = japaneseNewArray[myIndex]
        browsedPronunciationLabel.text = pronunciationNewArray[myIndex]
        browsedTranslationLabel.text = translationNewArray[myIndex]
        browsedSentenceLabel.text = sentenceNewArray[myIndex]
    }
    

    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        if myIndex == japaneseNewArray.count - 1 {
            
            browsedWordLabel.text = japaneseNewArray[0]
            browsedPronunciationLabel.text = pronunciationNewArray[0]
            browsedTranslationLabel.text = translationNewArray[0]
            browsedSentenceLabel.text = sentenceNewArray[0]
            
            nextButton.isHidden = true
            
            
        } else {
            
            browsedWordLabel.text = japaneseNewArray[myIndex + 1]
            browsedPronunciationLabel.text = pronunciationNewArray[myIndex + 1]
            browsedTranslationLabel.text = translationNewArray[myIndex + 1]
            browsedSentenceLabel.text = sentenceNewArray[myIndex + 1]
            
            myIndex += 1
            
            back.isHidden = false

            
        }
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {

        if myIndex > 0 {
        
        browsedWordLabel.text = japaneseNewArray[myIndex - 1]
        browsedPronunciationLabel.text = pronunciationNewArray[myIndex - 1]
        browsedTranslationLabel.text = translationNewArray[myIndex - 1]
        browsedSentenceLabel.text = sentenceNewArray[myIndex - 1]
        
        myIndex -= 1
            
            back.isHidden = false
            
            nextButton.isHidden = false
            
        } else {
            back.isHidden = true
        }
    
    
}
    

}

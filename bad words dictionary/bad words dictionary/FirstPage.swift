//
//  FirstPage.swift
//  bad words dictionary
//
//  Created by A. Yes on 22/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation
import GoogleMobileAds

class FirstPage: UIViewController {
    
    @IBOutlet weak var ad: GADBannerView!
    
    @IBOutlet weak var browseWordsBtn: UIButton!
    
    @IBOutlet weak var flashcardsBtn: UIButton!
    
    @IBOutlet weak var shouldYouBeBtn: UIButton!
    
    @IBOutlet weak var yelledWord: UIImageView!
    
    var yelledWordArray = ["kusoga-0", "kusoga-2", "kusoga-3"]
    
    var randomYelledWordNumber = 0
    
    @IBAction func monkTapped(_ sender: UIButton) {
        
        monkImage.image = UIImage(named: "monkMad")
        
        yelledWordUpdate()
        
    }
    
    var monkArray: [UIImage] = []
    var sakuraArray: [UIImage] = []
    
    @IBOutlet weak var monkImage: UIImageView!
    
    @IBOutlet weak var sakuraImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        browseWordsBtn.layer.borderWidth = 1
        
        browseWordsBtn.layer.borderColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        
        flashcardsBtn.layer.borderWidth = 1
        
        flashcardsBtn.layer.borderColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        
        /*shouldYouBeBtn.layer.borderWidth = 1
       
        shouldYouBeBtn.layer.borderColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        */
        GADMobileAds.configure(withApplicationID: "ca-app-pub-8647706174375832~4304469143")
        
        self.ad.adUnitID = "ca-app-pub-8647706174375832/6902712328"
        self.ad.rootViewController = self
        
        ad.load(GADRequest())
        
        
        
        monkArray = createImageArray(total: 16, imagePrefix: "monk")
        animateMonk(imageView: monkImage, images: monkArray)
        
        /*sakuraArray = createImageArray(total: 12, imagePrefix: "sakura")
        animateSakura(imageView: sakuraImage, images: sakuraArray)*/
        
        // Do any additional setup after loading the view.
    }
    
    func yelledWordUpdate() {
        
        randomYelledWordNumber = Int(arc4random_uniform(3))
        
        yelledWord.image = UIImage(named: yelledWordArray[randomYelledWordNumber])
        
    }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        var imageArray: [UIImage] = []
        
        for imageCount in 0..<total {
        let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
        
        imageArray.append(image)
        }
        return imageArray
    }
    
    func animateMonk(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 20.0
        imageView.startAnimating()
    }
    
    func stopAnimation(_ withoutFinishing: Bool) {
        
    }
    
    
    /*func animateSakura(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 13.34
        imageView.startAnimating()
    }*/

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

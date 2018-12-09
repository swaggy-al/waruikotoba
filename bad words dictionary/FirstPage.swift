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
    
    
    var monkArray: [UIImage] = []
    var sakuraArray: [UIImage] = []
    
    @IBOutlet weak var monkImage: UIImageView!
    
    @IBOutlet weak var sakuraImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-3940256099942544/2934735716")
        
        self.ad.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        self.ad.rootViewController = self
        
        ad.load(GADRequest())
        
        
        
        monkArray = createImageArray(total: 16, imagePrefix: "monk")
        animateMonk(imageView: monkImage, images: monkArray)
        
        /*sakuraArray = createImageArray(total: 12, imagePrefix: "sakura")
        animateSakura(imageView: sakuraImage, images: sakuraArray)*/
        
        // Do any additional setup after loading the view.
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

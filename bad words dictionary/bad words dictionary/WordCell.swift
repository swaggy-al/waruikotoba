//
//  WordCell.swift
//  bad words dictionary
//
//  Created by A. Yes on 11/10/2018.
//  Copyright © 2018 A. Yes. All rights reserved.
//

import UIKit

class WordCell: UITableViewCell {

    @IBOutlet weak var wordLabelView: UILabel!
    
    func setWord(words: Words) {
        wordLabelView.text = words.title
        
    }
}

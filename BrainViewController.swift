//
//  BrainViewController.swift
//  FinalProject
//
//  Created by Giovanna Napoleone on 7/30/20.
//  Copyright © 2020 gwc. All rights reserved.
//

import UIKit

class BrainViewController: UIViewController {

    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var definition: UILabel!
    @IBOutlet weak var frontFlashcard: UIButton!
    var isOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    word.isHidden = false
        
        definition.isHidden = true
    }
    
    @IBAction func flashcardFlip(_ sender: UIButton) {
        
        if isOpen {
            word.isHidden = false
            definition.isHidden = true
            isOpen = false
            
    let img = UIImage (named:"front")
    
            frontFlashcard.setImage(img, for: .normal)
            UIView.transition(with: frontFlashcard,
                              duration: 0.4, options:
                UIView.AnimationOptions
                    .transitionFlipFromLeft, animations:
                nil, completion: nil)
            
        }
        else {
            isOpen = true
            let img = UIImage(named: "back")
            frontFlashcard.setImage(img, for: .normal)
        sleep(1)
        word.isHidden = true
    definition.isHidden = false
            
UIView.transition(with: frontFlashcard,duration: 0.3,options:
    UIView.AnimationOptions.transitionFlipFromRight,
                  animations: nil, completion: nil)
            
        }
         
    }
    
}

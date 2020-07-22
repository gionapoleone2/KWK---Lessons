//
//  ViewController.swift
//  MiniProject1
//
//  Created by Giovanna Napoleone on 7/22/20.
//  Copyright © 2020 Giovanna Napoleone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
           @IBOutlet weak var image1: UIImageView!
           
           @IBOutlet weak var image2: UIImageView!
           
    @IBOutlet weak var image3: UIImageView!
           
    @IBOutlet weak var image4: UIImageView!
           
           @IBOutlet weak var image5: UIImageView!
           
           @IBOutlet weak var image6: UIImageView!

    
    @IBAction func goButton(_ sender: UIButton) {
       
        image1.isHidden = false
        image2.isHidden = false
        image3.isHidden = false
        image4.isHidden = false
        image5.isHidden = false
        image6.isHidden = false
      
        
    }
    
}


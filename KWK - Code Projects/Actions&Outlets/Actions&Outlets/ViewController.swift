//
//  ViewController.swift
//  Actions&Outlets
//
//  Created by Giovanna Napoleone on 7/22/20.
//  Copyright © 2020 Giovanna Napoleone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitle: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if let newTitle = textField.text {
            
            appTitle.text = newTitle
        }
    }
    
}


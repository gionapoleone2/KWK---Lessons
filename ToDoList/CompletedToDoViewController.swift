//
//  CompletedToDoViewController.swift
//  ToDoList
//
//  Created by Giovanna Napoleone on 7/27/20.
//  Copyright © 2020 Giovanna Napoleone. All rights reserved.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    @IBOutlet weak var toDoDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoDisplay.text = selectedToDo.description
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeTapped(_ sender: UIButton) {
    }
    
    
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo = ToDoClass()
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
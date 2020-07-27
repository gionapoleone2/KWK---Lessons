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
        toDoDisplay.text = selectedToDo?.descriptionInCD
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeTapped(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
            
            return
        }
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        
        if let toDo2Delete = selectedToDo {
            dataFromCoreData.delete(toDo2Delete)
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}

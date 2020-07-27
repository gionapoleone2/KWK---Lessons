//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Giovanna Napoleone on 7/27/20.
//  Copyright © 2020 Giovanna Napoleone. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var listOfToDo: [ToDoCD] = []

    /* func createToDo() -> [ToDoClass]{
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Find a medical internship"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass()
        dogToDo.description = "Build a Resume"
        //important is set to false as default
        
        return [swiftToDo, dogToDo]
    }
    */
    
    func getToDos(){
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD]
            {
                listOfToDo = dataFromCoreData
                tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //listOfToDo = createToDo()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let eachToDo = listOfToDo[indexPath.row]
        
        cell.textLabel?.text = eachToDo.descriptionInCD
        
        if let thereIsDescription = eachToDo.descriptionInCD{
            if eachToDo.importantInCD{
                cell.textLabel?.text = "⚕️" + thereIsDescription
            }
    
        
        else {
            
            cell.textLabel?.text = eachToDo.descriptionInCD
        }
        }
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //this gives us a single ToDo
        let eachToDo = listOfToDo[indexPath.row]
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)

    }

    
    // Override to support editing the table view.
    /* override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 */
    
    
    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
   
    // MARK: - Navigation

   // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextAddToDoVC = segue.destination as? AddToDoViewController{
            
            nextAddToDoVC.previousToDoTVC = self
       //  Get the new view controller using segue.destination.
      //   Pass the selected object to the new view controller.
    }

        if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
            if let chosenToDo = sender as? ToDoCD {
                nextCompletedToDoVC.selectedToDo = chosenToDo
                nextCompletedToDoVC.previousToDoTVC = self
            }
        }
 }
}

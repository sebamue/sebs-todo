//
//  CreateTaskViewController.swift
//  Sebs ToDo
//
//  Created by Sebastian Muehl on 1/25/17.
//  Copyright © 2017 Sebastian. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTask(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        // Get context from CoreData
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Save to CoreData
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        // Pop back
        
        
        navigationController!.popViewController(animated: true)
    }
    

}

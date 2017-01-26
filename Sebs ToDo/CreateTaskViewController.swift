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
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTask(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add task to array in previous ViewController
        
        previousVC.tasks.append(task)
        previousVC.taskTableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

}

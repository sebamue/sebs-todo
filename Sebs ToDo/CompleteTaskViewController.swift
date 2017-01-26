//
//  CompleteTaskViewController.swift
//  Sebs ToDo
//
//  Created by Sebastian Muehl on 1/25/17.
//  Copyright © 2017 Sebastian. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️ \(task.name)"
        } else {
            taskLabel.text = task.name
        }
        
    }

    @IBAction func completeTapped(_ sender: AnyObject) {
    
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.taskTableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
}

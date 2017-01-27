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
    var task : Task? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "❗️ \(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
        
    }

    @IBAction func completeTapped(_ sender: AnyObject) {
        
        //Get context, delete the object that we are looking at
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        
        //Save to CoreData
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        // Pop to previous VC
        navigationController!.popViewController(animated: true)
    }
    
}

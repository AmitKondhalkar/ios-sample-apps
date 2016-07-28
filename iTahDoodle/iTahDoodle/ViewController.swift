//
//  ViewController.swift
//  iTahDoodle
//
//  Created by Amit Kondhalkar on 7/25/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itemTextField : UITextField!
    @IBOutlet var tableView : UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction
    func addButtonPressed(sender: UIButton){
//        print("Add to to-do item \(itemTextField.text)")
        guard let text = itemTextField.text else {
            return
        }
        todoList.addItem(text)
        tableView.reloadData()
    }

}


//
//  TodoList.swift
//  iTahDoodle
//
//  Created by Amit Kondhalkar on 7/25/16.
//  Copyright © 2016 AmitK. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    
    private let fileURL: NSURL = {
        let documentDirectoryURLs = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let documentDirectoryURL = documentDirectoryURLs.first!
        return documentDirectoryURL.URLByAppendingPathComponent("todolist.items")
    }()

    private var items: [String] = []

    override init() {
        super.init()
//        loadItems()
    }
    
    func loadItems(){
        if let itemsArray = NSArray(contentsOfURL: fileURL) as? [String]{
            items = itemsArray
        }
    }
    
    func addItem(item: String){
        items.append(item)
        saveItem()
    }
    
    
    func saveItem(){
        let itemsArray = items as NSArray
        
        if !itemsArray.writeToURL(fileURL, atomically: true){
            print("could not save to-do list")
        }
    }
}

extension TodoList: UITableViewDataSource{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let item = items[indexPath.row]
        cell.textLabel!.text = item
        return cell
    }
}

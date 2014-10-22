//
//  ColorsTableViewController.swift
//  TableViewController
//
//  Created by Matthew Whitesides on 9/30/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    let colorList = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 44
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = colorList[indexPath.row]
        return cell
    }
    
    
}
//
//  ViewController.swift
//  Tutorial1
//
//  Created by Matthew Whitesides on 10/16/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, APIControllerProtocol {
    
    @IBOutlet var appsTableView : UITableView?
    
    var api = APIController()
    
    let kCellIdentifier: String = "SearchResultCell"
    
    var tableData = []
    
    func didReceiveAPIResults(results: NSDictionary) {
        var resultsArr: NSArray = results["results"] as NSArray
        dispatch_async(dispatch_get_main_queue(), {
            self.tableData = resultsArr
            self.appsTableView!.reloadData()
        })
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier) as UITableViewCell
        let rowData: NSDictionary = self.tableData[indexPath.row] as NSDictionary
        
        cell.textLabel?.text = rowData["trackName"] as? String
        
        //Get Artwork
        let urlString: NSString = rowData["artworkUrl60"] as NSString
        let imgURL: NSURL = NSURL(string: urlString)
        
        //Get Image Data
        let imgData: NSData = NSData(contentsOfURL: imgURL)
        cell.imageView?.image = UIImage(data: imgData)
        
        //Get formatted string to subtitle data
        let formattedPrice: NSString = rowData["formattedPrice"] as NSString

        cell.detailTextLabel?.text = formattedPrice
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.api.delegate = self
        api.searchItunesFor("Epic Games")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


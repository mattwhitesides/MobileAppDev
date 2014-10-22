//
//  ViewController.swift
//  Tutorial1
//
//  Created by Matthew Whitesides on 10/16/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var appsTableView : UITableView?
    
    var tableData = []
    
    func searchItunesFor(searchTerm : String) {
        let itunesSearchTerm = searchTerm.stringByReplacingOccurrencesOfString(" ", withString: "+", options: .CaseInsensitiveSearch, range: nil)
        
        if let escapedSearchTerm = itunesSearchTerm.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding) {
            let urlPath = "http://itunes.apple.com/search?term=\(escapedSearchTerm)&media=software"
            let url = NSURL(string: urlPath)
            let session = NSURLSession.sharedSession()
            let task = session.dataTaskWithURL(url, completionHandler: {data, response, error -> Void in
                println("Task completed")
                if(error != nil) {
                    // If there is an error in the web request, print it to the console
                    println(error.localizedDescription)
                }
                var err: NSError?
                
                var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
                if(err != nil) {
                    // If there is an error parsing JSON, print it to the console
                    println("JSON Error \(err!.localizedDescription)")
                }
                let results: NSArray = jsonResult["results"] as NSArray
                dispatch_async(dispatch_get_main_queue(), {
                    self.tableData = results
                    self.appsTableView!.reloadData()
                })
            })
            task.resume()
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
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

        searchItunesFor("EA")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  CloudKit101
//
//  Created by Matthew Whitesides on 10/9/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField:UITextField?
    
    @IBAction func checkIn {
        let date = NSDate()
        let wrappedName = nameTextField?.text
        if let name = wrappedName {
            CheckInHandler.postCheckin(name, date: date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


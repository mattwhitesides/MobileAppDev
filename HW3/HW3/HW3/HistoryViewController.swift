//
//  HistoryViewController.swift
//  HW3
//
//  Created by Matthew Whitesides on 10/28/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func changeText(sender: AnyObject) {
        textLabel.text = inputField.text
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

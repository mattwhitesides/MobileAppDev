//
//  ConverterViewController.swift
//  HW3
//
//  Created by Matthew Whitesides on 10/28/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!

    @IBAction func convertTemp(sender: AnyObject) {
        tempLabel.text = NSString(format: "%.2f", ((inputField.text as NSString).floatValue * 1.8) + 32)
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

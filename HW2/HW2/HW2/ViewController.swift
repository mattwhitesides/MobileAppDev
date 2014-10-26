//
//  ViewController.swift
//  HW2
//
//  Created by Matthew Whitesides on 10/22/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!

    @IBAction func tempConvert(sender: AnyObject) {
        fahrenheitLabel.text = NSString(format: "%.2f", ((inputField.text as NSString).floatValue * 1.8) + 32)
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


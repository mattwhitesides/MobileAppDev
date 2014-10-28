//
//  TempConverterViewController.swift
//  HW2
//
//  Created by Matthew Whitesides on 10/28/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class TempConverterViewController: UIViewController {

    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func tempConvert(sender: AnyObject) {
        fahrenheitLabel.text = NSString(format: "%.2f", ((inputField.text as NSString).floatValue * 1.8) + 32)

//      let cTempVal = (inputField.text as NSString).doubleValue
//      let fTempVal = cTempVal * 1.8 + 32
//      fahrenheitLabel.text = "\(fTempVal)"
        
//        if let cTempVal = NSNumberFormatter().numberFromString(inputField.text) {
//
//        }
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

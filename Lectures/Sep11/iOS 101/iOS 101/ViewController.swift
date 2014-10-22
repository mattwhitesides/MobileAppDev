//
//  ViewController.swift
//  iOS 101
//
//  Created by Matthew Whitesides on 9/11/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var changedLabel: UILabel?
    @IBOutlet var saySomthingButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.redColor()
        
    }
    
    @IBAction func changeLabelText() {
        changedLabel?.text = "Hello this is a new thing"
    }

    

}


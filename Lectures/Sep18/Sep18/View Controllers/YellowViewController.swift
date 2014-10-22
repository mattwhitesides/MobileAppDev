//
//  YellowViewController.swift
//  Sep18
//
//  Created by Matthew Whitesides on 9/18/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    let textField = UITextField(frame: CGRectZero)
    let button = UIButton(UIButtonType.Custom)

    let textFieldConstraints = [
        NSLayoutConstraint(item: textField, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: textField, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 10),
        NSLayoutConstraint(item: textField, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -10)
    ]
    
    var buttonConstraints = [
        NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: textField, attribute: .CenterX, multiplier: 1, constant: 0),
        NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: textField, attribute: .CenterX, multiplier: 1, constant: 0),
        NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: textField, attribute: .CenterX, multiplier: 1, constant: 0)
    ]
    
    override func loadView() {
        view = UIView(frame: UIScreen.mainScreen().bounds)
        view.backgroundColor = UIColor.yellowColor()
        textField.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(textField)
        view.addConstraints(textFieldConstraints)
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        textField.borderStyle = UITextBorderStyle.RoundedRect
    }
    
    
    
    

}

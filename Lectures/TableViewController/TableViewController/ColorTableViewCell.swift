//
//  ColorTableViewCell.swift
//  TableViewController
//
//  Created by Matthew Whitesides on 9/30/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

    @IBOutlet var colorView: UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

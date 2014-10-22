//
//  CheckInHandler.swift
//  CloudKit101
//
//  Created by Matthew Whitesides on 10/9/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import CloudKit
import UIKit

class CheckInHandler: UITableViewCell {

    class func postCheckin(name:String, date:NSDate) {
        let publicContainer = CKContainer.defaultContainer().publicCloudDatabase
        let newRecord = CKRecord(recordType: "Checkin")
        
        newRecord.setObject(name, forKey: "name")
        newRecord.setObject(date, forKey: "date")
        
        publicContainer.saveRecord
    }

}

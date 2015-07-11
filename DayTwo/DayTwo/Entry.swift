//
//  Entry.swift
//  DayTwo
//
//  Created by Jason Larsen on 7/10/15.
//  Copyright © 2015 Heartbit. All rights reserved.
//

import UIKit
import CoreData

class Entry: NSManagedObject {
    @NSManaged var text: String
    @NSManaged var date: NSDate
    @NSManaged var imageData: NSData?
    
    var image: UIImage? {
        get{
            if let imageData = imageData {
                return UIImage(data: imageData)
            }
            return nil
        }
        set {
            if let value = newValue {
                imageData = UIImageJPEGRepresentation(value, 0)
            }
            else {
                imageData = nil
            }
        }
    }
}
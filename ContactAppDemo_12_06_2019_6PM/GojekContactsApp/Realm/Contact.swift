//
//  Contact.swift
//  GojekContactsApp
//
//  Created by Nishant Sharma on 06/11/2019
//  Copyright © 2019 Nishant Sharma. All rights reserved.
//

import Foundation
import RealmSwift

// Realm supports the following property types: Bool, Int, Int8, Int16, Int32, Int64, Double, Float, String, Date, and Data
// String, Date, and Data properties can be declared as optional or required (non-optional) using standard Swift syntax. Optional numeric types are declared using the RealmOptional type
// let age = RealmOptional<Int>()

class Contact: Object {
    @objc private(set) dynamic var id : String = UUID().uuidString
    @objc dynamic var apiId           : Int    = -1 // -1 is invalid means locally made
    
    @objc dynamic var firstName     : String? = nil
    @objc dynamic var lastName      : String? = nil
    @objc dynamic var email         : String? = nil
    @objc dynamic var mobile        : String? = nil
    @objc dynamic var isFavorite    : Bool    = false
    @objc dynamic var imageData     : Data?   = nil
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func name() -> String {
        var name = ""
        if let fn = self.firstName {
            name = fn + " "
        }
        if let ln = self.lastName {
            name = name + ln
        }
        
        return name
    }
    
    func image() -> UIImage {
        
        var finalImage: UIImage = UIImage(named: "missingContact")!
        if let data = self.imageData, let image = UIImage(data: data) {
            finalImage = image
        }
        
        return finalImage
    }
}

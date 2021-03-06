//
//  Person.swift
//  Project10
//
//  Created by Yuhua Cheng on 10/25/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit

class Person: NSObject, Codable {
    var name: String
    var image: String
    
    init(name:String, image:String) {
        self.name = name
        self.image = image
    }
}

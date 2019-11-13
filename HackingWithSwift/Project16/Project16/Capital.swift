//
//  Capital.swift
//  Project16
//
//  Created by Yuhua Cheng on 11/12/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(title:String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title;
        self.coordinate = coordinate
        self.subtitle = info
    }
}

//
//  Inquiry.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

struct Inquiry {
    let inquiryID: Int
    let description: String
    let type: Type
    
    enum Type: Int {
        case Maintenance = 0
        case Repair = 1
    }
    
    init(inquiryID: Int, description: String, type: Type) {
        self.inquiryID = inquiryID
        self.description = description
        self.type = type
    }
    
    init(fromRow row: Row) {
        let id = Expression<Int>("id")
        let descr = Expression<String>("description")
        let type = Expression<Int>("type")
        self.init(inquiryID: row[id], description: row[descr], type: Type(rawValue: row[type])!)
    }
}
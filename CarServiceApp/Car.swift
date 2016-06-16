//
//  Car.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

struct Car {
    let carID: Int
    let type: Type
    let model: String
    let company: String
    let ownerID: Int
    
    enum Type: String {
        case SUV
    }
    
    init(id: Int, type: Type, model: String, company: String, ownerID: Int) {
        self.carID = id
        self.type = type
        self.model = model
        self.company = company
        self.ownerID = ownerID
    }
    
    init(fromRow row: Row) {
        let id = Expression<Int>("id")
        let type = Expression<String>("type")
        let model = Expression<String>("model")
        let company = Expression<String>("company")
        let owner = Expression<Int>("owner_id")
        self.init(id: row[id], type: Type(rawValue: row[type])!, model: row[model], company: row[company], ownerID: row[owner])
    }
}
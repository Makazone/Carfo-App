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
    
    let clientID: Int
    let carID: Int
    
    enum Type: Int {
        case Maintenance = 0
        case Repair = 1
    }
    
    init(inquiryID: Int, description: String, type: Type, clientID: Int, carID: Int) {
        self.inquiryID = inquiryID
        self.description = description
        self.type = type
        self.clientID = clientID
        self.carID = carID
    }
    
    init(fromRow row: Row) {
        let id = Expression<Int>("id")
        let clientID = Expression<Int>("client_id")
        let carID = Expression<Int>("car_id")
        let descr = Expression<String>("description")
        let type = Expression<Int>("type")
        self.init(inquiryID: row[id], description: row[descr], type: Type(rawValue: row[type])!, clientID: row[clientID], carID: row[carID])
    }
}
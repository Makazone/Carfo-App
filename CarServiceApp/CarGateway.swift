//
//  CarGateway.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

class CarGateway {
    class var table: Table {
        get {
            return Table("Car")
        }
    }
    
    class func findCarForInquiry(inquiry: Inquiry) -> Car? {
        guard let connection = DBManager.sharedManger?.db else {
            return nil
        }
        
        let id = Expression<Int>("id")
        let query = table.filter(id == inquiry.carID)
        guard let row = connection.pluck(query) else {
            return nil
        }
        
        return Car(fromRow: row)
    }
}
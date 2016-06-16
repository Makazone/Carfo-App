//
//  ClientGateway.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

class ClientGateway {
    class var table: Table {
        get {
            return Table("Client")
        }
    }
    
    class func findClientForInquiry(inquiry: Inquiry) -> Client? {
        guard let connection = DBManager.sharedManger?.db else {
            return nil
        }
        
        let id = Expression<Int>("id")
        let query = table.filter(id == inquiry.clientID)
        guard let row = connection.pluck(query) else {
            return nil
        }
        
        return Client(fromRow: row)
    }
}

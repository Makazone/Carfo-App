//
//  Client.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

struct Client {
    let clientID: Int
    let firstName: String
    let secondName: String
    let email: String
    
    init(clientID: Int, firstName: String, secondName: String, email: String) {
        self.clientID  = clientID
        self.firstName = firstName
        self.secondName = secondName
        self.email = email
    }
    
    init(fromRow row: Row) {
        let id = Expression<Int>("id")
        let fn = Expression<String>("first_name")
        let sn = Expression<String>("second_name")
        let email = Expression<String>("email")
        self.init(clientID: row[id], firstName: row[fn], secondName: row[sn], email: row[email])
    }
}
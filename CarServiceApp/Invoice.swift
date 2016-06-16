//
//  Invoice.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

struct Invoice {
    let invoiceID: Int
    let amount: Double
    let dueDate: NSDate
    let clientID: Int
    let inquiryID: Int
    
    init(id: Int, amount: Double, dueDate: NSDate, clientID: Int, inquiryID: Int) {
        self.invoiceID = id
        self.amount = amount
        self.dueDate = dueDate
        self.clientID = clientID
        self.inquiryID = inquiryID
    }
    
    init(fromRow row: Row) {
        let id = Expression<Int>("id")
        let amount = Expression<Double>("amount")
        let date = Expression<NSDate>("due_date")
        let clientID = Expression<Int>("client_id")
        let inquiryID = Expression<Int>("inquiry_id")
        self.init(id: row[id], amount: row[amount], dueDate: NSDate(), clientID: row[clientID], inquiryID: row[inquiryID])
    }
}
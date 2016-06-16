//
//  InvoiceGateway.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

class InvoiceGateway {
    class var table: Table {
        get {
            return Table("Invoice")
        }
    }
    
    class func findInvoicesForInquiry(inquiry: Inquiry) -> [Invoice] {
        guard let connection = DBManager.sharedManger?.db else {
            return []
        }
        
        let id = Expression<Int>("inquiry_id")
        let query = table.filter(id == inquiry.inquiryID)
        
        do {
            let rows = try connection.prepare(query)
            return rows.map { return Invoice(fromRow: $0) }
        } catch {
            return []
        }
    }
}
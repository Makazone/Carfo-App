//
//  InquiryGateway.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

class InquiryGateway {
    class var table: Table {
        get {
            return Table("Inquiry")
        }
    }
    
    class func findAll() -> [Inquiry] {
        guard let connection = DBManager.sharedManger?.db else {
            return []
        }
        
        do {
            let rows = try connection.prepare(table)
            let list = rows.map { row in
                return Inquiry(fromRow: row)
            }
            
            return list
        } catch {
            return []
        }
    }
}
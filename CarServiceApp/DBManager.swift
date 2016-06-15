//
//  DBManager.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import SQLite

class DBManager {
    static let sharedManger: DBManager? = DBManager()
    
    let db: Connection
    
    private init?() {
        guard let path = NSBundle.mainBundle().pathForResource("db", ofType: "sqlite") else {
            return nil
        }
        
        do {
            let connection = try Connection(path)
            self.db = connection
        } catch {
            return nil
        }
    }
}
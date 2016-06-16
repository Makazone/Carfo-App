//
//  InvoiceCell.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import UIKit

class InvoiceCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    func setUpWithInvoice(invoice: Invoice) {
        label.text = "Amount \(invoice.amount)$"
    }
}
//
//  InquiryCell.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import UIKit

class InquiryCell: UITableViewCell {
    @IBOutlet weak var inquiryIdLabel: UILabel!
    @IBOutlet weak var inquiryDescrLabel: UILabel!
    
    func setUp(inquiry: Inquiry) {
        inquiryIdLabel.text = "#\(inquiry.inquiryID)"
        inquiryDescrLabel.text = inquiry.description
    }
}
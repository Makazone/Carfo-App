//
//  CarCell.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import UIKit

class CarCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    func setUpWithCar(car: Car) {
        label.text = "\(car.company), \(car.model)"
    }
}
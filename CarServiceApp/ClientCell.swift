//
//  ClientCell.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import Foundation
import UIKit

class ClientCell: UITableViewCell {
    @IBOutlet weak var userPic: UIImageView!
    @IBOutlet weak var username: UILabel!
    
    func setUpWithClient(client: Client) {
        userPic.image = UIImage().imageWithRandomColor()
        username.text = "\(client.firstName) \(client.secondName)"
    }
}

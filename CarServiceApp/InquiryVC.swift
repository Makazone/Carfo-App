//
//  ViewController.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 15/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import UIKit

class InquiryVC: UIViewController {
    private lazy var inquiryList: [Inquiry] = {
        return InquiryGateway.findAll()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension InquiryVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inquiryList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(InquiryCell), forIndexPath: indexPath) as! InquiryCell
        
        cell.setUp(inquiryList[indexPath.row])
        
        return cell
    }
}


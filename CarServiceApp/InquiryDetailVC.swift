//
//  InquiryDetailVC.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import UIKit

class InquiryDetailVC: UIViewController {
    var inquiry: Inquiry!
    
    @IBOutlet weak var tableView: UITableView!
    
    private lazy var client: Client? = {
        ClientGateway.findClientForInquiry(self.inquiry)
    }()
    
    private lazy var car: Car? = {
        CarGateway.findCarForInquiry(self.inquiry)
    }()
    
    private lazy var invoices: [Invoice] = {
        InvoiceGateway.findInvoicesForInquiry(self.inquiry)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension InquiryDetailVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else {
            return invoices.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch (indexPath.row, indexPath.section) {
        case (0, 0):
            let cell = tableView.dequeueReusableCellWithIdentifier(String(ClientCell), forIndexPath: indexPath) as! ClientCell
            
            cell.setUpWithClient(client!)
            
            return cell
        case (1, 0):
            let cell = tableView.dequeueReusableCellWithIdentifier(String(CarCell), forIndexPath: indexPath) as! CarCell
            
            cell.setUpWithCar(car!)
            
            return cell
        case (_, 1):
            let cell = tableView.dequeueReusableCellWithIdentifier(String(InvoiceCell), forIndexPath: indexPath) as! InvoiceCell
            
            cell.setUpWithInvoice(invoices[indexPath.row])
            
            return cell
        default:
            fatalError("Index path not determined \(indexPath)")
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 1:
            return "INVOICES"
        default:
            return nil
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}



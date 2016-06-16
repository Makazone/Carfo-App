//
//  TestInvoice.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import XCTest

class TestInvoice: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGetInvoiceForInquiry() {
        let inquiry = Inquiry(inquiryID: 2, description: "test", type: .Repair, clientID: 1, carID: 1)
        let invoice = InvoiceGateway.findInvoicesForInquiry(inquiry).first
        XCTAssertNotNil(invoice, "Should be able to fetch invoices for inquiry")
        XCTAssertTrue(invoice?.amount == 212.28, "Should be able to fetch correct invoice for inquiry")
    }

}

//
//  TestClient.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import XCTest

class TestClient: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGetClientForInquiry() {
        let inquiry = Inquiry(inquiryID: 1, description: "test", type: .Repair, clientID: 1, carID: 1)
        XCTAssertNotNil(ClientGateway.findClientForInquiry(inquiry), "Should be able to fetch client for inquiry")
    }

}

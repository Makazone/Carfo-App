//
//  TestInquiry.swift
//  CarServiceApp
//
//  Created by Makar Stetsenko on 16/06/16.
//  Copyright © 2016 Makar Stetsenko. All rights reserved.
//

import XCTest
import CarServiceApp

class TestInquiry: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInquiryListLoading() {
        let inquiryList = InquiryGateway.findAll()
        XCTAssertTrue(inquiryList.count == 100, "Should be able to return a list of inquiries")
    }
}

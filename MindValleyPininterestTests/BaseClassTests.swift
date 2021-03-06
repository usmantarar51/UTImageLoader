//
//  BaseClassTests.swift
//  MindValleyPininterestTests
//
//  Created by Muhammad Usman Tarar on 9/20/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import XCTest
@testable import MindValleyPininterest

class BaseClassTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testBaseclassInit() {
        let expectation = XCTestExpectation(description: "row models generated")
        
        let _ = BaseclassLoader().generateRowModels { (array) in
            XCTAssertNotNil(array)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5.0)
    }
}

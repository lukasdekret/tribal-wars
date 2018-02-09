//
//  tribal_warsTests.swift
//  tribal-warsTests
//
//  Created by Lukáš Dekrét on 8.2.18.
//  Copyright © 2018 Lukáš Dekrét. All rights reserved.
//

import XCTest

class tribal_warsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCountingNewProduction() {
        XCTAssert(Production.countNextProduction(currentProduction: 1, level: 1) == 2)
        XCTAssert(Production.countNextProduction(currentProduction: 123, level: 10) == 160)
        XCTAssert(Production.countNextProduction(currentProduction: 121, level: 10) == 158)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

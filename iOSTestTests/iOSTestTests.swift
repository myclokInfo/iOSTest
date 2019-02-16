//
//  iOSTestTests.swift
//  iOSTestTests
//
//  Created by Vadim Komisarchik on 10/24/18.
//  Copyright © 2018 Vadim Komisarchik. All rights reserved.
//

import XCTest
@testable import iOSTest

class iOSTestTests: XCTestCase {
    var sut:ViewController!
    override func setUp() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        sut = story.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        sut.loadView()
        sut.viewDidLoad()
    }
    
    func testFirst() {
        XCTAssertEqual(2, 2)
    }
    
    func testSecond() {
        XCTAssertEqual(2, 2)
    }
    
    func testThird() {
        XCTAssertEqual(4, 4)
    }
    
    func testCheckThis() {
        XCTAssertEqual(sut.checkThis(), "shalom")
    }

}

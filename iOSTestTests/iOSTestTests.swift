//
//  iOSTestTests.swift
//  iOSTestTests
//
//  Created by Vadim Komisarchik on 10/24/18.
//  Copyright © 2018 Vadim Komisarchik. All rights reserved.
//

import XCTest
import Alamofire
@testable import iOSTest

class iOSTestTests: XCTestCase {
    override func setUp() {

    }


    
    func testNetworkCall() {
        let urlString = "http://localhost:3000/todos/1"
        let expectationAuthorization = expectation(description: "true authorization")

        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default).validate(statusCode: 200..<299).responseJSON(completionHandler: { response in

            print(" response is_______________________________ \(response) sanity check for this process")
            XCTAssertEqual(response.response?.statusCode, 404)
            expectationAuthorization.fulfill()

        })
        wait(for: [expectationAuthorization], timeout: 5)

    }

}

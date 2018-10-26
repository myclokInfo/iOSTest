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
        let urlString = "http://localhost:3000/board"
        let expectationAuthorization = expectation(description: "true authorization")

        Alamofire.request(urlString, method: .get, parameters: nil, encoding: URLEncoding.default).validate(statusCode: 200..<299).responseJSON(completionHandler: { response in
            print(" response is_______________________________ \(response) sanity check for this process")
            
            
                switch response.result {
                case .success(let data as [String:Any]):
                    if let testing =  response.result.value as? NSDictionary {
                        XCTAssertEqual(testing.value(forKey: "created_at") as! String, "2018-04-11T23:27:51.205Z")
                    }
                case .failure(let err):
                    print(err.localizedDescription)
                    XCTFail()
                default:
                    XCTFail()
            }
            
            
            expectationAuthorization.fulfill()

        })
        wait(for: [expectationAuthorization], timeout: 5)

    }

}

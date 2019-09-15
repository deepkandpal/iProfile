//
//  iProfileTests.swift
//  iProfileTests
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import XCTest
@testable import iProfile

class iProfileTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    // Asynchronous api call unit test cases for success and fail.
    func testProfileAsyncCalback() {
        let expectationDes = expectation(description: "statusCode: 200")
        let profileNetworkManager = NetworkManager()
        guard let url = URL.init(string:kURL) else { return }
        
        profileNetworkManager.getProfileDataFromServer(url: url, completion:({(data:[Profile]?, error:Error?) in
            if let profileData = data {
                XCTAssertNotNil(profileData)
                expectationDes.fulfill()        //tells process is complete
            }else {
                //No profile data at server
                if let error = error{
                    XCTFail("Error: \(error.localizedDescription)")  // show error
                }
            }}))
        wait(for: [expectationDes], timeout: 10) //tells wait for 10 secs or throw error
    }
}

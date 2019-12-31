//
//  TestGreeting.swift
//  PushNoticationsDemoTests
//
//  Created by Sudhakar on 24/12/19.
//  Copyright © 2019 Bayer. All rights reserved.
//

import XCTest
@testable import PushNoticationsDemo

class TestGreeting: XCTestCase {
    var greet:Greeting!
    var firstName:String?
    var lastName:String?
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        greet = Greeting()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        greet = nil
        lastName = nil
        firstName = nil
    }

    func testGreetingNil(){
        let greeting = greet.sayHi(fname: firstName, lname: lastName)
        XCTAssertNil(greeting, "Becuase first name and last is nil")
    }
    func testFirstName(){
        self.firstName = "venkata"
        let greeting = greet.sayHi(fname: firstName, lname: lastName)
        XCTAssertEqual(greeting, "Hi Mr. venkata", "first name is okay")
    }
}

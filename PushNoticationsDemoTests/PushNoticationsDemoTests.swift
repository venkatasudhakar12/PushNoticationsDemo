

import XCTest
@testable import PushNoticationsDemo

class PushNoticationsDemoTests: XCTestCase {
    var vm : ViewModel!
    override func setUp() {
        vm = ViewModel()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        vm = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLogion(){
        let username = "abc"
        var password = ""
        let exp = self.expectation(description: "login")
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now()+3) {
            password = "abc"
            exp.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(username, password)
    }
    func testAuth(){
        let response = "success"
        var result = ""
        let ext = self.expectation(description: "serviceCall")
        vm.fectchingDataFromServer { res in
           result = res
            ext.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(response, result)
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

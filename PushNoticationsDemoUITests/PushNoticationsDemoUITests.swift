

import XCTest


class ViewControllerUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testDemo(){
        
        let app = XCUIApplication()
        app.textFields["username"].tap()
        
        let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        aKey.tap()
        aKey.tap()
        app.textFields["password"].tap()
        app/*@START_MENU_TOKEN@*/.keys["b"]/*[[".keyboards.keys[\"b\"]",".keys[\"b\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testLoginSuccess(){
        let validUserName = "ios"
        let validPassword = "ios"
        let app = XCUIApplication()
        let userNameTF = app.textFields["username"]
        XCTAssertTrue(userNameTF.exists)
        userNameTF.tap()
        userNameTF.typeText(validUserName)
        
        let passwordTF = app.textFields["password"]
        XCTAssertTrue(passwordTF.exists)
        passwordTF.tap()
        passwordTF.typeText(validPassword)
       
        app/*@START_MENU_TOKEN@*/.buttons["Hide keyboard"]/*[[".keyboards.buttons[\"Hide keyboard\"]",".buttons[\"Hide keyboard\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.buttons["Login"].tap()
       
       // let exp = expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: nil, handler: nil)
      //  exp.fulfill()
        let alert = app.alerts["Alert"]
        alert.waitForExistence(timeout: 5)
        alert.scrollViews.otherElements.buttons["OK"].tap()
        
      //  waitForExpectations(timeout: 8, handler: nil)
        
      
                
                                
    }
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
open class Student {
    var age:Int = 1
}

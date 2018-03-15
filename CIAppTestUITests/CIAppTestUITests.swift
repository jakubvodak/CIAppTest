//
//  CIAppTestUITests.swift
//  CIAppTestUITests
//
//  Created by Jakub Vodak on 15/03/2018.
//  Copyright © 2018 Jakub Vodak. All rights reserved.
//

import XCTest

class CIAppTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRoverRotateToRightGoesTo() {

        let app = XCUIApplication()
        let textField = app.textFields["textFieldIdentifier"]
        textField.tap()
        textField.typeText("R\n")

        let button = app.buttons["actionButtonIdentifier"]
        button.tap()

        let description = app.staticTexts["labelIdentifier"]

        XCTAssertEqual(description.label, "X: 0, Y: 0, Direction: E")
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}

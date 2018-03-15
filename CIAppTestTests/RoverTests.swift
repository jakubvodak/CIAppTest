//
//  RoverTests.swift
//  CIAppTestTests
//
//  Created by Jakub Vodak on 15/03/2018.
//  Copyright © 2018 Jakub Vodak. All rights reserved.
//

import XCTest

class RoverTests: XCTestCase {

    let initialX = 0
    let initialY = 0
    let initialDirection: Character = "N"
    var sut: Rover!

    override func setUp() {
        super.setUp()

        sut = Rover(x: initialX, y: initialY, direction: initialDirection)
    }
    
    override func tearDown() {

        sut = nil

        super.tearDown()
    }


    func executeCommand(_ command: String, andTestDirection: Character) {

        //Act
        sut.execute(string: command)

        //Assert
        XCTAssertEqual(sut.direction, andTestDirection)
    }


    func testExecuteRotateRightGoesToEast() {

        executeCommand("R", andTestDirection: "E")
    }

    func testExecuteRotateDoubleRightGoesToSouth() {

        executeCommand("RR", andTestDirection: "S")
    }

    func testExecuteRotateTripleRightGoesToSouth() {

        executeCommand("RRR", andTestDirection: "W")
    }

    func testExecuteRotateQuadRightGoesToSouth() {

        executeCommand("RRRR", andTestDirection: "N")
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
    
}

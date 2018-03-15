//
//  Rover.swift
//  CIAppTest
//
//  Created by Jakub Vodak on 15/03/2018.
//  Copyright © 2018 Jakub Vodak. All rights reserved.
//

import Foundation

public class Rover: CustomStringConvertible {

    public var description: String {
        get {
            return "X: \(x), Y: \(y), Direction: \(direction)"
        }
    }

    var x: Int
    var y: Int
    var direction: Character

    init(x: Int, y: Int, direction: Character) {

        self.x = x
        self.y = y
        self.direction = direction
    }

    func execute(string: String) {

        for command in string {

            if command == "R" {
                switch direction {
                case "E": self.direction = "S"
                case "N": self.direction = "E"
                case "S": self.direction = "W"
                case "W": self.direction = "N"
                default: return
                }
            }
        }
    }
}

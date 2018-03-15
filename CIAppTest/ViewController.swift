//
//  ViewController.swift
//  CIAppTest
//
//  Created by Jakub Vodak on 15/03/2018.
//  Copyright © 2018 Jakub Vodak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var label: UILabel!

    var rover: Rover!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = String()

        rover = Rover(x: 0, y: 0, direction: "N")

        configureView()
    }

    @IBAction func buttonAction() {

        rover.execute(string: textField.text ?? String())

        textField.text = String()

        configureView()
    }

    func configureView() {

        label.text = rover.description
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        textField.resignFirstResponder()

        buttonAction()

        return true
    }
}

//
//  ViewController.swift
//  HappyOrSad
//
//  Created by Liu, Bojun on 2019-11-18.
//  Copyright © 2019 Liu, Nicole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// Mark: Properties
// Connected text field to controller using an outlet
    @IBOutlet weak var messageTextField: UITextField!
// Connected label to controller using an outlet
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// Mark: Methods
// Created an action for when the button is pressed
    @IBAction func analyzeButtonPressed(_ sender: Any) {
    
    }
}


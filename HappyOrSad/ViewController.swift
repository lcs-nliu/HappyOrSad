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
// Action to analyze text input
    @IBAction func analyzeButtonPressed(_ sender: Any) {
        
        // Guard against no input
        guard let phraseInput = messageTextField.text, phraseInput.count > 0 else {
            resultsLabel.text = "Please enter a phrase to analyze."
            return
            
        }
    }
}


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
        
        // 1. INPUT
        // Clear out the output label from the last time the analyze button was pressed
        resultsLabel.text = ""
        
        // Guard against no input or too much input
        let phraseInput = messageTextField.text
        guard let phraseInput = messageTextField.text, phraseInput.count > 0 && phraseInput.count <= 255 else {
            resultsLabel.text = "Please enter a string with at least 1 and no more than 255 characters."
            return
         // Define variables and arrays that I will use later on
        var emojiCount = 0
        let happyEmoji = ["😃","😊","😄","🙂"]
        let sadEmoji = ["☹","🙁","😕","😔"]
            
        // Check every character for an emoji
            for singleCharacter in phraseInput {
            if
            }
    
    
        }
    }
}


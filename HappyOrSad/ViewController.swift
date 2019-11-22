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
// Declare variables needed later
    var happyCount = 0
    var sadCount = 0
    var numberOfEmojis = 0
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
        happyCount = 0
        sadCount = 0
        numberOfEmojis = 0
        // Guard against no input or too much input
        guard let phraseInput = messageTextField.text, phraseInput.count > 0 && phraseInput.count <= 255 else {
            resultsLabel.text = "Please enter a string with at least 1 and no more than 255 characters."
            return
        }
    
        // Check every character for an emoji
        for singleCharacter in phraseInput {
            switch singleCharacter {
            case "☹","🙁","😕","😔":
                happyCount+=1
                numberOfEmojis+=1
            case "😃","😊","😄","🙂":
                sadCount+=1
                numberOfEmojis+=1
            default:
                resultsLabel.text = "none"
            }
            
            let emojiCount = happyCount + sadCount
            
            if emojiCount >= 1 {
                resultsLabel.text = "happy."
            } else if emojiCount <= 1 {
                resultsLabel.text = "sad."
            } else if numberOfEmojis == 0 {
                resultsLabel.text = "none."
            } else {
                resultsLabel.text = "unsure."
            }
            
        }
    
    
        
    }
}


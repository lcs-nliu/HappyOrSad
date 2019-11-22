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
    var emojiCount = 0
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
        emojiCount = 0
        numberOfEmojis = 0
        // Guard against no input or too much input
        guard let phraseInput = messageTextField.text, phraseInput.count > 0 && phraseInput.count <= 255 else {
            resultsLabel.text = "Please enter a string with at least 1 and no more than 255 characters."
            return
        }
    // Created happy emojis and sad emojis constantss
    let happyArray = "😃😊😄🙂"
    let sadArray = "☹🙁😕😔"
    // Loop to check every single character for an emoji
        for singleCharacter in phraseInput {
           // if/else statement to check if any of the characters are emojis
            if happyArray.contains(singleCharacter) {
                // If emoji count is over 1 - user is happy
                emojiCount+=1
                // User has used an emoji
                numberOfEmojis+=1
            } else if sadArray.contains(singleCharacter){
                // If emoji count is under 1 - user is sad
                emojiCount-=1
                // User has used an emoji
                numberOfEmojis+=1
            } else {
                // Set the label text to 'none'
                resultsLabel.text = "none."
            }
            
            // Second if/else statement to see if emoji count is positive or negative indicating if user is happy or sad
            if emojiCount >= 1 {
                resultsLabel.text = "happy."
            } else if emojiCount <= -1 {
                resultsLabel.text = "sad."
            // if emoji count is zero there is the same number of happy or sad emojis
            } else if emojiCount == 0, numberOfEmojis != 0 {
                resultsLabel.text = "unsure."
            // set default to none because it means there are no emojis
            } else {
                resultsLabel.text = "none."
            }
            
        }
    
    
        
    }
}


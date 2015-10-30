//
//  ViewController.swift
//  Guessing Game
//
//  Created by Mees Fröberg on 27/10/15.
//  Copyright © 2015 Mees Fröberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Create a randomNumber object to generate random numbers
    let randomNumber = RandomNumber(range: 10)
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var feedback: UILabel!
    @IBOutlet weak var number: UITextField!

    
    // When the range button is pressed, change the range of the randomNumber object.
    @IBAction func setRange(sender: AnyObject) {
        if let range = Int(number.text!) {
            randomNumber.range = range
            print(String(format:"New range is: %d", range))
        }
        number.text = ""
    }
    
    // When the go button is pressed handle the input of the user.
    @IBAction func guess(sender: AnyObject) {
        if let guess = Int(number.text!) {
            if feedback.text == "Guess" {
                randomNumber.nextNumber()
                if randomNumber.number == guess {
                    correct()
                } else if randomNumber.number > guess {
                    feedback.text = "Higher"
                } else {
                    feedback.text = "Smaller"
                }
            } else {
                if randomNumber.number == guess {
                    correct()
                } else {
                    incorrect()
                }
            }
        }
        number.text = ""
    }
    
    // When the input of the user is correct execute this function.
    func correct() {
        score.text = String(Int(score.text!)! + 1)
        feedback.text = "Guess"
    }
    
    // When the input of the user is incorrect execute this function.
    func incorrect() {
        feedback.text = "Guess"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


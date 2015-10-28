//
//  ViewController.swift
//  Guessing Game
//
//  Created by Mees Fröberg on 27/10/15.
//  Copyright © 2015 Mees Fröberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let randomNumber = RandomNumber(range: 10)
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var feedback: UILabel!
    @IBOutlet weak var number: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        if feedback.text == "Guess" {
            randomNumber.nextNumber()
            if randomNumber.number == Int(number.text!) {
                correct()
            } else if randomNumber.number > Int(number.text!) {
                feedback.text = "Higher"
            } else {
                feedback.text = "Smaller"
            }
        } else {
            if randomNumber.number == Int(number.text!) {
                correct()
            } else {
                incorrect()
            }
        }
        number.text = ""
    }
    
    func correct() {
        score.text = String(Int(score.text!)! + 1)
//        feedback.text = "Correct!"
        feedback.text = "Guess"
    }
    
    func incorrect() {
//        feedback.text = "Incorrect"
//        feedback.text = String(format: "Number was %d", randomNumber.number)
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


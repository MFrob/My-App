//
//  RandomNumber.swift
//  Guessing Game
//
// This class calculates a random integer between 1 and a given range.
//
//  Created by Mees Fröberg on 27/10/15.
//  Copyright © 2015 Mees Fröberg. All rights reserved.
//

import Foundation

class RandomNumber {
    var number:Int
    var range:Int
    
    init(range:Int){
        number = 0
        self.range = range
    }
    
    // Generate next integer.
    func nextNumber() {
        number = generateRandomInteger(range)
        print(String(format:"New number is: %d", number))
    }
    
    // Generate a random integer and return it.
    private func generateRandomInteger(range:Int) -> Int{
        return Int(arc4random_uniform(UInt32(range)))
    }
}
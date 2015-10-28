//
//  RandomNumber.swift
//  Guessing Game
//
//  Created by Mees Fröberg on 27/10/15.
//  Copyright © 2015 Mees Fröberg. All rights reserved.
//

import Foundation

class RandomNumber {
    var number:Int
    private let range:Int
    
    init(range:Int){
        number = 0
        self.range = range
    }
    
    func nextNumber() {
        number = generateRandomInteger(range)
    }
    
    private func generateRandomInteger(range:Int) -> Int{
        return Int(arc4random_uniform(UInt32(range)))
    }
}
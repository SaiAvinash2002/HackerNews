//
//  CheckDivisiblity.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

struct CheckDivisibility{
        func checkNumber(_ number: Int) -> String {
            
            switch (number % 3 == 0, number % 5 == 0) {
            case (true, true): 
                return "FizzBuzz"
            case (true, false): 
                return "Fizz"
            case (false, true): 
                return "Buzz"
            default: return "\(number)"
            }

    }
}


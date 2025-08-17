//
//  CheckDivisiblity.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

struct CheckDivisibility{
    func checkNumber( _ number:Int)->String{
        if ( number % 3 == 0 && number % 5 == 0){
            return "FizzBuzz"
        }
        else if (number % 3 == 0 ){
            return "Fizz"
        }
        
        else if ( number % 5 == 0){
            return "Buzz"
        }
        
        else{
            return String(number)
        }
    }
}


//
//  PrimeCheck.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

struct PrimeCheck{
    func primeNumber(_ number:Int)->String{
        if (number==1){
            return "Neither Prime nor Composite"
        }
        if (number==2) {
            return "Prime"
        }
        for i in 2...number-1{
            if (number % i==0) {
                return "Not a Prime"
            }
        }
        return "Prime"
    }
}

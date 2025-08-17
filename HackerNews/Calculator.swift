//
//  Calculator.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

struct Calculator{
    func sum(_ a: Double?, _ b: Double?) -> Double{
        if let a=a, let b=b{
            return a+b
        }
        else if let a=a{
            return a
        }
        return b ?? 0
    }
    
    func sub(_ a: Double?, _ b: Double?) -> Double{
        if let a=a, let b=b{
            return a-b
        }
        else if let a=a{
            return a
        }
        return b ?? 0
    }
    
    func mul(_ a: Double?, _ b: Double?) -> Double{
        if let a=a, let b=b{
            return a*b
        }
        else if let a=a{
            return a
        }
        return b ?? 0
    }
    
    func div(_ a: Double?, _ b: Double?) -> Double{
        if let a=a, let b=b {
            if b==0{
                return 0
            }
            return a/b
        }
        else if let a=a{
            return a
        }
        return b ?? 0
    }
}

//
//  ReverseString.swift
//  HackerNews
//
//  Created by Sai Avinash Vagicherla on 8/15/25.
//

struct ReverseString {
    func reverse(_ input:String)->String{
        if (input=="") {
            return ""
        }
        return String(input.reversed())
    }
}



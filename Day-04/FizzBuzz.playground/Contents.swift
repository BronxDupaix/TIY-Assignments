//: Playground - noun: a place where people can play

import UIKit

//Coding Kata Week 1
//Due Wednesday 02-03-2016 8:00am
//Question 1
//Fizzbuzz

//Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print "FizzBuzz"




func fizzBuzz(count: Int) -> String {
    
    if count % 25 == 0 {
        
        return "bazz"
    }
    
    if count % 3 == 0 && count % 5 == 0 && count % 10 == 0 {
          return "fizzBuzz"
        
    }
    
  
    
    if count % 3 ==  0 {
        
        return "fizz"
    }else if count % 5 ==  0 {
        
        return "buzz"
    }
    
    
    return "\(count)"
}


for count in 1...100 {
    
    fizzBuzz(count)
    
}




//: Playground - noun: a place where people can play

import UIKit

//Reverse

//Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.

var numbers = [1,2,3,4]

numbers = numbers.reverse()

print(numbers)

func reverse(numbers: [Int]) -> [Int] {
    
    var returnArray = [Int]()
    
    
    for number in numbers{
        
        returnArray.insert(number, atIndex: 0)
    }
    

    return returnArray
}
reverse(numbers)

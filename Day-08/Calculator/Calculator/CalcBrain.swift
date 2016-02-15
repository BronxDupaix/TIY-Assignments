//
//  CalcBrain.swift
//  Calculator
//
//  Created by Bronson Dupaix on 2/12/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

enum OperatorType: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "÷"
}

class CalcBrain {
    
    // func calculate(value1: Double, value2: Double, operatorString: String -> Double {
    // var result: Double = 0 
    // if operatorString == "+" { 
    // result = value1 + value2 
    //} 
    // if operatorString == "-" {
    // result = value1 - value2 
    //} 
    // return result 
    // } 
    // var runningTotal: Double = 0 
    // var firstNumber: Double = 0
    // var secondNumber: Double = 0 
    // hasTypedValue: Bool = false 
    // func passStringToBrain:(str: String) {
    // let valueString = self.convertsStringToDouble(str)
    // if hasTypedValue == false{
    // self.firstNumber = value 
    // }else {
    // self.secondNumber = value 
    //
    //}

    
    var runningTotal: Double = 0
    
    var valuesArray = [Double]()
    
    var operators = [OperatorType]()
    
//    func add(value1: Double, value2: Double) -> Double{
//        
//        return value1 + value2
//    }
//    
//    func subtract(value1: Double, value2: Double) -> Double{
//    
//        
//        return value1 - value2
//        
//    }
    
    
    
}


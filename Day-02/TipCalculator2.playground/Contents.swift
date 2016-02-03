//: Playground - noun: a place where people can play

import UIKit

class tipCalculator{
    
    var dollarAmount: Double
    
    init(dollarAmount: Double) {
        self.dollarAmount = dollarAmount
    }
    
    func tipAmt(totalAmount:Double, tipPct:Double) -> (tipTotal:Double, totalAmt:Double){
        
        
        
        
    }
    func tipCalc(tipPct:Double) -> Double{
        
        return self.dollarAmount * tipPct
    
    }
    func printPossibleTips() {
        let tip15 = tipCalc(0.15)
        let tip18 = tipCalc(0.18)
        let tip20 = tipCalc(0.20)
    }
    
}
let tip = tipCalculator(dollarAmount: 35.00)





//Homework
//Tip Calculator

//Create a new playgound file called "TipCalculator".
    
//Create a function to calculate the tip amount. It should accept two values - totalAmount and percentage and return the total amount of the tip as well as the final total for the customer. Hint: use tuples

//Create a Class called TipCalculator with one property called dollarAmount.

//It should have an initializer that accepts the dollarAmount

//It should have a function that calculates a tip it should accept a tipPercentage that is of type Double and returns the tipAmount of type Double.

//It should have a method called printPossibleTips() that calculates and prints the tip amount for three values 15%, 18% and 20%.

//HARD MODE:

//Write an App that uses a textField for the dollarAmount and tipPercentage and a button that calculates the final dollar amount to be paid.

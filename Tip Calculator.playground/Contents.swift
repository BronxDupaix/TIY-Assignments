//: Playground - noun: a place where people can play

import UIKit

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


let tipAndTotal = (4.00, 25.19)

let (theTipAmt, theTotal) = tipAndTotal
theTipAmt
theTotal
let tipAndTotalNamed = (tipAmt:4.00, total:25.19)
tipAndTotalNamed.tipAmt
tipAndTotalNamed.total

let total = 21.19
let taxPct = 0.06
let subtotal = total / (taxPct + 1)
func calcTipWithTipPct(tipPct:Double) -> (tipAmt:Double, total:Double) {
    let tipAmt = subtotal * tipPct
    let finalTotal = total + tipAmt
    return ( tipAmt, finalTotal)
}


calcTipWithTipPct(0.20)

class tipCalculator{
    var dollarAmount: Double = 0.0

func tipAmt(totalAmount:Double, tipPct:Double) -> (tipTotal:Double, totalAmt:Double){
    
    init()
    dollarAmount
    
    }
    func tipCalc(tipPer:Double) -> (tipAmnt)
    
}














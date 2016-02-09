//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



let presentTimeLabel = UILabel()

let dateFormatter = NSDateFormatter()

dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle

let today = NSDate()

presentTimeLabel.text = dateFormatter.stringFromDate(today)

print(presentTimeLabel.text) 


//: Playground - noun: a place where people can play

import UIKit

let today = NSDate()

let dateFormatter = NSDateFormatter()


dateFormatter.dateFormat = "MMMM D yyyy"

var todayString = dateFormatter.stringFromDate(today)

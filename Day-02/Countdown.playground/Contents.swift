//: Playground - noun: a place where people can play

import UIKit

//Countdown

//Write a function named countdown that takes a number N. The function should print the numbers from N to 1 with a one second pause in between and then write GO! in the end. To make the computer wait for one second call the sleep function from the standard library. The sleep function takes one parameter, the number of seconds to sleep.

//Using the sleep function


//import Foundation
//sleep(1) // will wait for one second before executing the next line

import Foundation

sleep

func countdown(var N: Int){
    if N > 0 {
        print(N)
        N = N - 1
        sleep(1)
    countdown(N)}
    else { print("GO")
    }
    }
countdown(6)
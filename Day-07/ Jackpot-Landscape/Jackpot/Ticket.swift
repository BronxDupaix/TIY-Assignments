//
//  Ticket.swift
//  Jackpot
//
//  Created by Bronson Dupaix on 2/9/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit


class Ticket{
    
    // MARK: - Properties 
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var number4: Int = 0
    var number5: Int = 0
    var number6: Int = 0
    
    init() {
        
        
    }
    
    func description() {
        print("\(self.number1) \(self.number2), \(self.number3), \(self.number4), \(self.number5), \(self.number6)")

    }
    
    // MARK: - Methods
    
    func generateTicket(){
        
        self.number1 = Int(arc4random_uniform(9)) + 1
        
        self.number2 = Int(arc4random_uniform(9)) + 11
        
        self.number3 = Int(arc4random_uniform(9)) + 21
        
        self.number4 = Int(arc4random_uniform(9)) + 31
        
        self.number5 = Int(arc4random_uniform(9)) + 41
        
        self.number6 = Int(arc4random_uniform(9)) + 51
        
    }

//    func checkTicketAgainstWinner(otherTicket: Ticket) -> Bool {
//        
//        if self.number1 == number1 && self.number2 == number2 &&
//        
//    }
}


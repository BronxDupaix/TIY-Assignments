//
//  LottoTicketViewController.swift
//  Jackpot
//
//  Created by Bronson Dupaix on 2/9/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class LottoTicketViewController: UIViewController {
    
    @IBOutlet weak var yourTicketLabel: UILabel!
  
    @IBOutlet weak var winningTicketLabel: UILabel!
    
    var ticket: Ticket?
    
    var currentTicket = Ticket()
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        yourTicketLabel.text = "Your Ticket - \(currentTicket.number1), \(currentTicket.number2), \(currentTicket.number3), \(currentTicket.number4), \(currentTicket.number5), \(currentTicket.number6)"
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentTicket.description()
        
        winningTicketLabel.text = "Winning Ticket -  \(currentTicket.number1), \(currentTicket.number2), \(currentTicket.number3), \(currentTicket.number4), \(currentTicket.number5), \(currentTicket.number6)"
   

        // Do any additional setup after loading the view.
    }


}

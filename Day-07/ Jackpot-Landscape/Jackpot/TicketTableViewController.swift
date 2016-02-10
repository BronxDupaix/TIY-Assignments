//
//  TicketTableViewController.swift
//  Jackpot
//
//  Created by Bronson Dupaix on 2/9/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class TicketTableViewController: UITableViewController {
    
    var ticketsArray = [Ticket]()
    
    var winningTicket = Ticket()
    
    var currentTicket: Ticket?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        winningTicket = Ticket()
        
        winningTicket.generateTicket()
        
        winningTicket.description()
        

    }
    
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ticketsArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TicketCell", forIndexPath: indexPath) as! TicketTableViewCell
        
        
        
        let ticket = ticketsArray[indexPath.row] 
        
        cell.labelOne.text = "\(ticket.number1)"
        
        cell.labelTwo.text = "\(ticket.number2)"
        
        cell.labelThree.text = "\(ticket.number3)"

        cell.labelFour.text = "\(ticket.number4)"

        cell.labelFive.text = "\(ticket.number5)"
        
        cell.labelSix.text = "\(ticket.number6)"
        
        
       
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentTicket = self.ticketsArray[indexPath.row]
        
        self.performSegueWithIdentifier("lottoSegue", sender: self)

    }

    @IBAction func addTicket(sender: UIBarButtonItem) {
        
        
        let ticket = Ticket()
        
        ticket.generateTicket() 
        
        ticketsArray.insert(ticket, atIndex: 0) 
        
        self.tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print(segue.identifier)
        if segue.identifier == "lottoSegue" {
            let viewcontroller = segue.destinationViewController as! LottoTicketViewController
            
            viewcontroller.currentTicket = self.currentTicket! 
        }

    }

    // MARK: - Navigation


    


}
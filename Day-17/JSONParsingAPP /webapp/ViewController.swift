//
//  ViewController.swift
//  webapp
//
//  Created by Bronson Dupaix on 2/23/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

protocol GitHubFriendsprotocol{
    
    func passFriend(friendsArray: [Friend])
}


class ViewController: UIViewController, GitHubFriendsprotocol, UITableViewDataSource, UITableViewDelegate  {
    
    var friendArray = [Friend]()
    
    var api = GitHubAPI()
    
    var currentFriend: Friend?
    
    
    @IBOutlet weak var nameTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.delegate = self
        
        api.fetchUsers()
        
    } // end view did load
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let friend = self.friendArray[indexPath.row]
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = friend.name
        
        return cell
        }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friendArray.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentFriend = friendArray[indexPath.row]
        
        performSegueWithIdentifier("showDetailSegue", sender: self)
        
        
    }
    
    func passFriend(friendsArray: [Friend]) {
        
        self.friendArray = friendsArray
        
        print(friendArray.count)
        
        dispatch_async(dispatch_get_main_queue(), {
            
        self.nameTableView.reloadData()
            
        })
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "showDetailSegue" {
        let viewController = segue.destinationViewController as? FriendDetailViewController
            
            viewController?.friend = self.currentFriend 
        }
        
    }
    
} // end view controller
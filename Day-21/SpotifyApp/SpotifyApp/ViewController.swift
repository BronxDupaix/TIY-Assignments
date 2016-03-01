//
//  ViewController.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

protocol RetrieveArtist {
    
    func passArtist(artist: Artist)
}

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {
    
    var api = SpotifyApi()

    @IBOutlet weak var artistsTableView: UITableView!
    
    
    @IBOutlet weak var artistTextField: UITextField!
    
    @IBAction func searchButton(sender: UIButton) {
        
        self.api.fetchArtist(artistTextField.text!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.fetchArtist("slayer") 

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("artistNameCell")
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }

}


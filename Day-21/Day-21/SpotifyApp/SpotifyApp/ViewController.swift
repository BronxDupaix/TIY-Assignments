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

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate, RetrieveArtist {
    
    var api = SpotifyApi()
    
    var artistsArray = [Artist]()
    
    var currentArtist: Artist?

    @IBOutlet weak var artistsTableView: UITableView!
    
    @IBOutlet weak var artistTextField: UITextField!
    
    @IBAction func searchButton(sender: UIButton) {
        
        self.api.fetchArtist(artistTextField.text!) 
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        api.delegate = self
        
        DataStore.sharedInstance.loadArtists()

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let artist = DataStore.sharedInstance.artistsArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("artistNameCell") as? ArtistTableViewCell
        
        cell?.nameLabel.text = artist.name 
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return DataStore.sharedInstance.artistsArray.count
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentArtist = DataStore.sharedInstance.artistsArray[indexPath.row]
        
        
        performSegueWithIdentifier("albumViewSegue", sender:  self)
        
    }
    
    func passArtist(artist: Artist) {
        
       DataStore.sharedInstance.artistsArray.insert (artist, atIndex: 0)
   
        dispatch_async(dispatch_get_main_queue(), {
            
            self.artistsTableView.reloadData()
        })
        
        
        DataStore.sharedInstance.saveChanges()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "albumViewSegue" {
            
            let albumViewController = segue.destinationViewController as? AlbumViewController
            
            albumViewController?.currentArtist = self.currentArtist 
            
        }
    }
    

}


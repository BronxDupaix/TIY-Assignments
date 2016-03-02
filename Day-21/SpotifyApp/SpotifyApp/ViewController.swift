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
        
        api.fetchArtist("Eminem")
        
        api.delegate = self

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let artist = artistsArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("artistNameCell") as? ArtistTableViewCell
        
        cell?.nameLabel.text = artist.name 
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistsArray.count 
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentArtist = artistsArray[indexPath.row]
        
        
        performSegueWithIdentifier("albumViewSegue", sender:  self)
        
    }
    
    func passArtist(artist: Artist) {
        
       self.artistsArray.insert(artist, atIndex: 0) 
        
        print(artistsArray.count)
        
        dispatch_async(dispatch_get_main_queue(), {
            
            self.artistsTableView.reloadData()
        }) 

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "albumViewSegue" {
            
            let albumViewController = segue.destinationViewController as? AlbumViewController
            
            albumViewController?.currentArtist = self.currentArtist 
            
        }
    }
    

}


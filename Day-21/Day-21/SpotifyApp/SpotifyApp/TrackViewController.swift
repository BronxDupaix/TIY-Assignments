//
//  TrackViewController.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 3/1/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

protocol RetrieveTracksProtocol {
    
    func passTracks(track: [Track])
}

class TrackViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, RetrieveTracksProtocol {
    
    var currentAlbum: Album?
    
    var api = SpotifyApi()
    
    var tracks = [Track]() 
    
    @IBOutlet weak var trackTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.fetchTracks(currentAlbum!.albumID)
        
        api.trackDelegate = self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let track = tracks[indexPath.row]
        
        let cell = UITableViewCell()
        
        cell.textLabel!.text = track.trackName
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func passTracks(track: [Track]) {

        self.tracks = track 
        
        dispatch_async(dispatch_get_main_queue(), {
            
            self.trackTableView.reloadData()
        })

    }
}

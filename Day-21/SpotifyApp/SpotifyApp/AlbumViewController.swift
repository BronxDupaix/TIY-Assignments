//
//  AlbumViewController.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 3/1/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentArtist: Artist?
    
    
    var currentAlbum: Album? 


    @IBOutlet weak var albumTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let c = currentArtist?.albums[indexPath.row]
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = c?.albumName
        
        return cell
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return (currentArtist?.albums.count)!
    }
    
    


}

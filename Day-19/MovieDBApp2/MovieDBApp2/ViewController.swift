//
//  ViewController.swift
//  MovieDBApp2
//
//  Created by Bronson Dupaix on 2/24/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit


protocol MovieProtocol{
    
    func passMovie(movieArray: [Movie]) 
    
}

class ViewController: UIViewController, MovieProtocol, UITableViewDataSource, UITableViewDelegate {
    
    var moviesArray = [Movie]()
    
    var api = MovieAPI()
    
    var movieCell = MovieInfoTableViewCell()

    @IBOutlet weak var movieNameTableVIew: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //movieCell.loadImageFromURL()
        
        api.delegate = self 
        
        api.fetchMovies()
      
    } // end of view did load 
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let movie = self.moviesArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("movieInfoCell", forIndexPath: indexPath) as? MovieInfoTableViewCell
        
        
        cell?.loadImageFromURL("https://image.tmdb.org/t/p/w185\(movie.poster)")
        
        
        // cell?.posterView.image
        
        cell?.titleLabel.text = movie.title
        
        cell?.overviewLabel.text = movie.overview
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 333
        }
    
    func passMovie(movieArray: [Movie]) {
        
        self.moviesArray = movieArray
        
        dispatch_async(dispatch_get_main_queue(), {
            
            self.movieNameTableVIew.reloadData()
            })
    }

   
} // end of view


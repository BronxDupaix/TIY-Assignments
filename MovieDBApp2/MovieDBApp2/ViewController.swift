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

    @IBOutlet weak var movieNameTableVIew: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        api.delegate = self 
        
        api.fetchMovies()
      
    } // end of view did load 
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let movie = self.moviesArray[indexPath.row]
        
        let cell = UITableViewCell() 
        
        cell.textLabel?.text = movie.title
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func passMovie(movieArray: [Movie]) {
        
        self.moviesArray = movieArray
        
        
        
        dispatch_async(dispatch_get_main_queue(), {
            
            self.movieNameTableVIew.reloadData()
            
        })

    }

   

} // end of view


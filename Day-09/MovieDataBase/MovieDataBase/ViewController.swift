//
//  ViewController.swift
//  MovieDataBase
//
//  Created by Bronson Dupaix on 2/11/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

typealias JSONDictionary = [String:AnyObject]
typealias JSONArray = [JSONDictionary]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
        var movieArray = [MovieDB]()
    
        var currentMovie: MovieDB?
    // MARK: Table Functions
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        self.currentMovie = self.movieArray[indexPath.row]
        
        let cell = UITableViewCell()
        
        let title = self.currentMovie!.title
        
        cell.textLabel?.text = "\(title)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentMovie = movieArray[indexPath.row]
        
        performSegueWithIdentifier("movieInfoSegue", sender: self)
        
        print(indexPath.row)
    }
    // MARK: Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "movieInfoSegue" {
            let viewcontroller = segue.destinationViewController as? MovieInfoViewController
            
            viewcontroller?.movie = self.currentMovie
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let (jsonString, data) = loadJSONFile("moviedb", fileType: "json")
        
        print(jsonString)
        
 
        
        if let data = data {
            do {
                let object = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
                
                if let dict = object as? JSONDictionary {
                    
                    parseJSON(dict)
                    
                    
                }
            } catch {
        
                print("Data Error - Unable to parse the original jsonString")
            }
        }
        
    }
    
    
    
   // MARK: Parse Function 
    
    
    func parseJSON(dict: JSONDictionary) {
        
        print("\n\nDictionary\n\n \(dict)")
        
        
        
        if let results = dict["results"] as? JSONArray {
            
           
            for result in results {
                
                 let movies = MovieDB(poster: "", adult: false, overview: "", releaseDate: "", id: 1, language: "", title: "", backdropPath: "", popularity: 0.000, voteCount: 1, video: false, voteAverage: 0.00)
        
        if let poster = result["poster_path"] as? String {
        
            movies.poster = poster
            print(poster)
            
        } else{
            print("couldnt retrieve poster") 
        }
        
        if let adult = result["adult"] as? Bool{
            
            movies.adult = adult
            print(adult)
            
        } else{
            print("couldnt retrieve poster")
                }
        
        if let overview = result["overview"] as? String {
            
            movies.overview = overview
            
            print(overview)
        } else {
            print("no overview") 
                }
        
        if let releaseDate = result["release_date"] as? String {
            
            movies.releaseDate = releaseDate
            print(releaseDate)
        }else {
            print("no Release Date")
                }
        
        if let id = result["id"] as? Int{
            
            movies.id = id
            
            print(id)
        } else {
            print("No ID")
                }
        
        if let language = result["original_language"] as? String{
            
            movies.language = language
            print(language)
        }else {
            print("No language")
                }
        
        if let title = result["title"] as? String {
            
            movies.title = title
            print(title)
        } else {
            print("No title")
                }
        
        if let backdropPath = result["backdrop_path"] as? String {
            
            movies.backdropPath = backdropPath
            print(backdropPath)
        } else {
            print("No backdrop")
                }
        
        
        if let popularity = result["popularity"] as? Double {
            
            movies.popularity = popularity
            print(popularity)
        } else {
            print("No popularity")
                }
        
        if let voteCount = result["vote_count"] as? Int{
            
            movies.voteCount = voteCount
            print(voteCount)
        } else {
            print("No VoteCount")
                }
        
        if let video = result["video"] as? Bool{
            
            movies.video = video
            print(video)
        } else {
            print("No video")
                }
        
        if let voteAverage = result["vote_average"] as? Float{
            
            movies.voteAverage = voteAverage
            print(voteAverage)
        } else{
            print("no vote average")
                }
                self.movieArray.append(movies)

            }
          
        }
        for movies in self.movieArray {
            print(movies.title)
        
        }
   
    
       }
    
    
    func loadJSONFile(filename: String, fileType: String) -> (String, NSData?) {
        
        var returnString = ""
        var data: NSData? = nil
        
        guard let filePath = NSBundle.mainBundle().URLForResource(filename, withExtension: fileType) else { return (returnString, data) }
        
        if let jsondata = NSData(contentsOfURL: filePath) {
            if let jsonString = NSString(data: jsondata, encoding: NSUTF8StringEncoding) {
                returnString = jsonString as String
                data = jsondata
            }
        }
        return (returnString, data)
    }

   


}

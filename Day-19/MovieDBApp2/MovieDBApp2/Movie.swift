//
//  Movie.swift
//  MovieDBApp2
//
//  Created by Bronson Dupaix on 2/24/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation




class Movie {
    
    
    var poster: String = ""
    
    var overview: String = ""
    
    var releaseDate: String = ""
    
    var movieID: Int = 0
    
    var title: String = ""
    
    var voteAverage: Int = 0
    
    
    init() {
        
    }
    
    
    init(dict: JSONDictionary){
        
        if let poster = dict["poster_path"] as? String {
            self.poster = poster
        } else {
            print(" no poster")
        }
        
        
        if let overview = dict["overview"] as? String {
            self.overview = overview
        } else {
            print("no overview")
        }
        
        if let releaseDate = dict["release_date"] as? String {
            self.releaseDate = releaseDate
        } else {
            
            print("no release date")
        }
        
        if let movieID = dict["id"] as? Int {
            
            self.movieID = movieID
        } else {
            print(" no movie id")
        }
        
        if let title = dict["title"] as? String {
            
            self.title = title
        } else {
            
            print("no title")
        }
        
        if let voteAverage = dict["vote_average"] as? Int {
            
            self.voteAverage = voteAverage
        } else {
            
            print("no voteaverage") 
        }
    }
    
}
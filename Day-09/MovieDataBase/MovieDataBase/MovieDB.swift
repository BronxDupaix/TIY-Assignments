//
//  ClassMovieDB.swift
//  MovieDataBase
//
//  Created by Bronson Dupaix on 2/11/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class MovieDB {
    
    
    var poster: String
    
    var adult: Bool
    
    var overview: String
    
    var releaseDate: String
    
    // genreIds []? 
    
    var id: Int
    
    var language: String
    
    var title: String
    
    var backdropPath: String
    
    var popularity: Double
    
    var voteCount: Int
    
    var video: Bool
    
    var voteAverage: Float
    
    init(poster: String, adult: Bool, overview: String, releaseDate: String, id: Int, language: String, title: String, backdropPath: String, popularity: Double, voteCount: Int, video: Bool, voteAverage: Float){
    
                        self.poster = poster
                        self.adult = adult
                        self.overview = overview
                        self.releaseDate = releaseDate
                        self.id = id
                        self.language = language 
                        self.title = title
                        self.backdropPath = backdropPath
                        self.popularity = popularity
                        self.voteCount = voteCount
                        self.video = video
                        self.voteAverage = voteAverage
    }
}
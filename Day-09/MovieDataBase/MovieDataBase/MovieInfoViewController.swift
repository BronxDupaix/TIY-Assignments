//
//  MovieInfoViewController.swift
//  MovieDataBase
//
//  Created by Bronson Dupaix on 2/11/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var movie: MovieDB?
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        movieTitleLabel.text = "\(movie!.title)"
        
        movieOverviewLabel.text = "\(movie!.overview)"
        
        releaseDateLabel.text =  "\(movie!.releaseDate)"
        
        
    }


}

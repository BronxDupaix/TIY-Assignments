//
//  MovieInfoTableViewCell.swift
//  MovieDBApp2
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class MovieInfoTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    func loadImageFromURL(urlString: String) {
        
        if urlString.isEmpty == false {
            
            dispatch_async(dispatch_get_main_queue(), {
                if let url = NSURL(string: urlString) {
                    if let data = NSData(contentsOfURL: url) {
                        self.posterView.image = UIImage(data: data)
                    }
                }
            })
        } else {
            debugPrint("Invalid \(urlString)")
        }
    }

}

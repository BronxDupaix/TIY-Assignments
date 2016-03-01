//
//  WeatherTableViewCell.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/27/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var tempLabel: UILabel!

    @IBOutlet weak var latitudeLabel: UILabel!

    
    @IBOutlet weak var weatherTypeImage: UIImageView!
    
    
    
}

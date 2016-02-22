//
//  RestaurantNameTableViewCell.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/20/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class RestaurantNameTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBOutlet weak var restaurantImage: UIImageView!
    
    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var styleLabel: UILabel!
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

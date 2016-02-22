//
//  MenuItemsTableViewCell.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/20/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class MenuItemsTableViewCell: UITableViewCell {

    @IBOutlet weak var dishImage: UIImageView!
    
    
    @IBOutlet weak var dishNameLabel: UILabel!
    
    
    @IBOutlet weak var dishRating: UILabel!
    
    
    @IBOutlet weak var dishDescription: UILabel!
    
    
    @IBOutlet weak var dishPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

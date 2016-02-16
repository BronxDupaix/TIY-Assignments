//
//  TypeOneTableViewCell.swift
//  StarWarsApp
//
//  Created by Bronson Dupaix on 2/15/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class TypeOneTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  HeroDetailViewController.swift
//  marvelproject
//
//  Created by Bronson Dupaix on 2/8/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class HeroDetailViewController: UIViewController {

    @IBOutlet weak var viewTwoLabel: UILabel!
    
    var hero: Hero?
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        viewTwoLabel.text = "\(hero!.homeworld)"
        
        
        print("hero name == \(hero!.name)")
        
    
    }
    

}

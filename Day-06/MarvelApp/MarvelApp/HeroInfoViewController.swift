//
//  HeroInfoViewController.swift
//  MarvelApp
//
//  Created by Bronson Dupaix on 2/8/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class HeroInfoViewController: UIViewController {

    @IBOutlet weak var heroName: UILabel!
    
    @IBOutlet weak var heroHome: UILabel!
    
    @IBOutlet weak var heroPowers: UILabel!
    var hero: Hero?
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        heroName.text = "\(hero!.name)"
        
        heroHome.text = "\(hero!.homeworld)"
        
        heroPowers.text =  "\(hero!.powers)"
        
        
    }

    
}

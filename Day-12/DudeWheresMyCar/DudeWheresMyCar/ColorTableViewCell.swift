//
//  ColorTableViewCell.swift
//  DudeWheresMyCar
//
//  Created by Bronson Dupaix on 2/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
    

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    var redColorValue: Float = 0
    
    var blueColorValue: Float = 0
    
    var greenColorValue: Float = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        loadDefaults()
        
        changeBackgroundColor()
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func valueChanged(sender: UISlider) {
        
        
        if sender == blueSlider {
            self.blueColorValue = sender.value
        } else if sender == greenSlider{
            self.greenColorValue = sender.value
        } else if sender == redSlider{
            self.redColorValue = sender.value
        }
        
        print("Red \(self.redColorValue)")
        print("Blue \(self.blueColorValue)")
        print("Green\(self.greenColorValue)")
        
        
    
        
   changeBackgroundColor()
        
        saveDefaults()
        
    }
    
    
    func changeBackgroundColor(){
    
    let color = UIColor(red: CGFloat(self.redColorValue), green: CGFloat(self.greenColorValue), blue: CGFloat(self.blueColorValue), alpha: 1.0)
        
    
    
    self.backgroundColor = color
        
    }
    
    func saveDefaults(){
        
        
    Config.sharedInstance.redColorValue = redColorValue
        
    Config.sharedInstance.blueColorValue = blueColorValue
        
    Config.sharedInstance.greenColorValue = greenColorValue
        
    Config.sharedInstance.saveConfiguration()
        
        }
    
    func loadDefaults(){
        
        Config.sharedInstance.loadConfiguation()
        
        self.redColorValue = Config.sharedInstance.redColorValue
        
        self.blueColorValue = Config.sharedInstance.blueColorValue
        
        self.greenColorValue = Config.sharedInstance.greenColorValue

        }
        
    }

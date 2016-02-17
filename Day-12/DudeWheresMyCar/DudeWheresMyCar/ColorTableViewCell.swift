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
        
        
    
    let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(NSDate(), forKey: "LastTimeUsed")
    
    defaults.setFloat(self.redColorValue, forKey: "RedKey")
    
    defaults.setFloat(self.blueColorValue, forKey: "BlueKey")
    
    defaults.setFloat(self.greenColorValue, forKey: "GreenKey")
    
    defaults.synchronize()
    }
    
    func loadDefaults(){
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let today = defaults.objectForKey("LastTimeUsed") as? NSDate
        
        if today != nil{
        
        self.blueColorValue = defaults.floatForKey("BlueKey")
        
        self.redColorValue = defaults.floatForKey("RedKey")
        
        self.greenColorValue = defaults.floatForKey("GreenKey")
            
            self.redSlider.value = self.redColorValue
            self.blueSlider.value = self.blueColorValue
            self.greenSlider.value = self.greenColorValue
            
            
            
        }else {
            print("No defaults have been saved")
        }
        
    }
}

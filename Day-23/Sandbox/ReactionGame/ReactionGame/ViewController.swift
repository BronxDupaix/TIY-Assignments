//
//  ViewController.swift
//  ReactionGame
//
//  Created by Bronson Dupaix on 2/9/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var timerScore = NSTimer()
    
    var countInt = 0
    
    var scoreInt = 0

    @IBOutlet weak var TimerLabel: UILabel!
    
    @IBOutlet weak var GetReady: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scoreInt = 0
        
        TimerLabel.text = String(scoreInt)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StartStop(sender: AnyObject) {
        
        if scoreInt == 0{
            
            countInt = 3
            GetReady.text = String(countInt)
            TimerLabel.text = String(scoreInt)
            
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
            
            sender.setTitle("Start", forState: UIControlState.Normal)
            
        }else{
            
            timerScore.invalidate()
        }
        
        if countInt == 0 {
            
            scoreInt = 0
            
            sender.setTitle("Restart", forState: UIControlState.Normal)
            
        }
    }
    
    func updateCounter(){
        
        countInt -= 1
        
        GetReady.text = String(countInt)
        
        if countInt == 0{
            
            timer.invalidate()
            
            TimerLabel.text = String(scoreInt)
            
            timerScore = NSTimer.scheduledTimerWithTimeInterval(0.0001, target: self, selector: Selector("updateScoreTimer"), userInfo: nil, repeats: true)
            
            startButton.setTitle("Stop", forState: UIControlState.Normal)
        }
        
    }
    
    func updateScoreTimer(){
        
        scoreInt += 1
        
        TimerLabel.text = String(scoreInt)
        
    }

}


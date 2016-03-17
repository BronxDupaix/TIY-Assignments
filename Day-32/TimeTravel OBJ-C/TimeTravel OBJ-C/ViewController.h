//
//  ViewController.h
//  TimeTravel OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *destinationLabel;

@property (weak, nonatomic) IBOutlet UILabel *presentLabel;

@property (weak, nonatomic) IBOutlet UILabel *departedLabel;

@property (weak, nonatomic) IBOutlet UILabel *speedLabel;

- (IBAction)setTimeButton:(UIButton *)sender;

- (IBAction)timeTravelButton:(UIButton *)sender;




@end


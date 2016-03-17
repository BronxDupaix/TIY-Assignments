//
//  ViewController.m
//  TimeTravel OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "ViewController.h"

#import "SetTimeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerCalled) userInfo:nil repeats:YES];
    
}

-(void)timerCalled {
    
    NSLog(@"timerCalled");
}

//-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//    if ([segue.identifier isEqualToString:@"setTimeSegue"]) {
//        
//    }
//    
//    
//}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
    
    if ([segue.identifier isEqualToString:@"prepareForUnwindSegue"]) {
        
        NSLog(@" Unwind Segue Performed");
        
        SetTimeViewController *setTimeVC = (SetTimeViewController *)segue.sourceViewController;
        
        newStr = setTimeVC -> destinationDate;
        self.destinationLabel.text = newStr;
        
    }
    
    
}


- (IBAction)setTimeButton:(UIButton *)sender {
    
    // NSLog(@" Set time Button");
    
    
    
}

- (IBAction)timeTravelButton:(UIButton *)sender {
    
   // NSLog(@" Time travel button");
}
@end

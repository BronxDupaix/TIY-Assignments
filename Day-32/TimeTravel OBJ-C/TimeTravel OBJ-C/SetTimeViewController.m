//
//  SetTimeViewController.m
//  TimeTravel OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "SetTimeViewController.h"

@interface SetTimeViewController ()



@end

@implementation SetTimeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}




- (IBAction)datePickerAction:(UIDatePicker *)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"MMM-dd-yyyy"];
    
    NSString *dateFromPicker = [dateFormatter stringFromDate:self.datePicker.date];
    
    destinationDate = [dateFromPicker uppercaseString];
    
    NSLog(@"%@", destinationDate); 
    
    
}

@end

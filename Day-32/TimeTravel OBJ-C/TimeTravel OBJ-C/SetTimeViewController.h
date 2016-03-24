//
//  SetTimeViewController.h
//  TimeTravel OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SetTimeViewController : UIViewController {
     @public NSString *destinationDate;
}


@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)datePickerAction:(UIDatePicker *)sender;


@end

//
//  CustomTableViewCell.h
//  TableView OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


- (IBAction)tableViewSwitch:(UISwitch *)sender;



@end

//
//  CustomTableViewCell.m
//  TableView OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "CustomTableViewCell.h"

#import "SFDraggableDialogView.h" 

@implementation CustomTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setupCell {
    
    
}

- (IBAction)tableViewSwitch:(UISwitch *)sender {
    
    NSLog(@"Switch value chaged");
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ShowDialog" object:nil]; 
    
    
    SFDraggableDialogView *dialogView = [[[NSBundle mainBundle] loadNibNamed:@"SFDraggableDialogView" owner:self options:nil] firstObject];
    
    
    
    
    
    [self.contentView addSubview:dialogView];

}
@end

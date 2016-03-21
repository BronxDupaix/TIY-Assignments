//
//  ViewController.h
//  ColorPicker OBJ-C
//
//  Created by Bronson Dupaix on 3/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController< UITableViewDataSource, UITableViewDelegate> 

@property (weak, nonatomic) IBOutlet UITableView *colorTableView;

@end


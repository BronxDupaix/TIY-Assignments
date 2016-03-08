//
//  ViewController.m
//  Objective-C JSONParser
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "ViewController.h"

#import "RedViewController.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ourLabel = [[UILabel alloc] initWithFrame:CGRectMake(150, 100, 200, 200)];
    
   // [self.ourLabel setTextColor:[UIColor greenColor]];
    
    self.ourLabel.textColor = [UIColor greenColor];
    
    self.ourLabel.textAlignment = NSTextAlignmentCenter; 
    
    self.ourLabel.font = [UIFont fontWithName:@"Helvetica" size:32.0f];
    
    [self.view addSubview: self.ourLabel];
    
    self.ourLabel.text = @"Hello World";
    
    
    RedViewController *redViewController = [[RedViewController alloc] initWithNibName:[UINib nibWithNibName:@"RedViewController" bundle:[NSBundle mainBundle]] bundle:nil];
    
    [self.view addSubview:redViewController.view];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

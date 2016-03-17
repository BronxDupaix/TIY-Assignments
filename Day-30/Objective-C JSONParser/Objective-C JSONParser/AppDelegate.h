//
//  AppDelegate.h
//  Objective-C JSONParser
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong, nonatomic) UINavigationController *navController;

@property(strong, nonatomic) ViewController *viewController; 

@end


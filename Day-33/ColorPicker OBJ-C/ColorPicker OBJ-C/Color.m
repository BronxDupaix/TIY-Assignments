//
//  Color.m
//  ColorPicker OBJ-C
//
//  Created by Bronson Dupaix on 3/17/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "Color.h"
@import UIKit;

@implementation Color

-(instancetype)init {
    
    if ( self = [super init] ) { 
        
        self.red = [[UIColor alloc] init];
        self.blue = [[UIColor alloc] init];
        self.green = [[UIColor alloc] init];
        
    }
    return self;
}



@end

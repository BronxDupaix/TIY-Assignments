//
//  ViewController.m
//  ColorPicker OBJ-C
//
//  Created by Bronson Dupaix on 3/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "ViewController.h"
#import "ISColorWheel.h"

@interface ViewController () <ISColorWheelDelegate>

@property (strong, nonatomic) ISColorWheel *colorWheel;

@property (strong, nonatomic) UIColor *passColor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize size = self.view.bounds.size;
    
    
    CGSize wheelSize = CGSizeMake(size.width * .65, size.width * .65);
    
    _colorWheel = [[ISColorWheel alloc] initWithFrame: CGRectMake(size.width / 2 - wheelSize.width / 2,
                                                                 size.height * .15,
                                                                 wheelSize.width,
                                                                 wheelSize.height)];
    
    
    _colorWheel.delegate = self;
    _colorWheel.continuous = true;
    [self.view addSubview:_colorWheel];
   
}

- (void)colorWheelDidChangeColor:(ISColorWheel *)colorWheel
{
    
    self.view.backgroundColor = [colorWheel currentColor];
    
    UIColor *uicolor = [colorWheel currentColor] ;
    CGColorRef color = [uicolor CGColor];
    
    int numComponents = CGColorGetNumberOfComponents(color);
    
    if (numComponents == 3)
    {
        const CGFloat *components = CGColorGetComponents(color);
        CGFloat red = components[0];
        CGFloat green = components[1];
        CGFloat blue = components[2];
        NSLog(@"red: %.2f" ,red);
        
        NSLog(@"blue: %.2f" ,blue);
        
        NSLog(@"green: %.2f" ,green);
    }
}

-(IBAction)prepareForSegue:(UIStoryboardSegue *)segue {
    
    if ([segue.identifier isEqualToString:@"PassColorSegue"]) {
        
        NSLog(@"PassColorSeguePerformed");
        
       
        
    }

    
}

- (IBAction)passColorButton:(UIButton *)sender {
    
    
}
@end

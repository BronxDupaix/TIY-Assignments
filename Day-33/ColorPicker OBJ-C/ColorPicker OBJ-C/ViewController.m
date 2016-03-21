//
//  ViewController.m
//  ColorPicker OBJ-C
//
//  Created by Bronson Dupaix on 3/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "ViewController.h"
#import "ISColorWheel.h"
#import "Color.h"

@interface ViewController () <ISColorWheelDelegate>

@property (strong, nonatomic) ISColorWheel *colorWheel;

@property (strong, nonatomic) NSMutableArray *colorArray;

// @property (strong, nonatomic) Color* color;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorArray = [[NSMutableArray alloc] init];
    
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
        
        [self.colorArray addObject:[UIColor colorWithRed:red green:green blue:blue alpha:1.0f]];
        
        // self.color.red = red
        
    }
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
     UIColor *color = [self.colorArray objectAtIndex:indexPath.row];
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ColorCell"];
    
    cell.textLabel.text = @"Hello"; 
    
    // cell.backgroundColor = [UIColor _color];
    
    return cell;
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

@end

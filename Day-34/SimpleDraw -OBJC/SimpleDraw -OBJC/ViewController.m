//
//  ViewController.m
//  SimpleDraw -OBJC
//
//  Created by Bronson Dupaix on 3/17/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "ViewController.h"

@import QuartzCore;

@interface ViewController () {
    
    CGPoint lastpoint;
}


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)blueButton:(UIButton *)sender;

- (IBAction)greenButton:(UIButton *)sender;

- (IBAction)redButton:(UIButton *)sender;

@end

@implementation ViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // UITouch *touch = [touches anyObject];
    
    lastpoint = [self locationFromTouch:[touches anyObject]];
    
   // NSLog(@"point: %@" , NSStringFromCGPoint(point));
    
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    CGPoint point = [self locationFromTouch:[touches anyObject]];

    // NSLog(@"point:%.2f %.2f" , point.x , point.y);
    
    CGSize size = self.imageView.frame.size;
    
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [self.imageView.image drawInRect:self.imageView.frame ];
    
    CGContextMoveToPoint(context,point.x,point.y);
    
    CGContextAddLineToPoint(context, lastpoint.x, lastpoint.y);
    
    CGContextSetLineCap(context, kCGLineCapRound);
    
    CGContextSetRGBStrokeColor(context, 0.2, 0.8, 0.8, 1);
    
    CGContextSetLineWidth(context,52.0);
    
    CGContextStrokePath(context);
    
    
    
    self.imageView.image = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    
    lastpoint = point;
    
}


#pragma mark - Helper Methods 

-(CGPoint)locationFromTouch:(UITouch*) touch {
    
    
    if (touch ==nil) return CGPointZero ;
    
    
    return [touch locationInView:self.view];
    
}

- (IBAction)blueButton:(UIButton *)sender {

    
    
}

- (IBAction)greenButton:(UIButton *)sender {
}

- (IBAction)redButton:(UIButton *)sender {
}
@end

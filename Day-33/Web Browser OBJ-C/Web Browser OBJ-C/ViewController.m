//
//  ViewController.m
//  Web Browser OBJ-C
//
//  Created by Bronson Dupaix on 3/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

@import WebKit;
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) WKWebView* webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    
    self.webView.backgroundColor = [UIColor blueColor];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.bounds));
    
    [self.view addSubview:self.webView];
    
    
    NSURL * url = [NSURL URLWithString:@"http://www.google.com"];
    
    [self.webView loadRequest: [[NSURLRequest alloc] initWithURL:url]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

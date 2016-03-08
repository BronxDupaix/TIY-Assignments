//
//  ViewController.m
//  TableView OBJ-C
//
//  Created by Bronson Dupaix on 3/7/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

#import "ViewController.h"

#import "CustomTableViewCell.h"

#import "SFDraggableDialogView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

// to use an array must add a strong property and name it using *
@property (strong, nonatomic) NSMutableArray *personsArray;

// same goes for dictionaries

@property (strong , nonatomic) NSMutableDictionary *dict;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showDialog) name:@"ShowDialog" object:nil]; 
    
    NSNumber *floatNumber = [[NSNumber alloc] initWithFloat:32.0f];
    
    NSLog(@"%.2f" ,[floatNumber floatValue]);
    
//    NSDictionary *myDict = @{ @"Phil": @"Key3", @"Phil2":@"Key4"};
    
    self.dict = [[NSMutableDictionary alloc] initWithObjects:@[@"Phil" , @"Wright"] forKeys:@[@"Key1", @"Key2"]];
    
    NSLog(@"%@" , [self.dict objectForKey:@"Key1"]);
    
    NSArray *array = @[ @"Luke Skywalker", @"Phil Wright", @"Princess Leia"];
    
    self.personsArray = [[NSMutableArray alloc] init];
    
    // use addObject instead of append for adding persons into the person array
    
    [self.personsArray addObject:@"Luke Skywalker"];
    
    [self.personsArray addObject:@"Princess Leia"];
    
    [self.personsArray addObjectsFromArray:array];
    
    NSString * tempStr =@"This is a test";
    
    for(NSString *value in self.personsArray) {
        
        if([value isEqualToString: tempStr]){
        NSLog(@"%@", value);
        }
        
        // %@ - is for passing a string object into the array
    }
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.personsArray.count;
}

-(void) showDialog {
    
    NSLog(@"ShowDialog Called");
    
    SFDraggableDialogView *dialogView = [[[NSBundle mainBundle] loadNibNamed:@"SFDraggableDialogView" owner:self options:nil] firstObject];
    
    dialogView.frame = self.view.bounds;
    
    [self.view addSubview:dialogView];

    
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SimpleCell" forIndexPath: indexPath];
    
    NSString *value = [self.personsArray objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = value; 
    
    return cell;
}

//- (void)tableView:(UITableView *)tableView
//didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//}


@end

//
//  ViewController.m
//  Random Image Generator
//
//  Created by Christian Stevanus on 18/01/20.
//  Copyright © 2020 Christian Stevanus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)generateButton:(id)sender {
    
    [self generateImage];
}

-(void) generateImage {
    
    //Get Image List path
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ImageList" ofType:@"plist"];
    
    //refrence file in those path.. in this case is dictionary type file
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    //refrence list in that file
    NSMutableArray *array = dict[@"Images"];
    
    //make random
    int randomImage = arc4random() % array.count;
    
    //binding to UI
    self.imageView.image = [UIImage imageNamed:array[randomImage]];
}
@end

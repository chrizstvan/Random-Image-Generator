//
//  ViewController.h
//  Random Image Generator
//
//  Created by Christian Stevanus on 18/01/20.
//  Copyright © 2020 Christian Stevanus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)generateButton:(id)sender;

@end


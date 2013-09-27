//
//  MADViewController.h
//  Hello World
//
//  Created by Luke Schultz on 8/29/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
- (IBAction)buttonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *messagetext;

@end

//
//  MADViewController.h
//  Hello World 2
//
//  Created by Luke Schultz on 9/11/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *messageText;
- (IBAction)buttonPressed:(UIButton *)sender; 

@end

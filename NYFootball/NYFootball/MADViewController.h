//
//  MADViewController.h
//  NYFootball
//
//  Created by Luke Schultz on 12/14/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *SportImage;
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
- (IBAction)textFieldDoneEditing:(UITextField *)sender;

@end

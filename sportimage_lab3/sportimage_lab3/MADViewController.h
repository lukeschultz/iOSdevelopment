//
//  MADViewController.h
//  NY'S TEAM
//
//  Created by Luke Schultz on 9/10/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//


//action
//buttonPressed
//id
//drag the second button into the text of the first button so it says connect action
//see results in recieved actions
//outlets - creating an instance variable
//actions are methods, do something

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController

- (IBAction)buttonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *sportimage;

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@property (weak, nonatomic) IBOutlet UITextField *namefield;

- (IBAction)textFieldDoneEditing:(UITextField *)sender;

@end

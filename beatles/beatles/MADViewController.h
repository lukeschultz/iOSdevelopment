//
//  MADViewController.h
//  beatles
//
//  Created by Luke Schultz on 9/17/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *beatlesImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *imageControl;
@property (weak, nonatomic) IBOutlet UISwitch *capitalizedSwitch;
@property (weak, nonatomic) IBOutlet UILabel *fontSizeNumberLabel;

- (IBAction)changeImage:(UISegmentedControl *)sender;
- (IBAction)updateFont:(UISwitch *)sender;
- (IBAction)changeFontSize:(UISlider *)sender;



@end

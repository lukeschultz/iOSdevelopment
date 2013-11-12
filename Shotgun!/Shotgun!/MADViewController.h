//
//  MADViewController.h
//  Shotgun!
//
//  Created by Luke Schultz on 11/9/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *shotgun;
@property (weak, nonatomic) IBOutlet UIImageView *round1;
- (IBAction)shoot:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *blastImage;
@property (weak, nonatomic) IBOutlet UILabel *winner;
@property (weak, nonatomic) IBOutlet UIButton *reset;
- (IBAction)reset:(id)sender;

@property (strong, nonatomic) NSNumber *bulletPosition;
@property (strong, nonatomic) NSNumber *position;

@end

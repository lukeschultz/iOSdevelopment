//
//  MADViewController.h
//  animation
//
//  Created by Luke Schultz on 11/14/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)sliderMoved:(UISlider *)sender;


@end

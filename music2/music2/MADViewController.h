//
//  MADViewController.h
//  music2
//
//  Created by Luke Schultz on 10/14/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *choiceLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *musicPicker;
@property(strong, nonatomic) NSArray *genre;
@property(strong, nonatomic) NSArray *decade;


@end

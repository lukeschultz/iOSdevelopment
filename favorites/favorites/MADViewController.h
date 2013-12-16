//
//  MADViewController.h
//  favorites
//
//  Created by Luke Schultz on 12/15/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "favorite.h"

@interface MADViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *bookLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic)Favorite *user;

@end


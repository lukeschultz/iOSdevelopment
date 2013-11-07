//
//  MADMasterViewController.h
//  HarryPotter
//
//  Created by Luke Schultz on 10/31/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MADDetailViewController;

@interface MADMasterViewController : UITableViewController

@property (strong, nonatomic) MADDetailViewController *detailViewController;
@property(copy, nonatomic) NSArray *characters;

@end

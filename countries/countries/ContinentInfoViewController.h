//
//  ContinentInfoViewController.h
//  countries
//
//  Created by Luke Schultz on 10/29/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContinentInfoViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *continentName;
@property (weak, nonatomic) IBOutlet UILabel *countryNumber;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *number;

@end

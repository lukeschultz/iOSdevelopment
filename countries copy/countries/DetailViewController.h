//
//  DetailViewController.h
//  countries
//
//  Created by Luke Schultz on 10/24/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)NSMutableArray *countryList;

@end

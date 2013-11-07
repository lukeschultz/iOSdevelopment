//
//  CountryViewController.h
//  countries
//
//  Created by Luke Schultz on 10/29/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface CountryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *countryTextfield;
@property (copy, nonatomic) NSString *addedCountry;

@end

//
//  WebViewController.h
//  boulder_c
//
//  Created by Luke Tyler Schultz on 10/17/13.
//  Copyright (c) 2013 Luke Tyler Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *boulderWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *boulderSpinner;

@end

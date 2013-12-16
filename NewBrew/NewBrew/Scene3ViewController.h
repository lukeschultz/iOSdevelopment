//
//  Scene3ViewController.h
//  NewBrew
//
//  Created by Luke Schultz on 12/16/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Scene3ViewController : UIViewController<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *beerWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *beerSpinner;


@end

//
//  WebViewController.m
//  boulder_c
//
//  Created by Luke Tyler Schultz on 10/17/13.
//  Copyright (c) 2013 Luke Tyler Schultz. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

-(void)loadWebPageWithString:(NSString *)urlString{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
                             [_boulderWebView loadRequest:request];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _boulderWebView.delegate=self;
    [self loadWebPageWithString:@"http://www.bouldercolorado.gov/"];
	// Do any additional setup after loading the view.
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_boulderSpinner stopAnimating];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

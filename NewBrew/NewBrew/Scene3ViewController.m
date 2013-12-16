//
//  Scene3ViewController.m
//  NewBrew
//
//  Created by Luke Schultz on 12/16/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "Scene3ViewController.h"

@interface Scene3ViewController ()

@end

@implementation Scene3ViewController


-(void)loadWebPageWithString:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_beerWebView loadRequest:request]; 
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _beerWebView.delegate=self;
    [self loadWebPageWithString:@"http://www.beeradvocate.com/lists/top"];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
	[_beerSpinner startAnimating]; 
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_beerSpinner stopAnimating]; 
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

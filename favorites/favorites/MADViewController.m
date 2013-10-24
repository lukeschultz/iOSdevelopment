//
//  MADViewController.m
//  favorites
//
//  Created by Luke Schultz on 10/15/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "MADViewController.h"
#import "Scene2ViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_user=[[Favorite alloc]init];
}

-(void)viewWillAppear:(BOOL)animated{
    _favBook.text=_user.favBook;
    _favAuthor.text=_user.favAuthor;
}

-(IBAction)returned:(UIStoryboardSegue *)segue {
    _favBook.text=_user.favBook;
    _favAuthor.text=_user.favAuthor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

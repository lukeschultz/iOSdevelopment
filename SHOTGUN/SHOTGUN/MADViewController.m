//
//  MADViewController.m
//  SHOTGUN
//
//  Created by Luke Schultz on 10/1/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//randomization of rounds fired

int fromNumber = 1;
int toNumber = 6;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shoot:(UIButton *)sender {
    
    int randomNumber = arc4random()%6;
    
    if (randomNumber == 0) { //shot fired
        // fire shotgun 1 time ... change alpha value of blast image to 1
        _blastImage.alpha = 1;
        _round1.alpha = 0;
        _winner.alpha = 1;
    }
    if (randomNumber == 1) { // shot fired
        _blastImage.alpha = 1;
        _round1.alpha = 0;
        _winner.alpha = 1;
        
    }
 
    
    
}
- (IBAction)reset:(id)sender {
    
    _blastImage.alpha = 0;
    _winner.alpha = 0;
    _round1.alpha=1;
    
    
    
    
}
@end

//
//  MADViewController.m
//  Shotgun!
//
//  Created by Luke Schultz on 11/9/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

@synthesize bulletPosition = _bulletPosition;
@synthesize position = _position;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self resetVals];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shoot:(UIButton *)sender {
    
    
    if (self.position == self.bulletPosition) { //shot fired
        // fire shotgun 1 time ... change alpha value of blast image to 1
        _blastImage.alpha = 1;
        _round1.alpha = 0;
        _winner.alpha = 1;
    }
	
	self.position = [NSNumber numberWithInt:[self.position intValue] + 1];
	
	if ([self.position intValue] == 7) {
		self.position = [NSNumber numberWithInt:0];
	}
    
    
}
- (IBAction)reset:(id)sender {
    [self resetVals];
    
}

- (void) resetVals
{
	_blastImage.alpha = 0;
    _winner.alpha = 0;
    _round1.alpha=1;
    
	self.bulletPosition = [NSNumber numberWithInt:arc4random()%6];
	self.position = [NSNumber numberWithInt:0];
}
@end

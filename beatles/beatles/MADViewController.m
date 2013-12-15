//
//  MADViewController.m
//  beatles
//
//  Created by Luke Schultz on 9/17/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)updateImage{
    if (_imageControl.selectedSegmentIndex==0) {
        _titleLabel.text=@"Young Beatles";
		_beatlesImage.image=[UIImage imageNamed:@"beatles1.png"];
    } else if (_imageControl.selectedSegmentIndex==1) {
        _titleLabel.text=@"Not as young Beatles";
		_beatlesImage.image=[UIImage imageNamed:@"beatles2.png"];
    }
}

-(void)updateCaps{
    if (_capitalizedSwitch.on) {
		_titleLabel.text=[_titleLabel.text uppercaseString];
	} else {
		_titleLabel.text=[_titleLabel.text lowercaseString];
	}
}

- (IBAction)changeImage:(UISegmentedControl *)sender {
    [self updateImage];
    [self updateCaps];
}

- (IBAction)updateFont:(UISwitch *)sender {
    [self updateCaps];
}

- (IBAction)changeFontSize:(UISlider *)sender {
	int fontSize = sender.value;
	_fontSizeNumberLabel.text=[NSString stringWithFormat:@"%d", fontSize];
	UIFont *newFont = [UIFont systemFontOfSize:sender.value];
	_titleLabel.font=newFont;
}
@end

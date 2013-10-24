//
//  MADSecondViewController.m
//  boulder_c
//
//  Created by Luke Tyler Schultz on 10/17/13.
//  Copyright (c) 2013 Luke Tyler Schultz. All rights reserved.
//

#import "MADSecondViewController.h"

@interface MADSecondViewController ()

@end

@implementation MADSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitQuestion:(UIButton *)sender {
    
    
 
    NSString * recipients = @"mailto:luke.schultz@colorado.edu?subject=Question from Boulder app";
    
    NSString *body = [NSString stringWithFormat:@"&body=%@ from %@ %@", _questionTextview.text, _nameTextfield.text, _emailTextfield.text];
    
    NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
    NSLog(email); 
    
    email = [email stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
    
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    
    
    
}
@end

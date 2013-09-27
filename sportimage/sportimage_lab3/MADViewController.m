//
//  MADViewController.m
//  sportimage_lab3
//
//  Created by Luke Schultz on 9/10/13.
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    if(sender.tag==1)
        
    {
        _sportimage.image=[UIImage imageNamed: @"nyg.png"];
        NSString *message = [[NSString alloc] initWithFormat: @"%@ BLEEDS BLUE", _namefield.text];
        _messageLabel.text=message;
    }
        if(sender.tag==2)
            
        {_sportimage.image=[UIImage imageNamed: @"nyj.png"];
            NSString *message = [[NSString alloc] initWithFormat: @"%@ BLEEDS GREEN", _namefield.text];
            _messageLabel.text=message;
            
        }

}
- (IBAction)textFieldDoneEditing:(UITextField *)sender {
    [sender resignFirstResponder];
    
}
@end

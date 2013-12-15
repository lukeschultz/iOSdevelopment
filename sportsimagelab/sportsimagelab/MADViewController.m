//
//  MADViewController.m
//  sportsimagelab
//
//  Created by Luke Schultz on 12/14/13.
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
        _SportImage.image=[UIImage imageNamed:@"giants.png"];
        NSString *message = [[NSString alloc] initWithFormat:@"%@ is a Giants fan!", _nameField.text];
        _messageLabel.text=message;
    }
    if(sender.tag==2)
    {
        _SportImage.image=[UIImage imageNamed:@"jets.png"];
        NSString *message = [[NSString alloc] initWithFormat:@"%@ is a Jets fan!", _nameField.text];
        _messageLabel.text=message;
    }
}
- (IBAction)textFieldDoneEditing:(UITextField *)sender {
    [sender resignFirstResponder];
}

@end

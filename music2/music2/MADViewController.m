//
//  MADViewController.m
//  music2
//
//  Created by Luke Schultz on 10/20/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *array=[[NSArray alloc] initWithObjects:@"Country", @"Pop", @"Rock", @"Alternative", @"Hip Hop", @"Jazz", @"Classical", nil];
	_genre=array;
    NSArray *array2=[[NSArray alloc] initWithObjects:@"1950s", @"1960s", @"1970s", @"1980s", @"1990s", @"2000s", @"2010s", nil];
    _decade=array2;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 2;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    if (component==0)
		return [_genre count];
	else return[_decade count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView
			titleForRow:(NSInteger) row
		   forComponent:(NSInteger) component{
	if (component==0) 
		return [_genre objectAtIndex:row];
	else return [_decade objectAtIndex:row];
}


-(void)pickerView:(UIPickerView *)pickerView
	 didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component{
	NSInteger genrerow=[_musicPicker selectedRowInComponent:0];
	NSInteger decaderow=[_musicPicker selectedRowInComponent:1]; 
	_choiceLabel.text=[NSString stringWithFormat:@"You like %@ from the %@", [_genre objectAtIndex:genrerow], [_decade objectAtIndex:decaderow]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

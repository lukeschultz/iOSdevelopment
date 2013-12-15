//
//  MADViewController.m
//  scrabbleQ
//
//  Created by Luke Tyler Schultz on 10/22/13.
//  Copyright (c) 2013 Luke Tyler Schultz. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController
{
    NSDictionary *words;
    NSArray *letters;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *bundle=[NSBundle mainBundle];
	NSString *plistPath=[bundle pathForResource:@"qwordswithoutu2" ofType:@"plist"]; 
    NSDictionary *dictionary=[[NSDictionary alloc] initWithContentsOfFile:plistPath]; 
	words=dictionary;
    NSArray *array=[[words allKeys] sortedArrayUsingSelector:@selector(compare:)];
	letters=array;
    self.title=@"Words";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *letter=[letters objectAtIndex:section]; 
    NSArray *letterSection=[words objectForKey:letter]; 
    return [letterSection count]; 
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSUInteger section=[indexPath section];
    NSUInteger row=[indexPath row]; 
    NSString *letter=[letters objectAtIndex:section]; 
    NSArray *wordsSection=[words objectForKey:letter]; 
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	cell.textLabel.text=[wordsSection objectAtIndex:row];
    return cell;
}



- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger section=[indexPath section]; 
    NSString *letter=[letters objectAtIndex:section]; 
    NSArray *wordsSection=[words objectForKey:letter];
    
	NSString *rowValue=[wordsSection objectAtIndex:indexPath.row];
    NSString *message=[[NSString alloc] initWithFormat:@"You selected %@", rowValue];
    UIAlertView *alert=[[UIAlertView alloc]
                        initWithTitle:@"Row Selected" message:message delegate:nil cancelButtonTitle:@"Yes, I did" otherButtonTitles:nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [letters count];
}

-(NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section{
    NSString *letter=[letters objectAtIndex:section];
    return letter;
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    return letters;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

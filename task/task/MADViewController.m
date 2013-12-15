//
//  MADViewController.m
//  task
//
//  Created by Luke Tyler Schultz on 12/3/13.
//  Copyright (c) 2013 Luke Tyler Schultz. All rights reserved.
//

#import "MADViewController.h"
#import "MADArchive.h"

@interface MADViewController ()

@end

@implementation MADViewController
#define kFilename @"data.plist"
#define kDataKey @"Data"

-(NSString *) dataFilePath{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDirectory=[paths objectAtIndex:0];
    return [docDirectory stringByAppendingPathComponent:kFilename];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *filePath=[self dataFilePath];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
        NSData *data=[[NSMutableData alloc] initWithContentsOfFile:[self dataFilePath]];
        NSKeyedUnarchiver *unarchiver=[[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        MADArchive *taskArchive=[unarchiver decodeObjectForKey:kDataKey];
        [unarchiver finishDecoding];
        _task1.text=taskArchive.taskone;
        _task2.text=taskArchive.tasktwo;
        _task3.text=taskArchive.taskthree;
        _task4.text=taskArchive.taskfour;
        
        
}
    
    UIApplication *app=[UIApplication sharedApplication]; 
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(applicationWillResignActive:)                                                  name:UIApplicationWillResignActiveNotification 
                                               object:app]; 
     
     }
     
-(void)applicationWillResignActive:(NSNotification *)notification{
    MADArchive *taskArchive=[[MADArchive alloc]init];
    taskArchive.taskone=_task1.text;
    taskArchive.tasktwo=_task2.text;
    taskArchive.taskthree=_task3.text;
    taskArchive.taskfour=_task4.text;
    NSMutableData *data=[[NSMutableData alloc]init];
 NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    [archiver encodeObject:taskArchive forKey:kDataKey];
    [archiver finishEncoding];
    [data writeToFile:[self dataFilePath] atomically:YES];
                                                
    
     }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

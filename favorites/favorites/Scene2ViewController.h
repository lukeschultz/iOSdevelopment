//
//  Scene2ViewController.h
//  favorites
//
//  Created by Luke Schultz on 12/15/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "favorite.h"

@interface Scene2ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *userBook;
@property (weak, nonatomic) IBOutlet UITextField *userAuthor;
@property (strong, nonatomic) Favorite *userInfo;

@end
//
//  Scene2ViewController.m
//  NewBrew
//
//  Created by Luke Schultz on 12/16/13.
//  Copyright (c) 2013 Luke Schultz. All rights reserved.
//

#import "Scene2ViewController.h"

@interface Scene2ViewController ()

@end

@implementation Scene2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
UIImage *image;
NSURL *videoURL;
AVAudioPlayer *audioPlayer;

- (IBAction)cameraButtonTapped:(UIBarButtonItem *)sender {
	if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
	{
		UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
		imagePickerController.delegate = self;
		imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
		imagePickerController.mediaTypes = [NSArray arrayWithObjects:(NSString *)kUTTypeImage, (NSString *)kUTTypeMovie, nil];
        [self presentViewController:imagePickerController animated:YES completion:NULL];
	}
	else
	{
		NSLog(@"Can't access the camera");
	}
}

- (IBAction)actionButonTapped:(UIBarButtonItem *)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil													 delegate:self
                                                    cancelButtonTitle:nil										destructiveButtonTitle:nil
                                                    otherButtonTitles:nil];
	if (image || videoURL)
	{
		[actionSheet addButtonWithTitle:@"Save"];
	}
	[actionSheet addButtonWithTitle:@"Camera Roll"];
	[actionSheet addButtonWithTitle:@"Cancel"];
	
	actionSheet.cancelButtonIndex=actionSheet.numberOfButtons - 1;
	
	[actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
	if ([buttonTitle isEqualToString:@"Save"])
	{
		if (image)
		{
			UIImageWriteToSavedPhotosAlbum(image, self,
                                           @selector(image:didFinishSavingWithError:contextInfo:), nil);
		}
        else if (videoURL)
		{
            NSString *urlString = [videoURL path];
			if (UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(urlString))
			{
				UISaveVideoAtPathToSavedPhotosAlbum(urlString,self,
                                                    @selector(video:didFinishSavingWithError:contextInfo:), nil);
			}
        }
	}
	else if ([buttonTitle isEqualToString:@"Camera Roll"])
	{
		UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
		imagePickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
		imagePickerController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType: UIImagePickerControllerSourceTypeSavedPhotosAlbum];
		imagePickerController.allowsEditing=NO;
		imagePickerController.delegate = self;
        [self presentViewController:imagePickerController animated:YES completion:NULL];
	}

}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error)
    {
		NSLog(@"Error! %@", [error localizedDescription]);
    }
    else
    {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Image saved"
                                                            message:@"Image saved successfully to camera roll."
                                                           delegate:nil
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"OK", nil];
		[alertView show];
	}
}

- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error)
    {
		NSLog(@"Error! %@", [error localizedDescription]);
    }
    else
    {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Video saved" message:@"Video saved successfully to camera roll." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
		[alertView show];
    }
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
	image = nil;
	_imageView.image = nil;
    videoURL = nil;
	if ([mediaType isEqualToString:(NSString *)kUTTypeImage])
	{
		UIImage *originalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
		UIImage *editedImage = [info objectForKey:UIImagePickerControllerEditedImage];
		image = editedImage ? editedImage : originalImage;
		_imageView.image = image;
	}
    else if ([mediaType isEqualToString:(NSString *)kUTTypeMovie])
	{
        videoURL= [info objectForKey:UIImagePickerControllerMediaURL];
	}
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(BOOL)textFieldShouldReturn:(UITextView *)textField{
	[textField resignFirstResponder];
	return YES;
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

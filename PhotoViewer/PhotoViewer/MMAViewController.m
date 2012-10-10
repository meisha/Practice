//
//  MMAViewController.m
//  PhotoViewer
//
//  Created by S. Meisha Ray on 10/5/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "MMAViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface MMAViewController ()

@end

@implementation MMAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//::::ALBUM BUTTON::::
-(IBAction)onClickAlbum:(id)sender
{
    UIImagePickerController *albPickerController = [[UIImagePickerController alloc] init];
    if (albPickerController != nil)
    {
        albPickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        
        //::::SET UP DELEGATE::::
       albPickerController.delegate = self;
        
        albPickerController.allowsEditing = TRUE;
        
        [self presentModalViewController:albPickerController animated:TRUE];
    }
}
//::::CAMERA BUTTON::::
-(IBAction)onClickCamera:(id)sender{
    UIImagePickerController *camPickerController = [[UIImagePickerController alloc] init];
    if (camPickerController != nil)
    {
        camPickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        //::::SET UP DELEGATE::::
        camPickerController.delegate = self;
        
        //camPickerController.allowsEditing = false;
        camPickerController.allowsEditing = TRUE;
        
        [self presentModalViewController:camPickerController animated:TRUE];
        
    }

}
//::::SAVING THE IMAGE:::://'
-(void)image:(UIImage*)image didFinishSavingWithError:(NSError*)error contextInfo:(void*)contextInfo
{
    //::::AN ERROR HAPPENEND WHILE SAVING THE IMAGE::::
    if (error != nil)
    {
        NSLog(@"%@", [error description]);
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save was Successful"
                                                        message:@""
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        [alert show];
        NSLog(@"Save was a success!");
    }
}

//::::VIDEO BUTTON::::
-(IBAction)onClickVideo:(id)sender
{
    UIImagePickerController *vidPickerController = [[UIImagePickerController alloc] init];
    if (vidPickerController != nil)
    {
        vidPickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        vidPickerController.delegate = self;
        vidPickerController.allowsEditing = FALSE;
        vidPickerController.videoQuality = UIImagePickerControllerQualityTypeMedium;
        vidPickerController.mediaTypes = [NSArray arrayWithObjects:(NSString*) kUTTypeMovie, nil];
        
        [self presentModalViewController:vidPickerController animated:TRUE];
    }
}

//::::USER SELECTED AN IMAGE::::
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"%@", [info description]);
    UIImage *selectedImage = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    if (selectedImage != nil)
    {
        photoImageView.image = selectedImage;
    }
    //::::SCALED IMAGE CODE::::
    UIImage *scaledImage = [info objectForKey:@"UIImagePickerControllerEditedImage"];
    if (scaledImage != nil)
    {
        scaledImageView.image = scaledImage;
        
//::::SAVES IMAGE TO THE PHOTO ALBUM::::
//        UIImageWriteToSavedPhotosAlbum(scaledImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    }
    
    //::::VIDEO CODE::::
    NSURL *urlString = [info valueForKey:UIImagePickerControllerMediaURL];
    if (urlString != nil)
    {
        NSString *vidPath = [urlString path];
        NSLog(@"%@", vidPath);
        
//::::SAVES VIDEO TO ALBUM::::(NOT WORKING)
        UISaveVideoAtPathToSavedPhotosAlbum(vidPath, self, @selector(video:didFinishSavingWithError:contextInfo:), nil);
    }
    
    //[picker dismissModalViewControllerAnimated:true];
    [self dismissModalViewControllerAnimated:TRUE];
    
}

//::::TRIGGERS THE SAVE FOR VIDEO::::
- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error != nil)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save was not Successful"
                                                        message:@""
                                                       delegate:nil
                                              cancelButtonTitle:@"Try Again"
                                              otherButtonTitles: nil];
        [alert show];

        NSLog(@"Error saving file");
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save was Successful"
                                                        message:@""
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        [alert show];
        NSLog(@"save was complete");
    }
}

//::::USER SELECTED CANCEL::::
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:TRUE];
    //[self dismissModalViewControllerAnimated:true];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//::::CANCEL BUTTON::::
-(IBAction)onClickCancel:(id)sender
{
    photoImageView.image = nil;
    scaledImageView.image = nil;
}
//::::SAVE BUTTON::::
-(IBAction)onClickSave:(id)sender
{
    UIImageWriteToSavedPhotosAlbum(photoImageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    UIImageWriteToSavedPhotosAlbum(scaledImageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save was Successful"
                                                    message:@""
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alert show];

}
@end

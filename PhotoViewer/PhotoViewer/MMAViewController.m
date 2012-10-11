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
    
    instructions.hidden = FALSE;
    album.hidden = FALSE;
    CaptureImage.hidden = FALSE;
    video.hidden = FALSE;
    saveBtn.hidden = TRUE;
    cancelBtn.hidden = TRUE;

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
    [self dismissModalViewControllerAnimated:TRUE];
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
        scaledImageView.image = nil;
        album.hidden = TRUE;
        CaptureImage.hidden = TRUE;
        video.hidden = TRUE;
        saveBtn.hidden = FALSE;
        cancelBtn.hidden = FALSE;
        instructions.hidden = TRUE;

    }
    //::::SCALED IMAGE CODE::::
    UIImage *scaledImage = [info objectForKey:@"UIImagePickerControllerEditedImage"];
    if (scaledImage != nil)
    {
        scaledImageView.image = scaledImage;
        album.hidden = TRUE;
        CaptureImage.hidden = TRUE;
        video.hidden = TRUE;
        saveBtn.hidden = FALSE;
        cancelBtn.hidden = FALSE;
        instructions.hidden = TRUE;

    }
    
    //::::VIDEO CODE::::
    NSURL *urlString = [info valueForKey:@"UIImagePickerControllerMediaURL"];
    if (urlString != nil)
    {
        NSString *vidPath = [urlString path];
        NSLog(@"%@", vidPath);
        
//::::SAVES VIDEO TO ALBUM::::(NOT WORKING)
        UISaveVideoAtPathToSavedPhotosAlbum(vidPath, self, @selector(video:didFinishSavingWithError:contextInfo:), nil);
    }
    //[picker dismissModalViewControllerAnimated:TRUE];
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

//::::CANCEL BUTTON::::
-(IBAction)onClickCancel:(id)sender
{
    photoImageView.image = nil;
    scaledImageView.image = nil;
    album.hidden = FALSE;
    CaptureImage.hidden = FALSE;
    video.hidden = FALSE;
    saveBtn.hidden = TRUE;
    cancelBtn.hidden = TRUE;
    instructions.hidden = FALSE;
    
}
//::::SAVE BUTTON::::
-(IBAction)onClickSave:(id)sender
{
    //::::ORIGINAL IMAGE::::
    UIImageWriteToSavedPhotosAlbum(photoImageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    //::::SCALED IMAGE::::
    UIImageWriteToSavedPhotosAlbum(scaledImageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    
    [self dismissModalViewControllerAnimated:TRUE];

}

//::::USER SELECTED CANCEL::::
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    //[picker dismissModalViewControllerAnimated:TRUE];
    [self dismissModalViewControllerAnimated:TRUE];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end

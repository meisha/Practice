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
        //pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        albPickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        
        //::::SET UP DELEGATE::::
       albPickerController.delegate = self;
        
        //albPickerController.allowsEditing = false;
        albPickerController.allowsEditing = true;
        
        [self presentModalViewController:albPickerController animated:true];
    }
}
//::::CAMERA BUTTON::::
-(IBAction)onClickCamera:(id)sender{
    UIImagePickerController *camPickerController = [[UIImagePickerController alloc] init];
    if (camPickerController != nil)
    {
        //camPickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        //camPickerController.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        camPickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        //::::SET UP DELEGATE::::
        camPickerController.delegate = self;
        
        camPickerController.allowsEditing = false;
        //camPickerController.allowsEditing = true;
        
        [self presentModalViewController:camPickerController animated:true];
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
        vidPickerController.allowsEditing = false;
        vidPickerController.videoQuality = UIImagePickerControllerQualityTypeMedium;
        vidPickerController.mediaTypes = [NSArray arrayWithObjects:(NSString*) kUTTypeMovie, nil];
        
        [self presentModalViewController:vidPickerController animated:true];
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
        
//::::SAVES IMAGE TO THE PHOTO ALBUM::::(NOT WORKING)
        UIImageWriteToSavedPhotosAlbum(scaledImage, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
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
    
    [picker dismissModalViewControllerAnimated:true];
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
        NSLog(@"Save was a success!");
    }
}

//::::TRIGGERS THE SAVE FOR VIDEO::::
- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error != nil)
    {
        NSLog(@"Error saving file");
    }
    else{
        NSLog(@"save was complete");
    }
}

//::::USER SELECTED CANCEL::::
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:true];
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
    
}
@end

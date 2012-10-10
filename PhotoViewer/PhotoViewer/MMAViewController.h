//
//  MMAViewController.h
//  PhotoViewer
//
//  Created by S. Meisha Ray on 10/5/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMAViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    IBOutlet UIImageView *photoImageView;
    IBOutlet UIImageView *scaledImageView;
    
    //::::HIDDEN BUTTONS::::
    
    IBOutlet UIButton *video;
    IBOutlet UIButton *CaptureImage;
    IBOutlet UIButton *album;
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *cancelBtn;
    IBOutlet UILabel *instructions;
    
}

-(IBAction)onClickAlbum:(id)sender;
-(IBAction)onClickCamera:(id)sender;
-(IBAction)onClickVideo:(id)sender;
-(IBAction)onClickCancel:(id)sender;
-(IBAction)onClickSave:(id)sender;

@end

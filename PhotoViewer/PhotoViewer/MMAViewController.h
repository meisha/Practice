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
}

-(IBAction)onClickAlbum:(id)sender;
-(IBAction)onClickCamera:(id)sender;
-(IBAction)onClickVideo:(id)sender;
@end

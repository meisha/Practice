//
//  MMAViewController.h
//  Camera
//
//  Created by S. Meisha Ray on 9/10/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MMAViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView; //actual image view
@property (weak, nonatomic) IBOutlet UIButton *takePictureButton; //picture button
@property (strong, nonatomic) MPMoviePlayerController *moviePlayerController; //vid player
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSURL *movieURL;
@property (strong, nonatomic) NSString *lastChosenMediaType;
@property (assign, nonatomic) CGRect imageFrame;

-(IBAction)shootPictureOrVideo:(id)sender; //take picture or vid
-(IBAction)libraryPictureOrVideo:(id)sender; //library of pics and vids

@end

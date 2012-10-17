//
//  MMATrailerViewController.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/17/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MMATrailerViewController : UIViewController
{
    MPMoviePlayerController *moviePlayer;
    IBOutlet UIView *movieView;
    IBOutlet UILabel *movieTitle;
}
-(IBAction)onPlay:(id)sender;
-(IBAction)onStop:(id)sender;

@end

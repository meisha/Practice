//
//  DetailViewController.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"
#import "MMAViewController.h"
#import "CustomMovieCell.h"
#import "MMATrailerViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *movieTitle;
    //IBOutlet UILabel *titleLabel;
    IBOutlet UIImageView *thumbnailImage;
    IBOutlet UIButton *viewTrailer;
    IBOutlet UILabel *movieTimes;
    //IBOutlet UILabel *timesLabel;
}

-(IBAction)viewTrailer:(id)sender;
-(IBAction)goBack:(id)sender;

@end

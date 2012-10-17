//
//  DetailViewController.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *movieTitle;
    IBOutlet UIImageView *moviePic;
    IBOutlet UIButton *viewTrailer;
    IBOutlet UILabel *showTimes;
    NSString *selectedMovie;
}
@property (nonatomic, retain) NSString *selectedMovie;

@end

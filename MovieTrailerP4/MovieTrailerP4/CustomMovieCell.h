//
//  CustomMovieCell.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomMovieCell : UITableViewCell
{
    IBOutlet UIImageView *movieImage;
    IBOutlet UILabel *movieTitle;
    IBOutlet UILabel *movieTimes;
}

@end

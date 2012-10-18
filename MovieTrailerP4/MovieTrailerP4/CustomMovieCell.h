//
//  CustomMovieCell.h
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMAViewController.h"

@interface CustomMovieCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *movieTitle;
@property (nonatomic, strong) IBOutlet UILabel *movieTimes;
@property (nonatomic, strong) IBOutlet UIImageView *thumbnailImage;

@end

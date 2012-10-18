//
//  MMADetailViewController.h
//  mdf2p4StoryBoardVer
//
//  Created by S. Meisha Ray on 10/18/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMADetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) IBOutlet UILabel *timesLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *imageLabel;
@property (strong, nonatomic) IBOutlet UILabel *movieTimes;
@property (strong, nonatomic) IBOutlet UILabel *movieTitle;
@property (strong, nonatomic) IBOutlet UILabel *TrailerTag;
@property (strong, nonatomic) IBOutlet UIButton *trailerSelected;
@property (strong, nonatomic) IBOutlet UILabel *movieImage;
@property (strong, nonatomic) IBOutlet UIImageView *movieView;

@end

//
//  MMADetailViewController.m
//  mdf2p4StoryBoardVer
//
//  Created by S. Meisha Ray on 10/18/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "MMADetailViewController.h"


@interface MMADetailViewController ()
- (void)configureView;
@end

@implementation MMADetailViewController
@synthesize movieTitle;
@synthesize movieImage;
@synthesize timesLabel;
@synthesize titleLabel;
@synthesize trailerSelected;
@synthesize TrailerTag;
@synthesize movieTimes;
@synthesize imageLabel;
@synthesize movieView;



#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    titleLabel.text = movieTitle;
    timesLabel.text = movieTimes;
    trailerSelected = TrailerTag;
    NSLog(@"trailer %@", trailerSelected);
    movieView.image = [UIImage imageNamed:movieImage];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

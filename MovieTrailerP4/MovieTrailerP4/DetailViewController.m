//
//  DetailViewController.m
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "DetailViewController.h"
#import "MMAViewController.h"
#import "CustomMovieCell.h"
#import "MMATrailerViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import "Movie.h"

@interface DetailViewController ()

@end

@implementation DetailViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

//::::HMMMMM I HAVE NO CLUE::::
    
//    titleLabel.text = movieTitle;
//    timesLabel.text = movieTimes;
//    trailerSelected = TrailerTag;
//    NSLog(@"trailer %@", trailerSelected);
//    movieView.image = [UIImage imageNamed:movieImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//::::BUTTONS::::
-(IBAction)goBack:(id)sender
{
    MMAViewController *mainView = [[MMAViewController alloc]
                                   initWithNibName:@"MMAViewController" bundle:nil];
    [self presentModalViewController:mainView animated:YES];
}
-(IBAction)viewTrailer:(id)sender
{
    //MMATrailerViewController *destinationController = [[MMATrailerViewController alloc] init];
//    [self.navigationController pushViewController:destinationController animated:YES];
    
//    MMAViewController *trailerView = [[MMAViewController alloc]
//                                   initWithNibName:@"MMATrailerViewController" bundle:nil];
    //[self.view addSubview:trailerView.view];
//    MMATrailerViewController *secondView = [[MMATrailerViewController alloc] initWithNibName:@"MMATrailerViewController" bundle:nil];
    //[self presentModalViewController:trailerView animated:YES];
    //[self.navigationController pushViewController:secondView animated:YES];
}

@end

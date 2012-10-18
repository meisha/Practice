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

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize selectedMovie;

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
    movieTitle.text = selectedMovie;
    
    self.navigationItem.title = @"Movie";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)viewTrailer:(id)sender
{
    MMATrailerViewController *trailerView = [[MMATrailerViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    //[self.navigationController pushViewController:detailView animated:YES];
    [self presentModalViewController:trailerView animated:YES];
}
@end

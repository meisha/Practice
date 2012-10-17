//
//  MMATrailerViewController.m
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/17/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "MMATrailerViewController.h"
#import "MMAViewController.h"
#import "DetailViewController.h"
#import "CustomMovieCell.h"
#import <MediaPlayer/MediaPlayer.h>


@interface MMATrailerViewController ()

@end

@implementation MMATrailerViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewDidAppear:(BOOL)animated
{
    
    
}
-(IBAction)onPlay:(id)sender
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Finding Nemo 3D" ofType:@"m4v"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
    if (moviePlayer != nil)
    {
        
        [movieView addSubview:moviePlayer.view];
        
        //sets movie player to same size as the movie view
        moviePlayer.view.frame = CGRectMake(0.0f, 0.0f, movieView.frame.size.width, movieView.frame.size.height);
        
        
        moviePlayer.fullscreen = TRUE; //full screen
        
        moviePlayer.controlStyle = MPMovieControlStyleNone; //no controls
        moviePlayer.repeatMode = MPMovieRepeatModeOne; //repeats video
        
        [moviePlayer play];
    }
}
-(IBAction)onStop:(id)sender
{
    if (moviePlayer != nil)
    {
        [moviePlayer stop];
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

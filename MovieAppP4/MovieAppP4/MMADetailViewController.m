//
//  MMADetailViewController.m
//  MovieAppP4
//
//  Created by S. Meisha Ray on 10/18/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "MMADetailViewController.h"

@interface MMADetailViewController ()
- (void)configureView;
@end

@implementation MMADetailViewController

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
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
